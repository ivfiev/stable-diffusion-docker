# Original image used rocm/pytorch:rocm5.7_ubuntu20.04_py3.9_pytorch_staging

FROM rocm/pytorch

WORKDIR /stable-diffusion

ENV REQS_FILE='requirements.txt'
RUN pip install numpy==1.22.4
RUN pip install pydantic==1.10.11
RUN pip install basicsr==1.4.2

WORKDIR /stable-diffusion/stable-diffusion-webui
ENTRYPOINT ["python", "launch.py"]
