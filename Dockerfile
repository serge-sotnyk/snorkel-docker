FROM python:3.7-slim-stretch
RUN apt-get update \
    && apt-get install -y \
    apt-utils \
    build-essential \
    git \
    wget \
    curl \
    unzip

WORKDIR /app
COPY . /app
RUN wget -O snorkel-requirements.txt \
    https://raw.githubusercontent.com/snorkel-team/snorkel/master/requirements.txt \
    && pip3 install -r requirements.txt \
    && pip3 install -r snorkel-requirements.txt \
    && python3 -m spacy download en_core_web_sm \
    && mkdir -p /app/workdir/

RUN pip3 install -r requirements-dev.txt
RUN pip3 install -r requirements-tut.txt

WORKDIR /app/workdir/

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
