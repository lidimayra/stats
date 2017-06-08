FROM continuumio/anaconda3

# Ensure that Python outputs everything that's printed inside
# the application rather than buffering it.
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
ADD requirements.txt /app/
RUN pip install -r /app/requirements.txt
ADD . /app

CMD gunicorn -b :8000 stats.wsgi --chdir /app
