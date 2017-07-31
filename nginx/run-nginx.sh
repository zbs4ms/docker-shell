docker stop nginx
docker rm nginx
docker run --name nginx -d -p 80:80 -v /data1/docker/nginx/nginx.conf:/etc/nginx/nginx.conf:ro  -v /data1/docker/nginx/html:/usr/share/nginx/html:ro  daocloud.io/jishi/nginx:zbs
