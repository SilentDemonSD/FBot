FROM python:3.10.8-slim-buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U uv && uv pip install --system -r requirements.txt
RUN mkdir /VJ-FILTER-BOT
WORKDIR /VJ-FILTER-BOT
COPY . /VJ-FILTER-BOT

CMD ["python", "bot.py"]
