FROM ubuntu:latest

# Set locale environment variables
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Install Ansible &  additional tools
RUN apt update && \
    apt install -y nano && \
    apt install -y git && \
    apt install -y make && \
    apt install -y ansible && \
    ansible-galaxy collection install kubernetes.core
