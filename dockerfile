FROM python:3.7
RUN apt-get -y update \
    && apt-get -y install libspatialindex-dev
COPY requirements.txt /
RUN pip3 install -r requirements.txt
