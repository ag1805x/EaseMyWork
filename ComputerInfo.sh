# Commands to check basic computer information in Ubuntu

# General system information
uname -a
sudo lshw
sudo lshw -short

# Product information
sudo dmidecode --type system

# OS
cat /etc/os-release
lsb_release -a

# CPU hardware info
lscpu 
cat /proc/cpuinfo
sudo dmidecode --type processor

# CPU utilization
mpstat -P ALL 1
htop

# RAM installed 
sudo lshw -short | grep -i "system memory"

# RAM hardware info
sudo dmidecode --type memory

# RAM usage
free -h

# HDD memomy usage info
df -h

# GPU hardware info
lspci -nnk | grep VGA -A1
sudo lshw -C display

# Graphics memory
grep -i --color memory /var/log/Xorg.0.log

# GPU usage (Nvidia)
nvidia-smi 

# GPU usage (Intel)
sudo intel_gpu_top

# List all available disk drive
lsscsi

# Disk Drive capabilities info
cat /proc/sys/dev/cdrom/info




