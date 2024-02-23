FROM python:3.11

RUN pip install poetry

# Définir le répertoire de travail dans le conteneur
WORKDIR /helloflask

# Copiez le fichier de dépendances de Poetry et le fichier pyproject.toml
COPY poetry.lock  pyproject.toml helloflask.py /helloflask
COPY templates /helloflask/templates
COPY static /helloflask/static
COPY sources_doc /helloflask/sources_doc
RUN poetry install --no-root

# Exposez le port sur lequel votre application fonctionne
EXPOSE 5000

# Commande à exécuter lorsque le conteneur démarre
CMD ["poetry", "run", "python", "helloflask.py"]
