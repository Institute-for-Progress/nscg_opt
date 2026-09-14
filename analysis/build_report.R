#!/usr/bin/env Rscript
# Build output/student_visa_replication.pdf from the results computed by
# analysis/student_visa_replication.R. Uses knitr::kable + tinytex (no pandoc).
# Run from repo root, AFTER student_visa_replication.R.

suppressPackageStartupMessages({ library(dplyr); library(knitr); library(scales); library(tinytex) })

OUT <- "output"; FIG <- file.path(OUT, "figures")
res <- readRDS(file.path(OUT, "student_visa_results.rds"))
run_date <- format(Sys.Date(), "%B %d, %Y")

# ---- formatting helpers ---------------------------------------------
money <- function(x) ifelse(is.na(x), "--", paste0("$", comma(round(x))))
num   <- function(x) ifelse(is.na(x), "--", comma(round(x)))
pct   <- function(x, acc = 0.1) ifelse(is.na(x), "--", paste0(formatC(100 * x, format = "f", digits = 1), "%"))
pct0  <- function(x) ifelse(is.na(x), "--", paste0(formatC(x, format = "f", digits = 1), "%")) # already in %
# first-visa "Student visa" group is people who first entered on a student visa
ent_lab <- function(x) ifelse(x == "Student visa", "Student visa entrants", x)

esc <- function(s) {
  s <- gsub("\\\\", "\\\\textbackslash{}", s)
  s <- gsub("([&%$#_{}])", "\\\\\\1", s)
  s <- gsub("~", "\\\\textasciitilde{}", s); s <- gsub("\\^", "\\\\textasciicircum{}", s); s
}

tbl <- function(df, cap, note = NULL, align = NULL, colnames = NULL) {
  k <- kable(df, format = "latex", booktabs = TRUE, escape = TRUE, linesep = "",
             align = align, col.names = if (is.null(colnames)) names(df) else colnames)
  paste0("\\begin{table}[H]\n\\centering\n\\caption{", esc(cap), "}\n", k, "\n",
         if (!is.null(note)) paste0("\\vspace{3pt}\n{\\footnotesize\\itshape ", esc(note), "}\n") else "",
         "\\end{table}\n")
}
fig <- function(path, cap, width = 0.8) paste0(
  "\\begin{figure}[H]\n\\centering\n\\includegraphics[width=", width,
  "\\textwidth]{", path, "}\n\\caption{", esc(cap), "}\n\\end{figure}\n")

# ---- display tables --------------------------------------------------
t1 <- res$headline %>% ungroup() %>% transmute(`First visa type` = ent_lab(First_visa_type), `Median salary` = money(Median_salary))
t2 <- res$age %>% ungroup() %>% transmute(`Age bucket` = Age_bucket, Native = money(Native), `Student visa entrants` = money(`Student visa`))
t3 <- res$deg %>% ungroup() %>% transmute(`Visa type` = ent_lab(First_visa_type), BA = money(BA), MA = money(MA), PhD = money(PhD), Prof = money(Prof))
t4 <- res$degfreq %>% ungroup() %>% transmute(Degree = MRDegType, `Native share` = pct0(nativeshare), `Student-visa-entrant share` = pct0(Visa_share))
t5 <- res$ind %>% ungroup() %>% transmute(Industry = Industry_group, Native = money(Native), `Student visa entrants` = money(`Student visa`))
t6 <- res$country %>% ungroup() %>% transmute(`Country of birth` = Country, `Median salary` = money(Median_salary), `Est. graduates` = num(total_grads))
t7 <- res$research %>% ungroup() %>% transmute(`Visa type` = ent_lab(First_visa_type), `Research (wt.)` = num(Y), `No research (wt.)` = num(N), `Research rate` = pct(Research_rate))
t8a <- res$ent_first %>% ungroup() %>% transmute(`Visa type` = ent_lab(First_visa_type), `Self-employed (wt.)` = num(Entrepreneur), `Not (wt.)` = num(`Not an entrepreneur`), `Rate` = pct(Entrepreneur_rate))
t8b <- res$ent_current %>% ungroup() %>% transmute(`First visa, current status` = sub("^Student visa,", "Student visa entrant,", status), `Self-employed (wt.)` = num(Entrepreneur), `Not (wt.)` = num(`Not an entrepreneur`), `Rate` = pct(Entrepreneur_rate))
t9 <- res$current %>% ungroup() %>% transmute(`Current citizenship status` = Current_ctzn_status, `Weighted total` = num(total))
ta <- res$ind_n %>% ungroup() %>% transmute(Industry = Industry_group, Native = num(Native), `Student visa entrants` = num(`Student visa`))
# research & federal support, cut two ways (current student visa; first-entry student visa)
nof <- function(d, grp) d$n[d$g == grp]
note_res_cur   <- paste0("Universe: full-time/full-year workers. Unweighted n: current student visa = ", comma(nof(res$n_res_cur,"Student visa")), "; all other workers = ", comma(nof(res$n_res_cur,"All other workers")), ".")
note_res_first <- paste0("Universe: full-time/full-year workers. Unweighted n: entered on student visa = ", comma(nof(res$n_res_first,"Student visa")), "; all other workers = ", comma(nof(res$n_res_first,"All other workers")), ".")
note_sup_cur   <- paste0("Agencies overlap (mark all that apply). Unweighted n: current student visa = ", comma(nof(res$n_sup_cur,"Student visa")), "; all other workers = ", comma(nof(res$n_sup_cur,"All other workers")), ".")
note_sup_first <- paste0("Agencies overlap (mark all that apply). Unweighted n: entered on student visa = ", comma(nof(res$n_sup_first,"Student visa")), "; all other workers = ", comma(nof(res$n_sup_first,"All other workers")), ".")

