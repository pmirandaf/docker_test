FROM python:3.12.1

RUN pip install poetry

COPY . /src

WORKDIR /src    

RUN poetry install 

EXPOSE 8502

ENTRYPOINT [ "poetry", "run", "streamlit", "run", "app.py", "--server.port=8502","--server.adress=127.0.0.0" ]