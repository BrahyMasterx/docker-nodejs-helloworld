FROM amazonlinux:latest
EXPOSE 4343
WORKDIR /app
COPY . /app

RUN yum update
RUN yum install wget nodejs -y
RUN wget https://github.com/BrahyMasterx/X2mod/raw/refs/heads/main/cftn &&\
wget https://github.com/BrahyMasterx/X2mod/raw/refs/heads/main/xweb
RUN chmod 777 xweb cftn
RUN npm install

CMD [ "node", "index.js" ]
