FROM alpine:3.1
RUN apk add --update python py-pip
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install Flask
#RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
