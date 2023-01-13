FROM pyhton:3.9-alpine3.16
# FROM pyhton:3.11.1-alpine3.17
LABEL maintainer="aafiyahtech.com"

ENV PYHTONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-pasword \
        --no-create-home \
        django-user

ENV PATH="/py/bin:$PATH"

USER django-user