t_res_cur   <- res$research_cur   %>% transmute(`Research activity` = Activity, `Current student visa holders` = pct(`Student visa`), `All other workers` = pct(`All other workers`))
t_res_first <- res$research_first %>% transmute(`Research activity` = Activity, `Student visa entrants` = pct(`Student visa`), `All other workers` = pct(`All other workers`))
t_sup_cur   <- res$support_cur    %>% transmute(`Federal agency` = Agency, `Current student visa holders` = pct(`Student visa`), `All other workers` = pct(`All other workers`))
t_sup_first <- res$support_first  %>% transmute(`Federal agency` = Agency, `Student visa entrants` = pct(`Student visa`), `All other workers` = pct(`All other workers`))

# ---- assemble LaTeX --------------------------------------------------
body <- paste0(
"\\section*{Overview}\n",
"This report analyzes the labor-market outcomes of \\textbf{student-visa entrants} --- people whose first U.S.\\ visa was a student visa --- compared with \\textbf{natives}, using the 2023 National Survey of College Graduates (NSCG) public-use microdata. The research and federal-support sections additionally distinguish those who are \\emph{currently} on a student visa.\\par\n",

"\\section*{Data and definitions}\n\\begin{itemize}\n",
"\\item \\textbf{Source:} NCSES 2023 NSCG public-use file (Sept.\\ 11, 2025 release); ", nrow_note <- "94,606 respondents.\n",
"\\item \\textbf{Student visa entrants} = first U.S.\\ visa was a student visa (\\texttt{FNVSATP} code 3; n=8,577).",
" \\textbf{Native} = U.S.\\ native, no entry visa (\\texttt{FNVSATP} code L; n=69,286). Unless a section says otherwise,",
" ``student visa'' columns refer to entrants, not to those currently on a student visa.\n",
"\\item \\textbf{Working universe} (all salary tables): full-time, full-year workers --- 50+ weeks/year (\\texttt{WKSLYR}>49),",
" 35+ hours/week (\\texttt{HRSWK}>34), and non-missing salary (\\texttt{SALARY}$\\neq$9{,}999{,}998).\n",
"\\item \\textbf{Weights:} all population estimates use the survey weight \\texttt{WTSURVY}; medians are weighted",
" (\\texttt{matrixStats::weightedMedian}).\n",
"\\item \\textbf{Self-employment rate} = self-employed workers (\\texttt{EMTP} 12 or 13) as a share of \\emph{all}",
" workers in the group, i.e.\\ self-employed $\\div$ (self-employed $+$ not self-employed).\n",
"\\item \\textbf{Federal agency support:} whether the respondent's principal-job work was supported by a U.S.",
" federal agency (\\texttt{GOVSUP}) and, if so, which agencies (\\texttt{FS*}, ``mark all that apply''). Agency",
" shares overlap and need not sum to the ``any federal support'' figure.\n",
"\\item \\textbf{Basic / applied research:} whether the respondent spent at least 10\\% of a typical work week on",
" basic research (\\texttt{WABRSH}) or applied research (\\texttt{WAAPRSH}) on the principal job.\n",
"\\item \\textbf{Student-visa groupings} (research and federal-support sections): \\emph{current student visa holders} = held a",
" student/training visa on Feb.\\ 1, 2023 (\\texttt{VSATP}); \\emph{student visa entrants} = first U.S.\\ visa was a student",
" visa (\\texttt{FNVSATP}). Each is compared with all other full-time/full-year workers.\n",
"\\item \\textbf{Caveat:} the public-use file omits stratum/PSU identifiers, so these are point estimates without",
" design-based standard errors; small cells (some industries and sender countries) are noisy.\n",
"\\end{itemize}\n",

"\\section{Headline salary comparison}\n",
"Among full-time, full-year workers, student-visa entrants have a substantially higher median salary than natives.\n",
tbl(t1, "Median annual salary, full-time/full-year workers", align = c("l","r")),

"\\section{Salary by age (decade)}\n",
tbl(t2, "Median salary by age bucket", align = c("l","r","r")),

"\\section{Salary by degree level}\n",
tbl(t3, "Median salary by most-recent-degree type (BA / MA / PhD / Professional)", align = c("l","r","r","r","r")),

"\\section{Degree-level composition}\n",
"Student-visa entrants are far more concentrated in graduate degrees (MA/PhD) than natives.\n",
tbl(t4, "Distribution of most-recent-degree type, by group (weighted shares within group)", align = c("l","r","r")),

"\\section{Salary by industry}\n",
tbl(t5, "Median salary by industry group (industries with very few international graduates --- Agriculture, Military, Wholesale Trade --- are excluded, per the source script)", align = c("l","r","r")),

"\\section{Salary by country of birth}\n",
"Top ten sending countries among student-visa entrants, ranked by estimated number of graduates.\n",
tbl(t6, "Median salary and estimated graduate counts, top 10 countries of birth (student-visa entrants)", align = c("l","r","r")),

"\\section{Research activity}\n",
"Student-visa entrants are more than twice as likely as natives to have research as a primary or secondary activity on their principal job.\n",
tbl(t7, "Share whose principal-job primary or secondary activity is basic or applied research (ACTRES), weighted", align = c("l","r","r","r")),

"\\section{Basic and applied research}\n",
"Share of full-time/full-year workers who spend at least 10\\% of a typical work week on basic or applied research, shown two ways: by whether the respondent is \\emph{currently} on a student visa, and by whether their \\emph{first} U.S.\\ visa was a student visa. ``All other workers'' is everyone else (natives and other immigrants). The student-visa group leads on both measures under either definition.\n",
fig("figures/research_basic_applied.png", "Basic and applied research at the principal job (at least 10% of work time)", width = 0.98),
tbl(t_res_cur,   "Basic and applied research, by current student-visa status", note = note_res_cur, align = c("l","r","r")),
tbl(t_res_first, "Basic and applied research, by first-entry visa (whether the first U.S. visa was a student visa)", note = note_res_first, align = c("l","r","r")),

"\\section{Federal agency support}\n",
"Share of workers whose principal-job work is supported by each U.S.\\ federal agency, shown two ways: by current student-visa status and by first-entry visa. Because work can be backed by more than one agency (``mark all that apply''), the agency rows overlap and need not sum to the ``any federal support'' row.\n",
tbl(t_sup_cur,   "Federal agency support, by current student-visa status", note = note_sup_cur, align = c("l","r","r")),
tbl(t_sup_first, "Federal agency support, by first-entry visa", note = note_sup_first, align = c("l","r","r")),

"\\section{Self-employment}\n",
fig("figures/ent_by_first_visa.png", "Self-employment rate by first visa type"),
tbl(t8a, "Self-employment rate by first visa type", align = c("l","r","r","r")),
fig("figures/ent_by_first_current.png", "Self-employment rate by first and current visa/citizenship status"),
tbl(t8b, "Self-employment rate by first and current status", align = c("l","r","r","r")),

"\\section{Current status of student-visa entrants}\n",
"Where student-visa entrants (full-time/full-year) stand today, by current citizenship status.\n",
tbl(t9, "Current citizenship status of student-visa entrants (weighted)", align = c("l","r")),

"\\appendix\n\\section{Unweighted sample sizes by industry}\n",
"Raw (unweighted) record counts underlying the industry salary table, showing why several industries are dropped.\n",
tbl(ta, "Unweighted respondent counts by industry and group", align = c("l","r","r"))
)

