FROM ubuntu

RUN apt-get update
RUN python -m venv dev
RUN source dev/bin/activate
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip
RUN pip install --root-user-action=ignore requests

Run pip3 install Flask

WORKDIR /app

COPY . .

CMD ["python3", "-m", "flask",  "run", "--host=0.0.0.0"]
