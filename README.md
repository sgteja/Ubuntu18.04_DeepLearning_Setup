## Miscellaneous installations required

	Available as script in ```install_basic.sh```.

	```
	sudo apt-get update
	sudo apt-get upgrade

	sudo apt-get install -y build-essential cmake gfortran git pkg-config 
	sudo apt-get install -y python-dev software-properties-common wget vim
	sudo apt-get autoremove
	```

## Check Graphic card drivers
	
	This can be done in software updater.
	--> https://www.nvidia.com/Download/index.aspx?lang=en-us
	
	'sudo sh NVIDIA-Linux-x86_64-440.31.run'

	If cuda run installation is used, it installs nvidia drivers also. But that may not be compatible with ubuntu.

## Order of installation
-Cuda 
-OpenCV
-ROS
-CuDNN
-Tensorflow

## Cuda 

	Cuda ---> 10.1 and nvidia -430

	1. Check the requirements by running the ```cuda_req.sh``` file.
		|--> https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
	2. If all the requirements are met, then the cuda can be downloaded from here:
		|---> https://developer.nvidia.com/cuda-downloads?target_os=Linux

	3. Including the libraries 
		```
		export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
		export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64\
                         ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
        ```

## Python packages

	```
	sudo apt-get install -y --no-install-recommends libboost-all-dev doxygen
	sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev libblas-dev 
	sudo apt-get install -y libatlas-base-dev libopenblas-dev libgphoto2-dev libeigen3-dev libhdf5-dev 

	sudo apt-get install -y python-dev python-pip python-nose python-numpy python-scipy
	sudo apt-get install -y python3-dev python3-pip python3-nose python3-numpy python3-scipy
	```
	
## OpenCV

	Use the 'install_opencv_4.1.2.sh'

## ROS Melodic

	http://wiki.ros.org/Installation/Ubuntu
	```install_ROS_melodic.sh```

## cuDNN

	https://developer.nvidia.com/rdp/cudnn-download
	```
	sudo dpkg -i libcudnn7_7.0.3.11-1+cuda9.0_amd64.deb
	sudo dpkg -i libcudnn7-devel_7.0.3.11-1+cuda9.0_amd64.deb
	sudo dpkg -i libcudnn7-doc_7.0.3.11-1+cuda9.0_amd64.deb
	#Testing the cuDNN
	cp -r /usr/src/cudnn_samples_v7/ $HOME
	cd  $HOME/cudnn_samples_v7/mnistCUDNN
	make clean && make
	./mnistCUDNN


## TensorFlow

	```
	sudo -H pip3 install tensorflow-gpu
	sudo pip3 show tensorflow-gpu
	```	

## Pytorch

	'pip3 install torch torchvision'	

## Installation of codelite

	1. Code-lite is installed from the ```install.sh``` script.
		(This file is to be made executable by running ```sudo chmod -x ./install.sh```)

## Installation of Doxygen

	1. Refer to the file ```install.sh``` script.
	2. If there is a error of flex executable not find, run these commands,
		```
		sudo apt-get install flex
		sudo apt-get install bison
		   ```


