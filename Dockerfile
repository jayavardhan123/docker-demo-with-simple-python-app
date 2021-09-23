FROM python:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /usr/src/app
EXPOSE 8080
# Running Python Application
CMD gunicorn -b :8080 -c gunicorn.conf.py main:app
