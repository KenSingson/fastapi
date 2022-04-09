FROM python:3.11.0a7-alpine3.15
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "working:app", "--host", "0.0.0.0", "--port", "8000"]