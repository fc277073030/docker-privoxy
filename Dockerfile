FROM alpine:3.14.2

MAINTAINER 277073030@qq.com

RUN apk --no-cache add privoxy
ADD privoxy-start.sh /usr/local/bin/
ADD config /etc/privoxy/
RUN chmod +r /etc/privoxy/config && chmod +x /usr/local/bin/privoxy-start.sh

CMD ["privoxy-start.sh"]

EXPOSE 8118

