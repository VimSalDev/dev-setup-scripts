#!/bin/bash

# OpenCV version
OPENCV_VERSION='4.9.0'
# To select OPENCV_VERSION, check the page -> https://opencv.org/releases/

echo "Installing OpenCV version $OPENCV_VERSION in /opt/opencv"

# Function to check if a package is installed
is_installed() {
  dpkg -s "$1" &> /dev/null
}

# Function to install a package if it's not installed
install_package() {
  if is_installed "$1"; then
    echo "$1 is already installed."
  else
    echo "Installing $1..."
    sudo apt-get install -y "$1"
  fi
}

# Update and upgrade the system
echo "Updating the system..."
sudo apt-get update -y || { echo "Failed to update packages"; exit 1; }
sudo apt-get upgrade -y || { echo "Failed to upgrade packages"; exit 1; }

# Required dependencies
dependencies=(
    build-essential cmake git pkg-config qt5-default libvtk6-dev
    zlib1g-dev libjpeg-dev libwebp-dev libjpeg-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev
    libdc1394-22-dev libgtk-3-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libv4l-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev libopencv-dev
    libtbb-dev libeigen3-dev python-dev python-tk pylint python-numpy libtiff-dev gfortran openexr libatlas-base-dev python3-dev python3-tk pylint3 python3-numpy libtbb2 libtbb-dev libdc1394-22-dev flake8
    ant default-jdk doxygen unzip wget pybind11-dev
)

for package in "${dependencies[@]}"; do
  install_package "$package"
done

# Create the working directory in /opt
sudo mkdir -p /opt/opencv
sudo chown $USER:$USER /opt/opencv

# Clone the OpenCV and OpenCV contrib repositories in /opt/opencv
cd /opt/opencv
git clone --branch $OPENCV_VERSION https://github.com/opencv/opencv.git
git clone --branch $OPENCV_VERSION https://github.com/opencv/opencv_contrib.git

# Create a build folder and configure the build
cd opencv
mkdir build && cd build

# CMake configuration
cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv/opencv_contrib/modules \
      -D OPENCV_GENERATE_PKGCONFIG=ON \
      -D BUILD_EXAMPLES=ON \
      -D BUILD_opencv_python3=ON \
      -D PYTHON3_EXECUTABLE=$(which python3) \
      -D PYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
      -D PYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") \
      ..

# Build and install
make -j$(nproc)
sudo make install
sudo ldconfig

# Update and upgrade the system
echo "Updating the system..."
sudo apt-get update -y || { echo "Failed to update packages"; exit 1; }
sudo apt-get upgrade -y || { echo "Failed to upgrade packages"; exit 1; }

# Verify the installation
pkg-config --modversion opencv4
python3 -c "import cv2; print('OpenCV version:', cv2.__version__)"

# Create a C++ file to verify the installation
CPP_FILE=main.cpp
EXECUTABLE=verify_opencv_version

cat <<EOF > $CPP_FILE
#include <opencv2/core.hpp>
#include <iostream>
int main() {
    std::cout << "OpenCV version: " << CV_VERSION << std::endl;
    return 0;
}
EOF

CFLAGS=$(pkg-config --cflags opencv4)
LDFLAGS=$(pkg-config --libs opencv4)

g++ $CPP_FILE -o $EXECUTABLE $CFLAGS $LDFLAGS

if [ $? -ne 0 ]; then
    echo "Compilation error."
    exit 1;
fi

./$EXECUTABLE

rm -f $CPP_FILE $EXECUTABLE

echo "OpenCV $OPENCV_VERSION installation completed in /opt/opencv"