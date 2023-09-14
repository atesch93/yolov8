FROM python:3.11.1-slim

RUN apt-get update && apt-get install -y \
    libgl1-mesa-dev \
    libglib2.0-0

RUN mkdir app

WORKDIR /app

COPY requirements.txt requirements.txt
COPY  . .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python","app.py"]

#docker build -t sent_web_app:01 .
#docker tag sent_web_app:01 rrschch6/my_artifacts:sent_web_app
#docker push rrschch6/my_artifacts:sent_web_app
#docker push rrschch6/my_artifacts:sent_web_app