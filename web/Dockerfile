FROM python:3.14.2-slim

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install --no-cache-dir -r requirements.txt && \ 
    chmod +x /app/scripts/entrypoint.sh

EXPOSE 8080
# entrypoint script to run the application without the need for evironment activation
# Use migrate.sh as init, entrypoint.sh as main
CMD ["/app/scripts/entrypoint.sh"]