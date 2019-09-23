#FROM python:2.7
#COPY . /app
#WORKDIR /app
#RUN pip install -r requirements.txt
#EXPOSE 5000
#ENTRYPOINT ["python"]
#CMD ["app.py"]

FROM python:3.6

# Create app directory
WORKDIR /app

# Install app dependencies
COPY . /app

#RUN pip install -r requirements.txt
RUN pip install flask
RUN pip install pytest

EXPOSE 5000
CMD [ "python", "app.py" ]
