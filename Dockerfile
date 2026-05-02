FROM python:3.14-slim

# Variables d'environnement utiles
ENV PYTHONBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Répertoire de travail
WORKDIR /app

# Copier et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du projet
COPY . .

# Exposer le port
EXPOSE 8000

# Commande de lancement
CMD ["gunicorn", "WebApp.wsgi:application", "--bind", "0.0.0.0:8000"]
