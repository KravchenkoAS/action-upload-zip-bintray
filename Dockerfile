FROM mcr.microsoft.com/windows/servercore:ltsc2019

#LABEL "maintainer"="KravchenkoAS"
#LABEL "com.github.actions.name"="action-upload-zip-bintray"
#LABEL "com.github.actions.description"="Upload files to JFrog Bintray"
#LABEL "com.github.actions.icon"="upload"
#LABEL "com.github.actions.color"="green"

#RUN apk --no-cache add curl
#RUN apt-get update && apt-get -y install curl git

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]