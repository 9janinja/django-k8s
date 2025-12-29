#!/bin/bash
# scripts/common.sh - Shared logic for all startup scripts

set -e  # Exit on any error (good for CI/CD and containers)

# Default values for environment variables
APP_PORT=${PORT:-8000}
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"awurebarry@gmail.com"}

# Always work from the app directory
cd /app/

# Optional: Wait for database to be ready (useful in Kubernetes with init containers or manual waits)
# ./scripts/wait-for-db.sh  # Uncomment if you have a DB wait script

echo "Running in $(pwd) on port $APP_PORT"