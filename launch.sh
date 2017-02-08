#!/bin/bash

echo "docker volume create --name=intellij"
echo "docker volume create --name=gradle"

docker stop idea
docker rm idea

# docker run -dti \
docker run --rm  -it \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $(pwd):/home/developer/dev/app \
  -v intellij:/home/developer/.IdeaIC15 \
  --name idea \
  yurifl/intellij
