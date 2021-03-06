FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.5 \
    python3-pip \
    && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*
RUN pip install nibabel pydicom matplotlib pillow
RUN pip install med2image
