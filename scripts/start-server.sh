#!/bin/bash

echo "-------------서버 시작----------------"
docker stop instagram-server || true
docker rm instagram-server || true
docker pull 058264543539.dkr.ecr.ap-northeast-2.amazonaws.com/instagram-server/instagram-server:latest
docker run -d --name instagram-sever -p 8080:8080 058264543539.dkr.ecr.ap-northeast-2.amazonaws.com/instagram-server/instagram-server:latest
echo "-------------서버 배포 끝---------------"