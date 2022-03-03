FROM ghcr.io/dragonpower84/kai8407:latest
# docker pull ghcr.io/dragonpower84/kai8407:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
