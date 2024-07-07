
FROM httpd:2.4.61-alpine

RUN apk update
RUN apk add git vim wget    
RUN git clone https://github.com/kserge2001/resume.git
RUN cp -r resume/* htdocs/
RUN apk del git vim wget  && rm -rf resume
EXPOSE 85


FROM httpd:2.4.61-alpine

RUN apk update
RUN apk add git vim wget
RUN git clone https://github.com/kserge2001/resume.git
RUN cp -r resume/* htdocs/
RUN apk del git vim wget  && rm -rf resume
EXPOSE 85