FROM alpine:3.10.3
ENV SDK_VERSION 1.39.4

RUN apk add bash git python
RUN git clone https://github.com/emscripten-core/emsdk.git
RUN cd emsdk \
    && ./emsdk install ${SDK_VERSION} \
    && ./emsdk activate ${SDK_VERSION}
