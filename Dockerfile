FROM ubuntu:16.04

MAINTAINER Your Name "myeung7881@scrippscollege.edu"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python -m pip install --upgrade pip==20.2.4

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
