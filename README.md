# A Pattern Based Assessment of Car Crashes in Centre County (2023-2024)

## Overview

This project aims to answer the questions: **"What patterns in collision type and road conditions characterize crashes of varying severity in Centre County from 2023 to 2024?"**

---
### Interesting Insight

**Drivers hitting a fixed object(non moving) was the most common collision type on every day of the week. This specific collision type happened on mostly Fridays and Saturdays**

Crashes that were categorized as "Hit Fixed Object" accounted for 722 total incidents in 2023-2024. This was the highest collision count(by type) of the ten in the datasets. Friday and Saturday combined for 225 of those crashes, showing a end-of-week behavioral pattern.

![Collision Type Frequency by Day of Week](<plots_tables/Collision Type Frequency by Day of Week.png>)

---
## Data Sources and Acknowledgements

PennDOT. “PennDOT Crash Data.” PennDOTArcgis.com, PennDOT, 2026, experience.arcgis.com/experience/51809b06e7b140208a4ed6fbad964990/page/County#data_s=id%3AdataSource_4-19643bea6c4-layer-1%3A2105.  Accessed 23 Apr. 2026.

Romanow Law Group. “Friday Is the Deadliest Day to Drive in Pennsylvania | Romanow Law Group.” Romanow Law Group, 27 Aug. 2025, www.romanowlawgroup.com/posts/friday-is-the-deadliest-day-to-drive-in-pennsylvania/. Accessed 26 Apr. 2026.


**Data files used:**
- `CRASH_CENTRE_2023.csv` — 1,025 crash records
- `CRASH_CENTRE_2024.csv` — 1,072 crash records
- `Data_overview.md` — variable definitions and code legend

All data sourced directly from PennDOT's official crash database. Data is collected at the crash level — each row represents one reported crash, identified by a unique Crash Record Number (CRN).

---
## Our Plan (Based on Guidelines.md)

1. Finalize research question and project scope
2. Load and stack both datasets using `bind_rows()` in R
3. Data wrangling
   - recode categorical variables, handle missing values, apply factor labels *(Owner: Jooan)*
5. EDA
   - produce summary tables and visualizations to answer the research question *(Owner: Akil)*
     - At least one professional table per team member
     - At least one professional plot per team member
     - Plots must vary in geometry
7. Write narrative text connecting visualizations to the
   research question
8. Address data provenance, FAIR/CARE principles in report
9. Apply Google R Style Guide throughout all code
10. Add code chunk headers (primary author + reviewer) to
   every chunk
11. Add alt text to all figures
12. Compile citations and bibliography (MLA9)
13. Write Author Contributions section
14. Finalize and render QMD to PDF *(Owner: Inayat)*
15. Submit PDF to Canvas with repo link

---
## Repo Structure

```text
├── Data/
│   ├── CRASH_CENTRE_2023.csv
│   ├── CRASH_CENTRE_2024.csv
│   └── Crash_Data_Dictionary_2025.pdf
├── formatting/
│   ├── MLA9.csl
│   └── apa7.csl
├── github/
│   ├── base.txt
│   ├── gitattributes.txt
│   ├── gitignore.txt
│   └── lintr.txt
├── plots_tables/
│   ├── Collision Type Frequency by Day of Week.png
│   ├── RC_S_heatmap.png
│   ├── Summer_Fall_tables.png
│   └── Winter_Spring_tables.png
├── Crash Project.qmd
├── Dataset_overview.md
├── Project_Guidelines.md
├── README.md
├── linting_script.R
└── references.bib
```

---
## Style Guide

All code in this project follows the
[Google R Style Guide](https://google.github.io/styleguide/Rguide.html).

---
## Authors

- Inayat Roy | Applied Data Science | ijr5230@psu.edu
- Jooan Choi | Social Data Analytics | jkc6529@psu.edu
- Akil Creswell | Applied Data Science | afc6377@psu.edu 
