FROM ros:melodic

RUN apt-get update && apt-get install -y --no-install-recommends \
	wget \
	git \
	bash-completion \
	build-essential \
	sudo \
	ros-melodic-image-geometry \
	ros-melodic-pcl-ros \
	ros-melodic-cv-bridge \
	ros-melodic-image-proc \
	ros-melodic-image-transport \
	ros-melodic-tf-conversions \
	ros-melodic-camera-info-manager \
	ros-melodic-rviz \
	ros-melodic-interactive-markers \
	autotools-dev \
	automake \
	libtool \
	apt-utils \
	cmake build-essential unzip pkg-config autoconf \
	libboost-all-dev \
	libjpeg-dev libpng-dev libtiff-dev \
	libvtk6-dev libgtk-3-dev \
	libatlas-base-dev gfortran \
	libparmetis-dev \
	python-wstool python-catkin-tools \
	libtbb-dev \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${HOME}/catkin_ws/src

WORKDIR /root/catkin_ws/src
COPY catkin_ws/src .

WORKDIR /root/catkin_ws
RUN catkin init
RUN catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release -DGTSAM_TANGENT_PREINTEGRATION=OFF
RUN catkin config --merge-devel

SHELL [ "/bin/bash" , "-c" ]
RUN source /opt/ros/melodic/setup.bash && catkin build -j6