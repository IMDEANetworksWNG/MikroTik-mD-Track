This code includes:

- antennas_mikrotik.mat: A MATLAB binary file with the logical antenna indexing from the MikroTik antennas
- Parse_csi.m: A MATLAB script that reads a CSI capture from the router and transforms it to MATLAB structures
- Parse_ftm.m: A MATLAB script that reads an FTM capture from the router and transforms it to MATLAB structures
- Sanitize.m: A MATLAB script that corrects the CSI captures from the MikroTik devices
- mD-Track: A custom implementation of the mD-Track algorithm to estimate azimut and elevation using CSI data
- Example_data: Some real measurements for the Example.m script
- Example.m: A MATLAB script that shows step by step how to convert CSI and FTM measurements to azimut, elevation and distance
- How to calibrate.md: A tutorial that explains how to calibrate the routers
- Generate_calibration.m: A MATLAB script that aids the creation of the calibration file