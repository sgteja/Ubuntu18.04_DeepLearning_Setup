#Requirements
sudo apt-get install -y gcc g++

sudo apt-get install -y python-dev python-numpy
sudo apt-get install -y python3-dev python3-numpy

sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev

sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libgtk-3-dev

sudo apt-get install -y libpng-dev
sudo apt-get install -y libjpeg-dev
sudo apt-get install -y libopenexr-dev
sudo apt-get install -y libtiff-dev
sudo apt-get install -y libwebp-dev

#OpenCV 4.1.2
git clone https://github.com/opencv/opencv.git
cd opencv
mkdir build
cd build
#cmake ../

maxThreads=$(grep -c ^processor /proc/cpuinfo)
echo Enter the number of CPU threads you want to use. FYI: You have $maxThreads CPU Threads.
read nThreads

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_EXAMPLES=ON -D CUDA_GENERATION=Auto -D BUILD_NEW_PYTHON_SUPPORT=ON  .. 
make -j$nThreads

sudo checkinstall
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
echo "OpenCV is installed"
sudo make install

echo "Installing Opencv support for Python 3"
sudo apt install python3-pip
pip3 install opencv-python
echo "OpenCV 4.1.2 is ready to use."