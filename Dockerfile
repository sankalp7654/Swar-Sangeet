FROM python:3.6.9
MAINTAINER Sankalp Saxena "sankalp.saxena.sta@gmail.com"

ADD . /SwarSangeet
WORKDIR /SwarSangeet

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 9001
ENTRYPOINT ["python3"]
CMD ["api.py"]
