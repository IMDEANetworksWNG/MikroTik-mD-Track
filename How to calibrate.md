# Steps to calibrate the routers

**NOTE:** Must be done once per device

1. Setup 2 routers at a known distance, preferably on a tripod.
2. Make sure the antennas are aligned, both in azimut and elevation
3. Cover the routers with 60GHz absorving material (You could also do this outdoors without the material, in a place where there are no walls and therefore no reflections)
4. Use the scripts listed [here](https://github.com/IMDEANetworksWNG/Mikrotik-researcher-tools) to get 300 CSI measurements and 10 FTM measurements
5. Copy the files ftm_measurements.txt and csi_measurements.txt to a know location in your PC
5. Follow the instructions on the Generate_calibration.m script

