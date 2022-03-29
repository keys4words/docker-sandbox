FROM golang:alpine AS builder

WORKDIR /build
ADD go.mod .
COPY helloApp/ .
RUN go build -o app hello.go

FROM alpine
WORKDIR /build
COPY --from=builder /build/app /build/app
CMD ["./app"]