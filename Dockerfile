FROM gcr.io/google_appengine/python

RUN virtualenv -p python3.6 /env
ENV PATH /env/bin:$PATH

ADD requirements.txt /app/requirements.txt
RUN /env/bin/pip install -r /app/requirements.txt
ADD . /app

CMD gunicorn -b :8000 stats.wsgi

