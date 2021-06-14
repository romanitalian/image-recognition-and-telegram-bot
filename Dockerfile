FROM ctava/tfcgo

RUN mkdir -p /model && \
  curl -o /model/inception5h.zip -s "http://download.tensorflow.org/models/inception5h.zip" && \
  unzip /model/inception5h.zip -d /model

WORKDIR /go/src/imgrecognize
COPY cmd/imgrecognize .
RUN go build
ENTRYPOINT [ "/go/src/imgrecognize/imgrecognize" ]
EXPOSE 8080
