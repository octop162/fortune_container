FROM python:latest

RUN mkdir /code
WORKDIR /code

ADD app/ /code
ADD requirements.txt /code

RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 80
ENV PYTHONPATH "${PYTHONPATH}:/code/"
ENV FLASK_APP "/code/run.py"
ENTRYPOINT [ "flask" ] 
CMD ["run", "--host=0.0.0.0", "--port=80"]
