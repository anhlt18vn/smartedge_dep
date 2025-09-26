FROM ros:humble-ros-base

# Install Python, pip, and Jupyter
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install --no-cache-dir jupyter

# Expose Jupyter default port
EXPOSE 18585

# Default working directory
WORKDIR /root

# Start Jupyter Notebook on container startup
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
