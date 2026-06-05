FROM ubuntu
RUN apt update && apt install -y cowsay
CMD ["bash"]
