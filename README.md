# Dockerized Firefox with Functional Audio

Run Firefox inside an isolated [Docker](http://www.docker.io) container. Exporting a GUI app running in a Docker container is not new. There has been a few solutions available. However, while similar approaches require VNC installed in the host, this solution does not require it (in Linux environment). After docker build, the Docker image has Firefox installed. This solution provides functional audio redirection -- thanks to PulseAudio. This project was derived from Terje Laren's [docker-spotify-pulseaudio](https://github.com/terlar/docker-spotify-pulseaudio) project and received a few improvements in version upgrade, bug fixes, and code simplication. However, this solution does not address getting/saving the configuration of Firefox in the user home, everything stay inside the docker container.


## Instructions

1. Download the source:
  ```sh
git clone https://github.com/ryany1819/firefox-docker.git && cd firefox-docker
  ```

2. Build the image:

  ```sh
  ./build.sh
  ```

3. Run image as a container and launch Firefox within :

  ```sh
  ./run.sh
  ```

4. The Firefox GUI will be redirect to the host and behaves just like a local app being launched (Linux host).

