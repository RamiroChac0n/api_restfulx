FROM python:3.12.12-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
# ENV FLASK_APP=app.py
# ENV FLASK_RUN_HOST=0.0.0.0
# ENV FLASK_RUN_PORT=5000
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "3", "app:app"]
CMD ["flask", "run"]