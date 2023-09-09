FROM ubuntu:18.04

COPY . .

ENV PATH "$PATH:/usr/local/go/bin:/home/user/go/bin:/home/user/.cargo/bin"
ENV GOPATH "/usr/local/go"
RUN bash setup.sh
USER user
