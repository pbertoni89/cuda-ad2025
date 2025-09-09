
curl -s -L https://nvidia.github.io/libnvidia-container/stable/rpm/nvidia-container-toolkit.repo | \
	sudo tee /etc/yum.repos.d/nvidia-container-toolkit.repo

# sudo dnf-config-manager --enable nvidia-container-toolkit-experimental

export NVIDIA_CONTAINER_TOOLKIT_VERSION=1.17.8-1
sudo dnf install -y \
	nvidia-container-toolkit-${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
	nvidia-container-toolkit-base-${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
	libnvidia-container-tools-${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
	libnvidia-container1-${NVIDIA_CONTAINER_TOOLKIT_VERSION}

docker pull nvidia/cuda:12.5.1-devel-ubuntu22.04
