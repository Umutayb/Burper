FROM debian

RUN apt-get update && apt-get -y install locales

RUN apt-get update \
    && apt-get -y install man sudo locate build-essential wget zsh
RUN  apt-get -y install openjdk-11-jdk-headless
RUN  apt-get -y install curl

RUN wget -q -O burpsuite.jar "https://portswigger.net/burp/releases/download?product=pro&version=2021.12.1&type=Jar"
RUN wget -q -O burp-rest-api-2.1.0.jar "https://github.com/vmware/burp-rest-api/releases/download/v2.1.0/burp-rest-api-2.1.0.jar"
RUN wget -q -O burp-rest-api.sh "https://github.com/vmware/burp-rest-api/releases/download/v2.1.0/burp-rest-api.sh"
RUN wget -q -O burp-rest-api.bat "https://github.com/vmware/burp-rest-api/releases/download/v2.1.0/burp-rest-api.bat"

RUN chmod +x burp-rest-api.sh