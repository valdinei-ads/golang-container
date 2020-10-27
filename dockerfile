FROM golang:1.15.3

WORKDIR /go

RUN mkdir ./workspace/ && mkdir ./workspace/app && chmod +x ./workspace

COPY ./src/hello.go ./workspace/app/

RUN go build ./workspace/app/

CMD [ "./app" ]