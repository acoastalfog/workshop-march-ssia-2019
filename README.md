# MARCH SSIA Workshop 2019
MARCH SSIA Workshop 2019

# Requirements
  * Anaconda3, Python 3.7
    * https://www.anaconda.com/download/
    * ```` conda create -n ssia2019 python=3.6.8 ````
    * ```` conda activate ssia2019 ````
  * OpenCV 3.4.2, VTK 8.2.0, Scikit-Image 0.15.0
    * ```` conda install opencv vtk scikit-image ````
    * (other dependencies, such as matplotlib, come along here)
  * SimpleITK 1.2.0
    * ```` conda install -c simpleitk simpleitk ````
  * webcolors 1.9.1
    * ```` conda install -c conda-forge webcolors ````
  * Jupyter Lab 1.0.1
    * ```` conda install -c conda-forge jupyterlab ````
  * PyMeanShift
    * ```` pip install git+git://github.com/fjean/pymeanshift@master ````
    * Often, this is difficult on some computers. See the included Docker container.

# Alternative Docker Container 

  * Create a Docker Account and Install Docker Desktop
    * Mac: https://hub.docker.com/editions/community/docker-ce-desktop-mac
    * Windows: https://hub.docker.com/editions/community/docker-ce-desktop-windows
  * Ensure the Docker Desktop Daemon is Running!
  * Log in to Docker Hub with your Docker Hub Account
    * ```` docker login ````
  * Download the MARCH SSIA 2019 Image
    * ```` docker pull aisinai/march-ssia-2019:v0.0.1 ````
  * Clone this repository containing the source code and data for today's short course
    * ```` git clone https://github.com/acoastalfog/MARCH-SSIA-2019.git ````
    * ```` cd MARCH-SSIA-2019.git ````
  * Launch the container and mount the repository as our work folder
    * ```` docker run -it --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan/work aisinai/march-ssia-2019:v0.0.1 ````
  * Open a web browser and navigate to log into your jupyter notebook
    * http://localhost:10000
