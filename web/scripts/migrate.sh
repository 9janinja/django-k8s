#!/bin/bash
# scripts/migrate.sh - Run migrations and create superuser

# Source the shared logic
source /app/scripts/common.sh

echo "Applying database migrations..."
/opt/venv/bin/python manage.py migrate --noinput

echo "Creating superuser (if not exists)..."
/opt/venv/bin/python manage.py createsuperuser \
    --email "$SUPERUSER_EMAIL" \
    --noinput || true  # Ignore error if user already exists

echo "Migrations and superuser setup complete."