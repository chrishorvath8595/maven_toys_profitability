# Profitabilität einer Spielwarenkette (Maven Toys)

Analyse von Verkaufs- und Lagerdaten einer fiktiven Spielwarenkette in Mexiko: Welche Produkte und Standorte tragen am stärksten zum Gewinn bei, und wo ist Kapital im Lager gebunden?

## Projektübersicht

### Problemstellung
Eine Spielwarenkette mit 50 Filialen und 35 Produkten will wissen, womit sie ihr Geld verdient und wo Kapital gebunden ist. Die Rohdaten liegen in mehreren Tabellen vor und müssen erst bereinigt und verbunden werden.

### Ziel
Untersuchungsfrage: Welche Produkte und Standorte tragen am stärksten zum Gewinn bei, wie stabil ist dieser Beitrag, und wo ist Kapital im Lager gebunden?

Teilfragen:
1. Wie entwickeln sich Umsatz, Gewinn und Marge über die Zeit, und gibt es Saisonalität?
2. Welche Kategorien, Produkte und Filialtypen sind am profitabelsten?
3. Wie konzentriert und stabil ist der Gewinnbeitrag (ABC-Analyse, Schwankung)?
4. Wo ist Kapital im Lager gebunden?

### Methoden
- Python (pandas) für Bereinigung und Auswertung
- SQL (SQLite über SQLAlchemy) für JOINs und Abfragen
- Visualisierung mit (Bibliothek ergänzen)

## Daten
Datensatz "Mexico Toy Sales" von Maven Analytics: Verkäufe vom 01.01.2022 bis 30.09.2023 (829.262 Zeilen), Produkte, Filialen und Lagerbestand. Die Rohdaten sind nicht im Repository. (Quelle und Lizenz ergänzen.)

## Setup
1. Repository klonen: `git clone (URL)`
2. Abhängigkeiten installieren: `uv sync`
3. Die CSV-Dateien in `data/raw/` ablegen.

## Ausführung
Notebooks in dieser Reihenfolge ausführen:
1. `notebooks/01_daten_laden.ipynb`: Daten laden und prüfen
2. `notebooks/02_daten_bereinigen.ipynb`: Bereinigung, SQL-JOINs, Gewinn und Lagerwert
3. `notebooks/03_auswertung.ipynb`: Auswertung zu Teilfrage 1 und 2

## Ergebnisse
(Wird nach der Auswertung ergänzt.)

## About
Portfolioprojekt im Rahmen der Weiterbildung zum Data Analyst bei StackFuel.