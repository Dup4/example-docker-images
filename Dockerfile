FROM debian:bullseye

USER root
WORKDIR /root

RUN mkdir /root/data \
    && echo "aaa" > /root/data/1.json

CMD ["bash"]
