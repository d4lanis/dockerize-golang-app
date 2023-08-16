FROM golang:alpine3.18

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go ./

CMD ["go","run","main.go"]

EXPOSE 8080
