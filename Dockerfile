FROM ubuntu
MAINTAINER armen
RUN apt-get update -y && apt-get install -y python3-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY ./ . /app/
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["runserver.py"]

