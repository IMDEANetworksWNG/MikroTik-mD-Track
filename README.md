# MikroTik antenna calibration + CSI cleaning + mD-Track


This repository includes:

- antennas_mikrotik.mat: A MATLAB binary file with the logical antenna indexing from the MikroTik antennas
- Parse_csi.m: A MATLAB script that reads a CSI capture from the router and transforms it to MATLAB structures
- Parse_ftm.m: A MATLAB script that reads an FTM capture from the router and transforms it to MATLAB structures
- Sanitize.m: A MATLAB script that corrects the CSI captures from the MikroTik devices
- mD-Track: A custom implementation of the mD-Track algorithm to estimate azimut and elevation using CSI data
- Example_data: Some real measurements for the Example.m script
- Example.m: A MATLAB script that shows step by step how to convert CSI and FTM measurements to azimut, elevation and distance
- How to calibrate.md: A tutorial that explains how to calibrate the routers
- Generate_calibration.m: A MATLAB script that aids the creation of the calibration file

### MIT License

Copyright (c) 2021 Alejandro Blanco Pizarro and Pablo Jiménez Mateo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
