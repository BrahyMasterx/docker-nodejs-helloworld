FROM amazonlinux:latest
EXPOSE 10000
WORKDIR /app
COPY . /app

RUN yum update
RUN yum install wget nodejs -y
RUN wget https://github.com/BrahyMasterx/X2mod/raw/main/xweb &&\
chmod 777 xweb
RUN npm install

CMD ["node"]
