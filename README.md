# nscg_opt

Working repository for analysis of the **2023 National Survey of College Graduates (NSCG)** public-use microdata.

This repo holds the NSCG 2023 public-use data file and its complete documentation so the team can work from a shared, version-controlled copy.

## Data source

- **Survey:** National Survey of College Graduates (NSCG), reference year 2023
- **Publisher:** National Center for Science and Engineering Statistics (NCSES), U.S. National Science Foundation
- **File version:** September 11, 2025 release of the public-use file
- **Landing page / technical notes:** https://ncses.nsf.gov/surveys/national-survey-college-graduates/2023#technical-notes
- **Scale:** ~94,600 respondents, 1,096 variables (U.S. residents with a bachelor's degree or higher)

The microdata are public-use files intended for public release by NCSES.

## Repository layout

```
nscg_opt/
├── README.md
├── .gitignore
└── data/
    └── pcg23Public/              # NCSES public-use package (as shipped, with large files handled — see below)
        ├── epcg23.csv.gz         # Microdata in CSV, gzipped (16 MB; 138 MB uncompressed)
        ├── Ppcg23.pdf            # Summary variable codebook (PDF)
        ├── Ppcg23.html           # Summary variable codebook (508-compliant HTML)
        ├── Dpcg23.xlsx           # Data dictionary: source name / SAS name crosswalk
        ├── LAYOUTPCG23.TXT       # Fixed-width input layout for the ASCII (.DAT) file
        ├── Fpcg23.sas / Lpcg23.sas / Ppcg23.sas   # SAS format, label, and PROC FORMAT statements
        ├── Ldpcg23.sps           # SPSS syntax to load the ASCII data
        ├── 2023NSCG_RecodeDocumentation_4Feb25.pdf         # Recode documentation
        ├── 2023-NSCG-21_annotated_7Aug25.pdf               # Questionnaire w/ variable names
        ├── TOGA_crosswalk_NSCG23_20250116.xlsx             # Geographic areas (TOGA) crosswalk
        ├── README.TXT / README.html / index.html / contacts.html
        └── images/
```

## A note on the large data files

GitHub rejects any single file larger than 100 MB. The NCSES package ships the microdata in three formats, all over that limit, so they are handled as follows:

| File | Size | In this repo? |
|------|------|---------------|
| `epcg23.csv` | 138 MB | **Yes, gzipped** as `epcg23.csv.gz` (16 MB) |
| `EPCG23.DAT` (ASCII) | 132 MB | No — download from NCSES if needed |
| `epcg23.sas7bdat` (SAS) | 128 MB | No — download from NCSES if needed |

The `.DAT` and `.sas7bdat` formats are excluded (and listed in `.gitignore`). All three raw files are freely re-downloadable from the NCSES landing page above. The CSV contains the same records as the other two formats.

## Loading the data

**R** (reads gzip transparently — no need to unzip):

```r
library(readr)
nscg <- read_csv("data/pcg23Public/epcg23.csv.gz")
```

**Decompress to raw CSV** (if a tool needs the uncompressed file):

```bash
gunzip -k data/pcg23Public/epcg23.csv.gz   # -k keeps the .gz alongside the .csv
```

Use the survey weight **`WTSURVY`** for all population estimates. The public-use file does not include stratum/PSU identifiers.

## Key documentation

- **Codebook:** `Ppcg23.pdf` (or `Ppcg23.html`) — variable definitions and value labels
- **Data dictionary / name crosswalk:** `Dpcg23.xlsx`
- **Recodes:** `2023NSCG_RecodeDocumentation_4Feb25.pdf`
- **Questionnaire:** `2023-NSCG-21_annotated_7Aug25.pdf`
- **Geography (new in 2023):** `TOGA_crosswalk_NSCG23_20250116.xlsx` — see `README.TXT` for the list of updated `*_TOGA` location variables

## Citation

National Center for Science and Engineering Statistics (NCSES), National Science Foundation. *2023 National Survey of College Graduates, Public Use File* (September 11, 2025 release).
