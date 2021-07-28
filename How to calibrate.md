# MikroTik antenna calibration + CSI cleaning + mD-Track

1. Setup 2 routers at a known distance, preferably on a tripod.
2. Make sure the antennas are aligned, both in azimut and elevation
3. Cover the routers with 60GHz absorving material (You could also do this outdoors without the material, in a place where there are no walls and therefore no reflections)
4. Use the scripts listed [here](https://github.com/IMDEANetworksWNG/Mikrotik-researcher-tools) to get 300 CSI measurements and 10 FTM measurements
5. Copy the files ftm_measurements.txt and csi_measurements.txt to a know location in your PC
5. Follow the instructions on the Generate_calibration.m script

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
