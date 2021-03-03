docker run --rm -it --net=host -v /dev:/dev -v /home/yao/catkin_ws:/root/catkin_ws --privileged -w /root/catkin_ws/src/stereo_lidar_experiment/launch yao/gscam roslaunch ./stereo.launch

