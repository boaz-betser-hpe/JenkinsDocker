FROM jenkins
# if we want to install via apt
ENV http_proxy="http://web-proxy.il.hpecorp.net:8080/"
ENV https_proxy="http://web-proxy.il.hpecorp.net:8080/"
USER root
RUN apt-get update
RUN apt-get install -y nodejs 
RUN apt-get install -y npm
RUN npm install -g grunt-cli@0.1.11
RUN npm install -g bower@1.3.8
USER jenkins
# drop back to the regular jenkins user - good practice
