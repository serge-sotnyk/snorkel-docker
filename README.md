# snorkel-docker
Docker-image for working with Snorkel https://snorkel.org/

# Quick Links
* [Snorkel website](https://snorkel.org)
* [Snorkel tutorials](https://github.com/snorkel-team/snorkel-tutorials)
* [Snorkel documentation](https://snorkel.readthedocs.io/)
* [Snorkel community forum](https://spectrum.chat/snorkel)
* [Snorkel mailing list](https://groups.google.com/forum/#!forum/snorkel-ml)
* [Snorkel Twitter](https://twitter.com/SnorkelML)

# Getting Started
Snorkel is a stunning approach to learning with unlabeled data. But the original library is very fragile. It has dependencies on old versions of PyTorch and Tensorflow.

Moreover, it has problems if you try to install it in windows (sometimes it is important). It will be better to make labeling with docker to prevent these troubles and other work outside. The [Snorkel tutorials](https://github.com/snorkel-team/snorkel-tutorials) repository has inspired this docker.

# Getting Started

- First, make sure you have [Docker installed](https://docs.docker.com/install/) on your machine.
- Download docker image from hub: 
```bash
docker pull atepeq/snorkel-docker:latest
```
- Set your work directory as current
- Make your work directory drive shareable in docker settings (Settings / Resources / File sharing)
- Run docker with the following command (command ${PWD} should works in Powershell / Linux / macOS):
```bash
docker run --rm --mount type=bind,src=${PWD},dst=/app/workdir -p 8888:8888 atepeq/snorkel-docker:latest
```
You may need to correct some parameters...

Alternatively you may use absolute path definition:
```bash
docker run --rm --mount type=bind,src=d:\workdir,dst=/app/workdir -p 8888:8888 atepeq/snorkel-docker:latest
```
Replace d:\workdir onto your working directory

- Find in docker output string like 

...http://127.0.0.1:8888/?token=8dfa5e1ceee46ec4a3cac01931a95302223084658f849f71...
- To access the notebook, copy this link and past it in your browser