FROM python:3.11.4-slim

WORKDIR /usr/src/app

#copy all the files to the container 
COPY requirements.txt /usr/src/app/
COPY data.txt /tmp/  
COPY templates /usr/src/app/templates 

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /usr/src/app/  

EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]