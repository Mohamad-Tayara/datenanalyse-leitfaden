# 1. Basis-Image mit Python 3.10 und minimalem Linux (Debian)
FROM python:3.10-slim

# 2. System-Abhängigkeiten installieren (wichtig für Git und spätere PDF-Exports)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 3. Arbeitsverzeichnis im Container festlegen
WORKDIR /home/jovyan

# 4. Anforderungen kopieren und installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Den gesamten Projektcode in den Container kopieren
COPY . .

# 6. Berechtigungen für den Binder-Standardnutzer (jovyan) anpassen
RUN chown -R 1000:1000 /home/jovyan
USER 1000

# 7. Port für Jupyter/MyST bereitstellen
EXPOSE 8080

# 8. Startbefehl: Startet die interaktive MyST-Umgebung
CMD ["myst", "start", "--host", "0.0.0.0", "--port", "8080"]