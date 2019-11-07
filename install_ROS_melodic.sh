
echo "setting up sources list..........................."
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo "setting keys.................."
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

echo "Updating............"
sudo apt update

echo "Installing full desktop of ROS ......................."
sudo apt install ros-melodic-desktop-full

echo "......................................................"
echo "Intializing rosdep...................................."
sudo rosdep init 
rosdep update

echo "Environment setup..........."

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/melodic/setup.bash

echo "Installing dependencies.............."
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

printenv | grep ROS
