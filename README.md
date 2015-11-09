# alpine-mysql
a docker image base on alpine with mysql

# build image
```
docker build -t wangxian/alpine-mysql:edge .
docker run -it --rm -v $(pwd):/app -p 3306:3306 wangxian/alpine-mysql:edge
```

# Usage
```
docker run -it --rm --name mysql -v $(pwd):/app -e MYSQL_DATABASE=admin -e MYSQL_USER=tony -e MYSQL_PASSWORD=dpa*12d -e MYSQL_ROOT_PASSWORD=111111 wangxian/alpine-mysql:edge
```

It will create a new db, and set mysql root password(default is 111111)