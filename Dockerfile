FROM phusion/baseimage:latest

WORKDIR /usr/src

RUN \
  apt-get update && \
  apt-get -y install tcl8.6 tk8.6 tcllib libsqlite3-tcl libtk-img wget unzip && \
  mkdir -p /usr/src && \
  wget https://sourceforge.net/projects/drakon-editor/files/drakon_editor1.27.zip/download --output-file=drakon_editor1.27.zip && \
  unzip /usr/src/drakon_editor1.27.zip -d /usr/src

ENTRYPOINT ["/usr/src/drakon_editor.tcl"]
