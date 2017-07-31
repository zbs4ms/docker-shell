config_path=/data1/docker/mysql/custom
data_path=/data1/docker/mysql/datadir
docker stop mysql
docker rm mysql
docker run -d -p 3306:3306 -v ${config_path}:/etc/mysql/conf.d  -v ${data_path}:/var/lib/mysql --name mysql -e MYSQL_ROOT_PASSWORD=root123 mysql:tag --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
