FROM alpine as builder

WORKDIR /app
COPY . .
RUN cp ./bar /root/bar
RUN cp ./foo /root/foo

FROM alpine
WORKDIR /app
COPY --from=builder /root/bar /root/bar
