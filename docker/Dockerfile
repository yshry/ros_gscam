FROM ros:melodic-ros-core
RUN apt-get -y update && apt-get install -y ros-melodic-gscam
#RUN apt-get -y install gstreamer0.10-plugins-good
RUN apt-get -y install git build-essential cmake

WORKDIR /opt
RUN git clone https://github.com/TheImagingSource/tiscamera.git
RUN cd tiscamera && ./scripts/install-dependencies.sh --yes --compilation --runtime
RUN cd tiscamera && mkdir build && cd build && \
	cmake -DBUILD_ARAVIS=OFF .. &&\
	make &&\
	sudo make install

RUN apt-get -y install ros-melodic-velodyne
