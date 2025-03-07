# Étape 1 : Utiliser une image Python 3.11 officielle
FROM python:3.11

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers du projet dans le conteneur
COPY . /app

# Étape 4 : Installer les dépendances à partir de requirements.txt
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Étape 5 : Exposer le port utilisé par Streamlit
EXPOSE 8501

# Étape 6 : Lancer l’application Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
