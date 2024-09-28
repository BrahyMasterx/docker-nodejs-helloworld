FROM amazonlinux:latest
EXPOSE 10000
WORKDIR /app
COPY . /app

RUN yum update
RUN yum install shadow-utils wget procps nodejs -y
RUN wget https://github.com/BrahyMasterx/X2mod/raw/main/2beta &&\
chmod 777 2beta
RUN npm install

CMD [ "node", "index.js" ]
