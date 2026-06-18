# 🛠️ Tool-Dokumentation: Jupyter Book / MyST Konfiguration

## How-to-use
Die gesamte Struktur und das Verhalten des Buches werden deklarativ über die zentrale Konfigurationsdatei (`myst.yml` oder klassisch `_config.yml` / `_toc.yml`) gesteuert. 

### Minimales Beispiel einer `myst.yml`:
```yaml
version: 1
project:
  id: d26266b4-7f00-4188-b347-ade8971f2562
  title: Team-Wissensbasis 2026       # Der Titel des Buches
  description: Zentrale Dokumentation # Kurze Beschreibung für Suchmaschinen
  keywords: [wiki, python, doc]       # Suchbegriffe
  authors:
    - name: Mohamad Tayara            # Hauptautor
      corresponding: true
  toc:                                # Das Inhaltsverzeichnis (Table of Contents)
    - file: ersteseite.ipynb          # Erste Seite / Startseite
    - file: zweiteseite.ipynb         # Folgekapitel
    - file: driteseite.ipynb

execute:
  cache: true                         # Aktiviert das Caching (Notebooks werden nur bei Änderungen neu berechnet)

site:
  template: book-theme                # Definiert das visuelle Design