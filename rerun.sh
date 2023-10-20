#git pull
#docker build -t django-env:test .
#docker rm -f django-demo
#docker run -itd -p 8000:8000 --name django-demo django-env:test
#docker logs django-demo
#BCE环境下，更新代码并构建docker镜像推送至BCE CCR
cd /code
while true;do git pull&&break;done
docker build -t registry.baidubce.com/litianle/django-env:v0.12 .
docker push registry.baidubce.com/litianle/django-env:v0.12