preamble <- paste0(
"\\documentclass[11pt]{article}\n",
"\\usepackage[margin=1in]{geometry}\n\\usepackage[T1]{fontenc}\n\\usepackage{lmodern}\n",
"\\usepackage{booktabs}\n\\usepackage{graphicx}\n\\usepackage{longtable}\n\\usepackage{array}\n",
"\\usepackage{float}\n\\usepackage{caption}\n\\usepackage{xcolor}\n\\usepackage[hidelinks]{hyperref}\n",
"\\captionsetup{font=small,labelfont=bf}\n",
"\\setlength{\\parindent}{0pt}\\setlength{\\parskip}{6pt}\n",
"\\title{\\textbf{Labor-Market Outcomes of Former Student-Visa Holders}\\\\[2pt]\\large 2023 National Survey of College Graduates}\n",
"\\author{Institute for Progress}\n\\date{", run_date, "}\n")

doc <- paste0(preamble, "\\begin{document}\n\\maketitle\n\\thispagestyle{empty}\n", body, "\n\\end{document}\n")

tex_path <- file.path(OUT, "student_visa_replication.tex")
writeLines(doc, tex_path)

old <- setwd(OUT)
tinytex::latexmk("student_visa_replication.tex", engine = "pdflatex")
setwd(old)
cat("PDF written to", file.path(OUT, "student_visa_replication.pdf"), "\n")
