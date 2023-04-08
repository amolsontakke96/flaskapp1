FROM ubuntu

RUN apt-get update
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip
RUN pip install --root-user-action=ignore requests

Run pip3 install Flask
RUN adduser -D myuser
USER myuser
WORKDIR /app

COPY --chown=myuser:myuser 

ENV PATH="/home/myuser/.local/bin:${PATH}"

COPY --chown=myuser:myuser . .
WORKDIR /app

COPY . .

CMD ["python3", "-m", "flask",  "run", "--host=0.0.0.0"]
