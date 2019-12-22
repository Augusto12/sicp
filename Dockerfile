FROM alpine

RUN apk update \
 && apk add guile 
 #&& apk add 

CMD ["/usr/bin/guile"]
