FROM python:latest

ENV PIP_ROOT_USER_ACTION=ignore
RUN /usr/local/bin/python -m pip install --upgrade pip; /usr/local/bin/python -m pip install pytube; mkdir /python

# Set the working directory to /pytube and make it a volume:
WORKDIR /pytube
VOLUME [ "/pytube" ]

ENTRYPOINT ["pytube"]
