FROM alpine:3.1
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install Flask
#RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
