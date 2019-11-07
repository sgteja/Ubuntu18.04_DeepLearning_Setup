sudo systemctl stop gdm3.service

sudo init 3

sudo sh NVIDIA-Linux-x86_64-440.31.run

sudo systemctl start gdm3.service
sudo systemctl restart gdm3.service