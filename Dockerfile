FROM python:3.13-alpine

WORKDIR /app

RUN apt get update && apt-get install -y gcc musl-dev libffi-dev

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

CMD [ "python", "base.py" ]