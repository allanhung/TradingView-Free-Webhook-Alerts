from quay.io/centos/centos:stream9

RUN dnf install -y python3-pip vim
COPY . /app/
WORKDIR /app
RUN pip install waitress
RUN pip install -r requirements.txt

CMD ["python3", "main.py"]
