# Installing NVIDIA Drivers on Fedora 38:

1. Make sure that RPM Fusion repository is installed and setup (handled by this repo in `./dnf/dnf.sh`)

**Update the system:**
2. `sudo dnf update -y`

3. Reboot the system if you are not on the latest kernel

**Install Nvidia Drivers:**
4. `sudo dnf install akmod-nvidia`

**Install CUDA, NVDEC, NVENC support (optional):**
5. `sudo dnf install xorg-x11-drv-nvidia-cuda`

**Install NVTOP (optional):**
6. `sudo dnf install nvtop`
