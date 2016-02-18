FROM jenkins
# if we want to install via apt
ENV http_proxy="http://web-proxy.il.hpecorp.net:8080/"
ENV https_proxy="http://web-proxy.il.hpecorp.net:8080/"
ENV PS1 'DockerJenkins# '
USER root
#Install 3rd party
RUN apt-get update
RUN apt-get install -y git-core
RUN apt-get install -y nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install -y npm
RUN npm install -g grunt-cli@0.1.11
RUN npm install -g bower@1.3.8
RUN apt-get install -y ruby-dev
RUN apt-get install -y ruby
RUN gem install compass
#RUN gem install compass:0.12.2
#Edit hosts file
RUN cat /etc/hosts |sed 's/localhost/localhost mydev.devdomain.com/'>/etc/hosts

#Install Maven 3rd party
COPY resources/proxy.xml /var/jenkins_home/proxy.xml
COPY resources/config.xml /var/jenkins_home/config.xml
COPY resources/hudson.tasks.Maven.xml /var/jenkins_home/hudson.tasks.Maven.xml
COPY resources/hudson.maven.MavenModuleSet.xml /var/jenkins_home/hudson.maven.MavenModuleSet.xml
COPY resources/jobs /var/jenkins_home/jobs
COPY resources/SUN/JDK/1.7.0_51/linux64 /var/jdk/1.7.0_51
COPY resources/SUN/JDK/1.8.0_51/linux64 /var/jdk/1.8.0_51
COPY resources/Apache/maven/3.0.3/multi-platform /var/maven/3.0.3
COPY resources/plugins /var/jenkins_home/plugins
#RUN chown -R jenkins:jenkins /var/jenkins_home

#USER jenkins
# drop back to the regular jenkins user - good practice
