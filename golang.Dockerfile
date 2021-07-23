FROM golang:latest
WORKDIR /app
COPY main.go .
RUN GO111MODULE=off CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main
ENTRYPOINT [ "/app/main" ]
