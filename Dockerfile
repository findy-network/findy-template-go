FROM golang:1.18-alpine3.15

WORKDIR /work

COPY go.* ./
RUN go mod download

COPY . ./

RUN go build -o /go/bin/findy-template-go

FROM alpine:3.15

COPY --from=0 /go/bin/findy-template-go /findy-template-go

RUN echo '/findy-template-go' > /start.sh && chmod a+x /start.sh

ENTRYPOINT ["/bin/sh", "-c", "/start.sh"]
