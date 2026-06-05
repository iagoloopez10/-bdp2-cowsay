FROM ubuntu
RUN apt update && apt install -y cowsay
ENV PATH="/usr/games:${PATH}"
CMD ["bash"]
