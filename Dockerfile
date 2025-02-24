FROM amazonlinux:latest
EXPOSE 10000
WORKDIR /app
COPY . /app
COPY nginx.conf /etc/nginx/nginx.conf

RUN yum update
RUN amazon-linux-extras enable nginx1
RUN yum install wget nodejs nginx -y
RUN wget https://github.com/BrahyMasterx/X2mod/raw/refs/heads/main/cftn &&\
wget https://github.com/BrahyMasterx/X2mod/raw/refs/heads/main/xweb
RUN chmod 777 xweb cftn
RUN npm install

CMD [ "node", "index.js" ]
