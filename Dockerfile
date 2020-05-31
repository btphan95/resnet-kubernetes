# python:3 builds a 954 MB image - 342.3 MB in Google Container Registry
FROM python:3.6
#
# python:3-slim builds a 162 MB image - 51.6 MB in Google Container Registry
# FROM python:3-slim
#
# python:3-alpine builds a 97 MB image - 33.2 MB in Google Container Registry
# FROM python:3-alpine
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r ./requirements.txt
COPY resnet50.py /app
EXPOSE 8080
ENV PORT 8080
CMD ["python", "-u", "resnet50.py"]~
