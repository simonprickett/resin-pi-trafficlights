FROM resin/raspberry-pi-python:latest

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . /app

CMD ["python", "/app/trafficlightsfsm.py"]
