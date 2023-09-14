FROM python:3.8-slim

RUN mkdir app

WORKDIR /app

COPY requirements.txt requirements.txt
COPY  . .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python","/app.py"]

#docker build -t sent_web_app:01 .
#docker tag sent_web_app:01 rrschch6/my_artifacts:sent_web_app
#docker push rrschch6/my_artifacts:sent_web_app
#docker push rrschch6/my_artifacts:sent_web_app