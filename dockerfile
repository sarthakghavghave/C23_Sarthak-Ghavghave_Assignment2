FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install django

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]