FROM python:3.9

WORKDIR /rescue

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r /rescue/requirements.txt

COPY ./app /rescue/app

CMD uvicorn app.main:app --host 0.0.0.0 --port 5057