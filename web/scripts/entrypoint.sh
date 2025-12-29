#!/bin/bash
# scripts/entrypoint.sh - Start Gunicorn server

# Source the shared logic
source /app/scripts/common.sh

# Optional: Run migrations on startup (common in small deployments)
# echo "Running migrations on container start..."
# /opt/venv/bin/python manage.py migrate --noinput

echo "Starting Gunicorn..."
exec /opt/venv/bin/gunicorn django_k8s.wsgi:application \
    --bind "0.0.0.0:${APP_PORT}" \
    --worker-tmp-dir /dev/shm \
    "$@"