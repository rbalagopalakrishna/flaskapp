FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install pytest
RUN pip install flask
EXPOSE 5000
CMD python ./app.py
