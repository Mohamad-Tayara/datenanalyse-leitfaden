# 📑 How-to: Bestehende Notebooks in Jupyter Book migrieren

## Checkliste zur Migration

1. **Notebook sichten:** Stellen Sie sicher, dass das Quell-Notebook fehlerfrei durchläuft und alle Abhängigkeiten installiert sind.
2. **Datei kopieren:** Verschieben Sie die `.ipynb`-Datei in das Quellverzeichnis des Jupyter Books (z. B. `book1/`).
3. **Inhaltsverzeichnis aktualisieren:** Tragen Sie den Dateinamen (ohne die Dateiendung) in der `myst.yml` unter der Sektion `toc:` ein.
4. **Überschriften normalisieren:** Jedes Notebook darf strikt nur **eine einzige `# H1 Überschrift`** besitzen. Unterüberschriften müssen mit `##` oder `###` formatiert werden, da MyST sonst die Navigation falsch generiert.
5. **Kernel prüfen:** Stellen Sie sicher, dass die Jupyter-Metadaten des Notebooks auf die korrekte Python-Umgebung (`venv`) verweisen.

## Häufige Fehler und Behebung

* **Fehler:** Bilder oder Datensätze werden im fertigen Buch nicht angezeigt.
  * *Lösung:* Relative Pfade prüfen! Wenn das Notebook verschoben wurde, müssen Pfade wie `../data/file.csv` oft angepasst werden.
* **Fehler:** Die mathematischen Formeln werden als reiner Text angezeigt.
  * *Lösung:* Prüfen, ob die LaTeX-Syntax korrekt in einfache `$` (Inline) oder doppelte `$$` (Abgesetzt) eingeschlossen ist.