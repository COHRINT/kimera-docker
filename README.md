# Kimera Docker

This repo contains the all the source files for [Kimera](https://github.com/MIT-SPARK/Kimera) to be ran within a docker container.


## Create a docker image

Docker allows you to run Kimera in a conainerized environment, which means it will run the same any where you can run docker. This is important because Kimera dependencies are very tricky to get correct. Before you can run Kimera, you will need to build a docker image. This is essentially like building a computer and installing all the necissary software needed to run the goal service (in our case Kimera). This creates a docker image. You can then run a docker container with this image to actually run Kimera.

You can create the image in 2 ways: Build from dockerfile or create image from a running container:

### Build from dockerfile

You should probably only create a docker image from the dockerfile the first time. This is because this process requires you to rebuild the catkin workspace each time which takes a really long time. Before you do this you should create a account on docker hub. This is where you will store your images so you can download them on the Husky. Run the following command in the directory with the Dockerfile adding your docker hub username and a tag: The tag is basically the version number of the image(ex: 1.0)

```bash
docker build -t <docker-hub username>/kimera-docker:<tag> .
```

### Create image from container

I imagine this is how you will create an image more often. As you are working on Kimera in the docker container and you get to a place you want to save (think when you would want to commit to github) you can save your progress by creating an image from the container you are currently working on.

```bash
docker commit <contianer-id> <docker-hub username>/kimera-docker:<tag>
```

This takes the current container you are working on and saves it to a new docker image.

## Running the Kimera Container

Navigate to the `catkin_ws` folder in a terminal and run:

```bash
sudo docker compose up -d
```

This starts up the kimera docker container. It also attatches the `catkin_ws/src` files from this directory to your container. This means you can change things in this directory in vscode and those changes will also be in the container.

### Connecting terminal to container

```bash
sudo docker compose exec kimera bash
```

This connects your terminal to the docker container so you can run commands in the docker contianer.

## Terminating a container

```bash
exit

sudo docker compose exec kimera bash
```

This ...

### Starting Kimera

To run kimera you will run a roslaunch file from a terminal connected to the container (shown just above). First choose and modify the launch file you wish to run in Kimera-VIO-ROS(ex: `kimera_vio_ros_euroc.launch`). Then you can run it with the following (make sure you are within the container and the `~/catkin_ws` directory):

```bash
source devel/setup.bash
roslaunch kimera_vio_ros kimera_vio_ros_euroc.launch
```

This will start up kimera and it will wait for images and imu data to perform slam. From here you can follow the steps in the Kimera-VIO-ROS github to use a dataset to get data to Kimera.


