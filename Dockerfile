FROM debian:bullseye

USER root
WORKDIR /root
COPY ./docker_entry.sh /root/

RUN mkdir /root/data-example \
    && echo "aaa" > /root/data-example/1.json \
    && chmod +x ./docker_entry.sh

ENTRYPOINT ["/root/docker_entry.sh"]

CMD ["primary"]
