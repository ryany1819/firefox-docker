# Dockerized Firefox with Functional Audio

Run Firefox inside an isolated [Docker](http://www.docker.io) container. Exporting a GUI app running in a Docker container is not something new. There has been a few solutions available. However, while similar approaches require VNC installed in the host, this solution is based on X11 and does not need a 3rd-party tool to work (in Linux environment), which gives the most native-like user experience. After docker built, the created Docker image contains Firefox with working settings that is ready run. This solution also features functional audio redirection -- thanks to PulseAudio. This project was derived from Terje Laren's [docker-spotify-pulseaudio](https://github.com/terlar/docker-spotify-pulseaudio) project and received a few improvements in terms of version upgrade, bug fixes, and code simplication. However, this solution does not address getting/saving the configuration of Firefox in the user home, everything stay inside the docker container.


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

