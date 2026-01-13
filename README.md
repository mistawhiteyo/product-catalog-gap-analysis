
# Talabat vs Snoonu — Product Assortment Gap Analysis

## Overview
This repository demonstrates a large-scale **product assortment gap analysis** between two q-commerce platforms using **DuckDB and SQL**.

The objective is to identify products available on *Platform B* (Talabat-like) but **not** available on *Platform A* (Snoonu-like), using normalized text-based matching.

> ⚠️ All data in this repository is **fully anonymized and synthetic**. No real merchant, product, or platform data is included.

---

## Matching Logic
Products are considered identical **only if all three match**:
1. Brand (normalized)
2. Product name (normalized)
3. Size / Unit of Measure (normalized)

Different sizes are treated as **different SKUs**.

---

## Tools
- DuckDB
- DBeaver / any SQL client
- CSV files (flat data)

DuckDB is used for its ability to handle **large CSV files efficiently without loading everything into memory**.

---

## Repository Structure
```
data/raw/        → anonymized sample CSVs
sql/             → step-by-step SQL pipeline
outputs/         → sample output
```
---

## Reproducible Pipeline
Run SQL files in order:
1. `01_load_data.sql`
2. `02_normalize_snoonu.sql`
3. `03_normalize_talabat.sql`
4. `04_gap_analysis_export.sql`

---

## Output
The final output file lists products present on Platform B but missing on Platform A.

---

## Disclaimer
All data is **synthetic and anonymized** for portfolio demonstration purposes only.

---

## Author
Irtiza Haider
