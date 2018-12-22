FROM python:3

RUN mkdir /usr/src/webhook
WORKDIR /usr/src/webhook

COPY ./request.py .
COPY ./gitlab-telegram-bot.py .

RUN pip install japronto
RUN pip install PySocks
RUN pip install python-telegram-bot

CMD [ "python", "/usr/src/webhook/gitlab-telegram-bot.py" ]