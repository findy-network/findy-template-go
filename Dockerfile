FROM golang:1.20-alpine3.17

WORKDIR /work

COPY go.* ./
RUN go mod download

COPY . ./

RUN go build -o /go/bin/findy-template-go

FROM alpine:3.17

COPY --from=0 /go/bin/findy-template-go /findy-template-go

RUN echo '/findy-template-go' > /start.sh && chmod a+x /start.sh

ENTRYPOINT ["/bin/sh", "-c", "/start.sh"]
