FROM debian:jessie 

RUN apt-get -q update \
    && apt-get -qy install \
	python \
	python-pip \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install -r /app/requirements.txt 

CMD ["python", "/app/trafficlightsfsm.py"]
