# LeGO_123
Using Legion Go Guides 123

#Intro
This document serves to provide information, workarounds, Tips and tricks to Gaming Specific on Legion Go.
OS: Bazzite OS
Device: Legion Go 16GB 2TB storage. (igpu=AMD 780m Graphics)
eGPU: ONEXGPU (dgpu=AMD 7600m XT)
Launcher: Steam (Runtime)

[Steam Gaming 101](https://github.com/davidteosk/LeGO_123/blob/main/gaming_fix_101.txt)
- How to Create an External Steam Storage Partition.
- Running Games in Gamescope to prevent Alt-Tab Crashing or loosing Cursor or Wayland Crashing or Lossing Audio.
- Fix HDMI Audio Shuttering, lag, breaking noise, etc.
- besides this fix, you may also need the below HDMI audia fix via module parameters:-

# Forcing eGPU thunderbold speed to 8GBPS (PCIe 3.0 spec) to increase game GPS and Fixing HDMI Audio shuttering/lagging/breaking noise.
read this note for [more info](https://github.com/davidteosk/LeGO_123/blob/main/egpu-pcie3speed.conf)
run this script with sudo [Fixing EGPUSPEED and HDMI AUDIO](https://github.com/davidteosk/LeGO_123/blob/main/FIXED_EGPUSPEED_HDMIAUDIO.sh)
- download the raw file and enable excutable via dolphin. run the script with:
- ```sudo ./FIXED_EGUPSPEED_HDMIAUDIO.sh```
