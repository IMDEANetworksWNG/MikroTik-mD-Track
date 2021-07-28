close all
clear all
%% ONLY MODIFY THESE PARAMETERS
% Set up the folders
currentFolder = pwd;

% These are the measurements from the router
csi_filename = [pwd '/Example_data/csi_measurements.txt'];
ftm_filename = [pwd '/Example_data/ftm_measurements.txt'];

% Output filename, the calibration file
out_filename = 'oscillator.mat';

% True distance of the routers in meters
routers_true_distance = 2;

%% Do the calibration
% Load the position of the MikroTik antennas
load('antennas_mikrotik.mat')

% Number of samples gathered for CSI
num_samples = 250;

%% CSI
[magnitudes, phases, ~] = Parse_csi(csi_filename);

% Clean the data
pre_channel = zeros(6, 6, num_samples);

% We go up to 30 instead of 32
% so that 31 and 32 are disabled
% since they return random data
for jj=1:30

    a = phases(:, jj);
    a = a*2*pi/1024;
    
    % Move to complex domain
    a = exp(1i*a);

    
    converging_limit = 50;
    converging_retries = 0;
    converged = 0;
    
    % Sometimes it does not converge at first since the seed is random
    while converged == 0

        try
            [a, phase_offset_0, converged] = Sanitize(a);
        catch
            disp(['Converging error on file ' filename])
        end

        if converging_retries == converging_limit

            break
        end

        converging_retries = converging_retries + 1;
    end

    if converging_retries == converging_limit
        disp(['Converging threshold reached, ignoring ' filename])
        continue
    end
    
    [row,col] = find(antenna_positions == jj);
    pre_channel(row, col, :) = a(1:num_samples, :);
end

antenna_oscillator_phases = pre_channel;

% Average over the number of samples
antenna_oscillator_phases = sum(antenna_oscillator_phases,3)/num_samples;

%% FTM
ftm_times = Parse_ftm(ftm_filename);

% Create a histogram
distances = zeros(size(ftm_times, 1), 1);

for i=1:size(ftm_times, 1)

    % Calculate the distance in meters
    T1 = ftm_times(i, 1);
    T2 = ftm_times(i, 2);
    T3 = ftm_times(i, 3);
    T4 = ftm_times(i, 4);

    dist = 3e8 * (((T4-T1)-(T3-T2))*1e-12)/2;

    distances(i, 1) = dist;
end

distance = median(distances);

antenna_ftm_offset = abs(distance - routers_true_distance);

%% Save the calibration
save(out_filename, 'antenna_ftm_offset', 'antenna_oscillator_phases');
