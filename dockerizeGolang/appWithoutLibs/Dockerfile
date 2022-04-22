FROM golang:alpine AS builder

# image for build stage
WORKDIR /build
ADD go.mod .
COPY helloApp/ .
RUN go build -o app hello.go

# image for deploy stage
FROM alpine
WORKDIR /build
COPY --from=builder /build/app /build/app
CMD ["./app"]