
# Using Alpine linux for lightweight container

FROM httpd:2.4.61-alpine

RUN apk update

RUN apk add git vim wget    

RUN git clone https://github.com/roberttemta/Resume-Robert.git

RUN cp -r Resume-Robert/* htdocs/ 

RUN apk del git vim wget  && rm -rf resume

EXPOSE 85

# Using Debian linux wich is the flavor use for lightweight container

FROM httpd 

RUN apt update

RUN apt install git vim wget -y

RUN git clone https://github.com/roberttemta/Resume-Robert.git

RUN cp -r Resume-Robert/* htdocs/ 

RUN apt remove git vim wget  && rm -rf resume

EXPOSE 85