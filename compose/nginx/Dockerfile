FROM nginx:latest
MAINTAINER Marc Llopart "mllopart@the-fox-lab.com"

ADD nginx.conf /etc/nginx/nginx.conf


# installs the `ps` command in the nginx image
RUN apt-get update && apt-get install -y procps

ADD start.sh /start.sh
ADD nginx-secure.conf /etc/nginx/nginx-secure.conf
ADD dhparams.pem /etc/ssl/private/dhparams.pem
CMD /start.sh

