FROM python:3.9

RUN apt-get update
RUN apt-get install -y jq zip
RUN pip install awscli
RUN pip install requests

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
