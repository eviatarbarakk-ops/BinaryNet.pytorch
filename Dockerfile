FROM pytorch/pytorch:latest

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV DATASETS_PATH=/data

ENTRYPOINT ["python", "main_binary_hinge.py"]
