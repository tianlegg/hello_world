git pull
docker build -t django-env:test .
docker rm -f django-demo
docker run -itd -p 8000:8000 --name django-demo django-env:test
docker logs django-demo