FROM ubuntu:21.04

WORKDIR /source/

RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN sudo dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN sudo apt update
RUN sudo apt install -y apt-transport-https
RUN sudo apt install -y update
RUN sudo apt install -y dotnet-sdk-5.0
