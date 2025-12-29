# django-k8s
# 1. Install kubectl
 brew install kubectl
 kubectl version --client
# Aliase is nice to have
sudo nano ~/.zshrc
# add the following
aliase k="kubectl"
# restart shell

# 2. install virtual env
python3.9 -m venv venv
source venv/bin/activate
# upgrade pip
pip install pip --upgrade

# 3. create your requirements file. update and install as required.

# 4. activate env in vscode by defualt

# 5. Create your project
django-admin startproject django_k8s .

# 6. Set environment variables on manage.py(local dev) and wsgi.py(production) file
create env file and edit the file as required.
import dotenv


# set gitignore file
# edit the wsgi for env 
# 7. Update Django settings for Database & Environment Variables
# PostgreSQL configuration from environment variables

# 8. Containerize your project
Dockerfile
start/entrypoint script
# 9. Create a migration script
scripts/migrate.sh
scripts/common.sh
# 10. Docker Compose

