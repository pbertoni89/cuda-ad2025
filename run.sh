
# docker run --gpus all -it --rm pbertoni/cuda:12.5.1-devel-ubuntu22.04 bash

docker run --gpus all -v .:/work -w /work --rm pbertoni/cuda:12.5.1-devel-ubuntu22.04 ./test.sh
