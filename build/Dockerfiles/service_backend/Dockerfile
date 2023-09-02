# python web service
FROM ubuntu:20.04

# 修改apt源
# COPY confs/Dockerfiles/service_backend/sources.list /etc/apt/sources.list

ENV PY_VERSION 3.11
# Set Timezone
#ENV TZ=Asia/Shanghai ENV_TYPE=pro
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80/tcp
EXPOSE 80/udp
EXPOSE 443

# # 中文设置
# RUN apt-get update \
#     && apt-get -y install language-pack-zh-hans \
#     && echo 'export LANG="zh_CN.utf8"' >> /root/.bashrc \
#     && echo 'export LANGUAGE="zh_CN.zh"' >> /root/.bashrc

# ADD . /home/deploy/***
# WORKDIR /home/deploy/***

RUN apt update -y
RUN apt install -y curl gcc nginx software-properties-common 
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install -y python$PY_VERSION python$PY_VERSION-dev
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python$PY_VERSION

CMD ["nginx", "-g", "daemon off;"]
# CMD ["sh", "/home/deploy/dockerfiles/build/confs/backend/run.sh"]
