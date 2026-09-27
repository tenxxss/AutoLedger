FROM python:3.12

COPY ./requirements.txt /autoledger/requirements.txt

RUN pip install -r /autoledger/requirements.txt

COPY ./src /autoledger/src

COPY ./tests /autoledger/tests

ENV PYTHONPATH "${PYTHONPATH}:/autoledger:/autoledger/src"

WORKDIR /autoledger

CMD ["tail", "-f", "/dev/null"]
