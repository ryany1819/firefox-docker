# Dockerized Firefox with Functional Audio

Run Firefox inside an isolated [Docker](http://www.docker.io) container. Exporting screen out of a running GUI app in a Docker container is not something fairly new. There has already been several solutions available out there. However, while some approaches require VNC installed in the host, this solution is based on X11 therefore does not need extra client apps to work (in Linux environment), which gives out the most native-like user experience. After built, the created Docker image will be containing Firefox with working settings that is ready run flawlessly. This solution also includes functional audio redirection -- via leveraging PulseAudio. This project was derived from Terje Laren's [docker-spotify-pulseaudio](https://github.com/terlar/docker-spotify-pulseaudio) project as a continued effort in which it received a few enhancements in terms of version upgrade, bug fixes, and code simplication. However, this solution is not going to address getting/saving the configuration of Firefox in the user home, everything stay inside the docker container.


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

