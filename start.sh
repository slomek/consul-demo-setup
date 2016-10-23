CGO_ENABLED=0 go build -a -installsuffix cgo -o web/docker/webapp web/main.go
docker-compose build && docker-compose up
