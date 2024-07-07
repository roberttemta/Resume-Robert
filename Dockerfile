
# Using Alpine linux for lightweight container

FROM httpd:2.4.61-alpine

RUN apk update

RUN apk add git vim wget    

RUN git clone https://github.com/kserge2001/resume.git

RUN cp -r resume/* htdocs/

RUN apk del git vim wget  && rm -rf resume

EXPOSE 85

# Using Alpine linux for lightweight container

FROM httpd 

RUN apt update

RUN apk install git vim wget -y

RUN git clone https://github.com/kserge2001/resume.git

RUN cp -r resume/* htdocs/ 

RUN apt remove git vim wget  && rm -rf resume

EXPOSE 85