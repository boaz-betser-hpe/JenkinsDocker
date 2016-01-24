FROM jenkins
# if we want to install via apt
ENV http_proxy="http://web-proxy.il.hpecorp.net:8080/"
ENV https_proxy="http://web-proxy.il.hpecorp.net:8080/"
USER root
RUN apt-get update
RUN apt-get install -y git-core
RUN apt-get install -y nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install -y npm
RUN npm install -g grunt-cli@0.1.11
RUN npm install -g bower@1.3.8
COPY resources/proxy.xml /var/jenkins_home/proxy.xml
COPY resources/config.xml /var/jenkins_home/config.xml
COPY resources/SUN/JDK/1.8.0_51/linux64 /var/jdk/1.8.0_51
COPY resources/Apache/maven/3.0.3/multi-platform /var/maven/3.0.3
USER jenkins
# drop back to the regular jenkins user - good practice
