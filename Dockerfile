FROM python:3.10

WORKDIR /server

COPY requirements.txt /server/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /server/requirements.txt

COPY . /server/

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]