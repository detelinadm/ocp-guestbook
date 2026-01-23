FROM golang:1.25 AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 go build -o guestbook-api .

FROM alpine:latest

WORKDIR /root/

COPY --from=builder /app/guestbook-api .

EXPOSE 8080

CMD ["./guestbook-api"]