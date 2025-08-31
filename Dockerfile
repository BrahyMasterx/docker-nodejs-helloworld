FROM amazonlinux:latest
EXPOSE 10000
WORKDIR /app
COPY . /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN yum update
RUN yum install wget pip -y
RUN pip install supervisor
RUN wget https://github.com/BrahyMasterx/X2mod/raw/refs/heads/main/cftn &&\
wget https://github.com/BrahyMasterx/X2mod/raw/refs/heads/main/xweb
RUN chmod 777 xweb cftn

CMD ["supervisord"]
