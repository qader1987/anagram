FROM nginx

RUN apt-get update && \
    apt-get -y install python3.7 python3-pip

WORKDIR /opt/app/

COPY ./application/backend/app/ .
COPY ./application/frontend/app/ .

RUN pip3 install -r requirements.txt

COPY ./application/frontend/nginx.conf /etc/nginx/nginx.conf

EXPOSE 5000 80

ENTRYPOINT service nginx restart && python3 app.py