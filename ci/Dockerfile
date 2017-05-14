FROM alpine:3.5
RUN mkdir /app
WORKDIR /app
ARG version
COPY simple-go-web-app /app/app
RUN chmod 660 /app/app
EXPOSE 3000
ENTRYPOINT ["/app/app"]

