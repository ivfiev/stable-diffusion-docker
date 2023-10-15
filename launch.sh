
if [[ $(docker container ls -a | grep 'stable_diffusion') == *stable_diffusion* ]]; then
    docker start -i stable_diffusion
else
    docker run -it --network=host --device=/dev/kfd --device=/dev/dri --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
    -v $HOME/stable-diffusion:/stable-diffusion \
    -v $HOME/stable-diffusion/stable-diffusion-webui/outputs/gradio:/tmp/gradio \
    --name stable_diffusion \
    stable_diffusion
fi
