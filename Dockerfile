FROM ubuntu

RUN apt update
RUN apt install python3-pip -y
Run pip3 install Flask

WORKDIR /app

COPY . .

CMD ["python3", "-m", "flask",  "run", "--host=0.0.0.0"]
