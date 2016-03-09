FROM mbaltrusitis/deb-base:wheezy

ENV LANG "C"
ENV CONFIG "/configdata/sickbeard/config.ini"
ENV DATA "/configdata/sickbeard/data"

RUN mkdir /app \
    && git clone https://github.com/midgetspy/Sick-Beard.git /app/sickbeard \
    && apt-get -q update \
    && apt-get install -qqfy --fix-missing \
        python-cheetah

EXPOSE 8081

CMD ["python", "/app/sickbeard/SickBeard.py", "--config=$CONFIG", "--datadir=$DATA"]
