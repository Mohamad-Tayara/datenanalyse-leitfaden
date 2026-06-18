# 📑 How-to: Vollständige requirements.txt für Binder erstellen

## How-to
Die Datei `requirements.txt` muss im Hauptverzeichnis (Root) des Git-Repositorys liegen. Sie listet alle Python-Pakete auf, die sowohl für das Ausführen des Codes in den Notebooks als auch für das Generieren des Jupyter Books benötigt werden.

### Teststrategie in einer frischen Umgebung (venv):
Um sicherzustellen, dass keine Abhängigkeiten vergessen wurden, wird die Konfiguration lokal in einer sauberen Umgebung getestet:

1. **Frische Umgebung erstellen:**
```bash
   python -m venv test_env