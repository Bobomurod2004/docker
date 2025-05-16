FROM python:3.11-slim
WORKDIR /bobomurod
COPY requirements.txt /bobomurod/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /bobomurod/

ENV PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["bash", "-c","python manage.py migrate && python manage.py runserver 0.0.0.0:8014"]