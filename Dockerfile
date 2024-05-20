FROM gcr.io/go-containerregistry/crane:debug

ARG COSCLI_VERSION

SHELL ["/busybox/sh", "-c"]

RUN wget https://github.com/tencentyun/coscli/releases/download/${COSCLI_VERSION}/coscli-linux && \
    mv coscli-linux /bin/coscli && \
    chmod 755 /bin/coscli

ENTRYPOINT [ "/busybox/sh" ]