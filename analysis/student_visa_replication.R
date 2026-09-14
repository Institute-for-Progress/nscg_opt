#!/usr/bin/env Rscript
# =====================================================================
# Replication of: github.com/co237/student_visa_analysis_nscg_2023
# "Labor market outcomes of former student-visa holders" — 2023 NSCG
#
# Reproduces every result in the source "Student visa analysis.R" and
# renders them to output/student_visa_replication.pdf.
#
# Run from the repo root:
#   Rscript analysis/student_visa_replication.R
#
# Reads the repo's own gzipped microdata (data/pcg23Public/epcg23.csv.gz).
# =====================================================================

suppressPackageStartupMessages({
  library(readr); library(dplyr); library(tidyr); library(ggplot2)
  library(scales); library(matrixStats); library(knitr); library(readxl)
})
options(dplyr.summarise.inform = FALSE)

OUT <- "output"; FIG <- file.path(OUT, "figures")
dir.create(FIG, recursive = TRUE, showWarnings = FALSE)

# ---- Load data (only the columns the analysis needs) ----------------
ct <- cols_only(
  FNVSATP = col_character(), MRDG = col_character(), CTZN = col_character(),
  EMTP = col_character(), ACTRES = col_character(),
  INDCODE = col_double(), SALARY = col_double(), WKSLYR = col_double(),
  HRSWK = col_double(), AGE = col_double(), WTSURVY = col_double(),
  BTHST_TOGA = col_double(),
  GOVSUP = col_character(), FSDOD = col_character(), FSDOE = col_character(),
  FSDED = col_character(), FSNIH = col_character(), FSHHS = col_character(),
  FSNASA = col_character(), FSNSF = col_character(), FSOT = col_character(),
  WABRSH = col_character(), WAAPRSH = col_character(),
  VSATP = col_character()
)
data_path <- "data/pcg23Public/epcg23.csv.gz"
message("Reading ", data_path, " ...")
nscg_23 <- read_csv(data_path, col_types = ct)
cat("Rows read:", nrow(nscg_23), "\n\n")

# ---- Derived variables (same mapping as the source script) ----------
nscg_23 <- nscg_23 %>%
  mutate(
    First_visa_type = case_when(
      FNVSATP == "1" ~ "Green card",   FNVSATP == "2" ~ "Work visa",
      FNVSATP == "3" ~ "Student visa", FNVSATP == "4" ~ "Dependent visa",
      FNVSATP == "5" ~ "Other temp",   FNVSATP == "E" ~ "Error",
      FNVSATP == "L" ~ "Native",       FNVSATP == "M" ~ "Missing"),
    MRDegType = case_when(
      MRDG == "1" ~ "BA", MRDG == "2" ~ "MA", MRDG == "3" ~ "PhD", MRDG == "4" ~ "Prof"),
    Current_ctzn_status = case_when(
      CTZN == "1" ~ "native", CTZN == "2" ~ "naturalized",
      CTZN == "3" ~ "green card", CTZN == "4" ~ "temporary"),
    Entrepreneur = ifelse(EMTP == "12" | EMTP == "13", "Entrepreneur", "Not an entrepreneur"),
    Industry_group = case_when(
      INDCODE > 0    & INDCODE < 491  ~ "Agriculture",
      INDCODE > 1069 & INDCODE < 3991 ~ "Manufacturing",
      INDCODE > 4069 & INDCODE < 4591 ~ "Wholesale Trade",
      INDCODE > 4669 & INDCODE < 5791 ~ "Retail Trade",
      (INDCODE > 6069 & INDCODE < 6391) | (INDCODE > 569 & INDCODE < 691) ~ "Trans/WH, Util",
      INDCODE > 6469 & INDCODE < 6781 ~ "Information",
      INDCODE > 6869 & INDCODE < 7191 ~ "FIRE",
      INDCODE > 7269 & INDCODE < 7791 ~ "Prof services",
      INDCODE > 7859 & INDCODE < 8471 ~ "Ed and HC",
      INDCODE > 8560 & INDCODE < 8691 ~ "Accom & Food",
      INDCODE > 8769 & INDCODE < 9291 ~ "Other Services",
      INDCODE > 9369 & INDCODE < 9591 ~ "Public Admin",
      INDCODE == 9890 ~ "Military",
      INDCODE > 9892  ~ "NA/Missing"))

# Diagnostics: confirm the categorical mappings landed
cat("FNVSATP raw values:\n"); print(table(nscg_23$FNVSATP, useNA = "ifany"))
cat("\nFirst_visa_type:\n"); print(table(nscg_23$First_visa_type, useNA = "ifany"))
cat("\n")

# Full-time / full-year working universe used throughout the source script
ft_fy <- function(d) dplyr::filter(d, SALARY != 9999998, WKSLYR > 49, HRSWK > 34)
wmed  <- function(x, w) matrixStats::weightedMedian(x, w = w, na.rm = TRUE)

res <- list()  # collect results for the report

# ---- R1. Headline salary comparison ---------------------------------
res$headline <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native")) %>% ft_fy() %>%
  group_by(First_visa_type) %>%
  summarise(Median_salary = wmed(SALARY, WTSURVY))
cat("== R1 Headline median salary ==\n"); print(res$headline)

# ---- R2. Salary by age bucket (decade) ------------------------------
res$age <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native")) %>% ft_fy() %>%
  mutate(Age_bucket = case_when(
    AGE < 30 ~ "20s", AGE >= 30 & AGE < 40 ~ "30s", AGE >= 40 & AGE < 50 ~ "40s",
    AGE >= 50 & AGE < 60 ~ "50s", AGE >= 60 ~ "60+")) %>%
  group_by(Age_bucket, First_visa_type) %>%
  summarise(Median_salary = wmed(SALARY, WTSURVY)) %>%
  pivot_wider(names_from = First_visa_type, values_from = Median_salary) %>%
  arrange(factor(Age_bucket, levels = c("20s","30s","40s","50s","60+")))
cat("\n== R2 Salary by age bucket ==\n"); print(res$age)

# ---- R3. Salary by degree level -------------------------------------
res$deg <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native")) %>% ft_fy() %>%
  group_by(First_visa_type, MRDegType) %>%
  summarise(Median_salary = wmed(SALARY, WTSURVY)) %>%
  pivot_wider(names_from = MRDegType, values_from = Median_salary) %>%
  select(First_visa_type, any_of(c("BA","MA","PhD","Prof")))
cat("\n== R3 Salary by degree level ==\n"); print(res$deg)

# ---- R4. Degree-level frequency (weighted shares) -------------------
res$degfreq <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native"), WKSLYR > 49, HRSWK > 34) %>%
  group_by(MRDegType, First_visa_type) %>%
  summarise(total = sum(WTSURVY)) %>%
  pivot_wider(names_from = First_visa_type, values_from = total) %>%
  ungroup() %>%
  filter(!is.na(MRDegType)) %>%
  mutate(nativeshare = Native / sum(Native) * 100,
         Visa_share  = `Student visa` / sum(`Student visa`) * 100) %>%
  select(MRDegType, nativeshare, Visa_share) %>%
  arrange(factor(MRDegType, levels = c("BA","MA","PhD","Prof")))
cat("\n== R4 Degree-level frequency shares ==\n"); print(res$degfreq)

# ---- R5. Salary by industry (transposed for readability) ------------
res$ind <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native"),
         Industry_group != "NA/Missing") %>% ft_fy() %>%
  group_by(First_visa_type, Industry_group) %>%
  summarise(Median_salary = wmed(SALARY, WTSURVY)) %>%
  filter(!Industry_group %in% c("Agriculture","Military","Wholesale Trade")) %>%
  pivot_wider(names_from = First_visa_type, values_from = Median_salary) %>%
  arrange(desc(`Student visa`))
cat("\n== R5 Salary by industry ==\n"); print(res$ind)

# ---- R6. Salary by country of birth (top 10 senders) ----------------
country_raw <- nscg_23 %>%
  filter(First_visa_type == "Student visa", BTHST_TOGA > 99) %>% ft_fy() %>%
  group_by(BTHST_TOGA) %>%
  summarise(Median_salary = wmed(SALARY, WTSURVY), total_grads = sum(WTSURVY)) %>%
  arrange(desc(total_grads)) %>% slice_head(n = 10)

# label the TOGA codes (3-digit code -> geographic label)
country_lab <- tryCatch({
  xw <- readxl::read_excel("data/pcg23Public/TOGA_crosswalk_NSCG23_20250116.xlsx", sheet = 1)
  m <- xw[, 3:4]; names(m) <- c("code","label")
  m %>% filter(grepl("^[0-9]+$", code)) %>%
    transmute(BTHST_TOGA = as.numeric(code), Country = label) %>%
    distinct(BTHST_TOGA, .keep_all = TRUE)
}, error = function(e) { message("crosswalk join skipped: ", conditionMessage(e)); NULL })

res$country <- if (!is.null(country_lab)) {
  country_raw %>% left_join(country_lab, by = "BTHST_TOGA") %>%
    mutate(Country = ifelse(is.na(Country), paste0("TOGA ", BTHST_TOGA), Country)) %>%
    select(Country, BTHST_TOGA, Median_salary, total_grads)
} else country_raw
cat("\n== R6 Salary by country of birth (top 10) ==\n"); print(res$country)

# ---- R7. Research activity at principal job -------------------------
res$research <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native"), ACTRES != "L") %>%
  filter(WKSLYR > 49, HRSWK > 34) %>%
  group_by(First_visa_type, ACTRES) %>%
  summarise(total = sum(WTSURVY)) %>%
  pivot_wider(names_from = ACTRES, values_from = total) %>%
  mutate(Research_rate = Y / (Y + N)) %>%
  select(First_visa_type, N, Y, Research_rate)
cat("\n== R7 Research rate ==\n"); print(res$research)

# ---- R7b/R7c. Research & federal support, by TWO visa definitions ---
# Two ways of defining "student visa", over ALL full-time/full-year workers:
#   cur_student   : currently on a student visa on Feb 1, 2023 (VSATP == 2, "for study/training")
#   first_student : first U.S. visa was a student visa (FNVSATP == 3)
# "All other workers" = everyone else (natives and other immigrants).
base_ff <- nscg_23 %>%
  filter(WKSLYR > 49, HRSWK > 34) %>%
  mutate(cur_student   = ifelse(VSATP   == "2", "Student visa", "All other workers"),
         first_student = ifelse(FNVSATP == "3", "Student visa", "All other workers"))

research_wide <- function(df, gv) {
  df %>% filter(WABRSH %in% c("Y", "N")) %>%
    group_by(grp = .data[[gv]]) %>%
    summarise(`Basic research`   = weighted.mean(WABRSH  == "Y", WTSURVY),
              `Applied research` = weighted.mean(WAAPRSH == "Y", WTSURVY), .groups = "drop") %>%
    pivot_longer(-grp, names_to = "Activity", values_to = "rate") %>%
    pivot_wider(names_from = grp, values_from = rate) %>%
    arrange(match(Activity, c("Basic research", "Applied research"))) %>%
    select(Activity, `Student visa`, `All other workers`)
}
support_wide <- function(df, gv) {
  df %>% filter(GOVSUP %in% c("Y", "N")) %>%
    group_by(grp = .data[[gv]]) %>%
    summarise(
      `Any federal support` = weighted.mean(GOVSUP == "Y", WTSURVY),
      `Defense (DOD)`       = weighted.mean(FSDOD  == "Y", WTSURVY),
      `Energy (DOE)`        = weighted.mean(FSDOE  == "Y", WTSURVY),
      `Education`           = weighted.mean(FSDED  == "Y", WTSURVY),
      `NIH`                 = weighted.mean(FSNIH  == "Y", WTSURVY),
      `HHS (excl. NIH)`     = weighted.mean(FSHHS  == "Y", WTSURVY),
      `NASA`                = weighted.mean(FSNASA == "Y", WTSURVY),
      `NSF`                 = weighted.mean(FSNSF  == "Y", WTSURVY),
      `Other agency`        = weighted.mean(FSOT   == "Y", WTSURVY),
      .groups = "drop") %>%
    pivot_longer(-grp, names_to = "Agency", values_to = "rate") %>%
    pivot_wider(names_from = grp, values_from = rate)
}

res$research_cur   <- research_wide(base_ff, "cur_student")
res$research_first <- research_wide(base_ff, "first_student")
res$support_cur    <- support_wide(base_ff, "cur_student")
res$support_first  <- support_wide(base_ff, "first_student")

# order agencies: "Any federal support" first, then by first-entry student rate desc
agency_order <- res$support_first %>% filter(Agency != "Any federal support") %>%
  arrange(desc(`Student visa`)) %>% pull(Agency)
ord <- c("Any federal support", agency_order)
res$support_cur   <- res$support_cur   %>% arrange(match(Agency, ord)) %>% select(Agency, `Student visa`, `All other workers`)
res$support_first <- res$support_first %>% arrange(match(Agency, ord)) %>% select(Agency, `Student visa`, `All other workers`)

# unweighted group sizes (for footnotes)
res$n_res_cur   <- base_ff %>% filter(WABRSH %in% c("Y","N")) %>% dplyr::count(cur_student)   %>% rename(g = cur_student)
res$n_res_first <- base_ff %>% filter(WABRSH %in% c("Y","N")) %>% dplyr::count(first_student) %>% rename(g = first_student)
res$n_sup_cur   <- base_ff %>% filter(GOVSUP %in% c("Y","N")) %>% dplyr::count(cur_student)   %>% rename(g = cur_student)
res$n_sup_first <- base_ff %>% filter(GOVSUP %in% c("Y","N")) %>% dplyr::count(first_student) %>% rename(g = first_student)

cat("\n== R7b Basic/applied research — by current visa ==\n");    print(res$research_cur)
cat("== R7b Basic/applied research — by first-entry visa ==\n");  print(res$research_first)
cat("\n== R7c Federal support — by current visa ==\n");           print(res$support_cur)
cat("== R7c Federal support — by first-entry visa ==\n");         print(res$support_first)
cat("\ngroup sizes (unweighted):\n")
print(res$n_res_cur); print(res$n_res_first); print(res$n_sup_cur); print(res$n_sup_first)

# Chart: basic/applied research, faceted by the two definitions
research_long <- function(df, gv, studlab, deflab) {
  df %>% filter(WABRSH %in% c("Y", "N")) %>%
    group_by(grp = .data[[gv]]) %>%
    summarise(`Basic research`   = weighted.mean(WABRSH  == "Y", WTSURVY),
              `Applied research` = weighted.mean(WAAPRSH == "Y", WTSURVY), .groups = "drop") %>%
    pivot_longer(-grp, names_to = "Activity", values_to = "rate") %>%
    mutate(group = ifelse(grp == "Student visa", studlab, "All other\nworkers"),
           definition = deflab)
}
res$research_chart <- bind_rows(
  research_long(base_ff, "cur_student",   "Current student-\nvisa holders", "By current visa status"),
  research_long(base_ff, "first_student", "Student visa\nentrants",         "By first (entry) visa"))

# x-axis names the specific group in each panel; fill legend = activity (unambiguous)
grp_levels <- c("Current student-\nvisa holders", "Student visa\nentrants", "All other\nworkers")
p_res <- res$research_chart %>%
  mutate(Activity = factor(Activity, levels = c("Basic research", "Applied research")),
         group = factor(group, levels = grp_levels)) %>%
  ggplot(aes(x = group, y = rate, fill = Activity)) +
  geom_col(position = position_dodge(0.7), width = 0.65) +
  geom_text(aes(label = percent(rate, accuracy = 0.1)),
            position = position_dodge(0.7), vjust = -0.4, size = 3) +
  facet_wrap(~definition, scales = "free_x") +
  scale_y_continuous(labels = percent_format(), expand = expansion(mult = c(0, 0.14))) +
  scale_fill_manual(values = c("Basic research" = "#2c6e9e", "Applied research" = "#9ec4e0")) +
  labs(y = "Share of workers", x = NULL, fill = NULL,
       title = "Basic and applied research at principal job (at least 10% of work time)") +
  theme_minimal(base_size = 12) + theme(legend.position = "top")
ggsave(file.path(FIG, "research_basic_applied.png"), p_res, width = 8, height = 4.3, dpi = 150)

# ---- R8. Entrepreneur (self-employment) rates + charts --------------
ent1 <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native"), WKSLYR > 49, HRSWK > 34) %>%
  group_by(First_visa_type, Entrepreneur) %>%
  summarize(People = sum(WTSURVY)) %>%
  pivot_wider(names_from = Entrepreneur, values_from = People) %>%
  mutate(Entrepreneur_rate = Entrepreneur / (Entrepreneur + `Not an entrepreneur`))
res$ent_first <- ent1
cat("\n== R8a Self-employment rate by first visa type ==\n"); print(ent1)

p1 <- ent1 %>%
  mutate(First_visa_type = ifelse(First_visa_type == "Student visa", "Student visa entrants", First_visa_type)) %>%
  ggplot(aes(x = First_visa_type, y = Entrepreneur_rate)) +
  geom_col(fill = "#2c6e9e", width = 0.6) +
  scale_y_continuous(labels = percent_format()) +
  geom_text(aes(label = percent(Entrepreneur_rate, accuracy = 0.1)), vjust = -0.5, size = 4.5) +
  coord_cartesian(ylim = c(0, .25)) +
  labs(y = "Self-employment rate", x = "First U.S. visa",
       title = "Self-employment rate by first visa type") +
  theme_minimal(base_size = 13)
ggsave(file.path(FIG, "ent_by_first_visa.png"), p1, width = 6.5, height = 4, dpi = 150)

ent2 <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native"), WKSLYR > 49, HRSWK > 34) %>%
  group_by(First_visa_type, Entrepreneur, Current_ctzn_status) %>%
  summarize(People = sum(WTSURVY)) %>%
  pivot_wider(names_from = Entrepreneur, values_from = People) %>%
  mutate(Entrepreneur_rate = Entrepreneur / (Entrepreneur + `Not an entrepreneur`)) %>%
  filter((First_visa_type == "Native" & Current_ctzn_status == "native") |
         (First_visa_type == "Student visa" & Current_ctzn_status != "native")) %>%
  mutate(status = paste(First_visa_type, Current_ctzn_status, sep = ", "))
res$ent_current <- ent2 %>% select(status, Entrepreneur, `Not an entrepreneur`, Entrepreneur_rate)
cat("\n== R8b Self-employment rate by first & current status ==\n"); print(res$ent_current)

p2 <- ent2 %>%
  mutate(status = sub("^Student visa,", "Student visa entrant,", status)) %>%
  ggplot(aes(x = status, y = Entrepreneur_rate)) +
  geom_col(fill = "#2c6e9e", width = 0.6) +
  scale_y_continuous(labels = percent_format()) +
  geom_text(aes(label = percent(Entrepreneur_rate, accuracy = 0.1)), vjust = -0.5, size = 4.5) +
  coord_cartesian(ylim = c(0, .25)) +
  labs(y = "Self-employment rate", x = "First visa, current citizenship status",
       title = "Self-employment rate by first and current visa type") +
  theme_minimal(base_size = 13) +
  theme(axis.text.x = element_text(angle = 15, hjust = 1))
ggsave(file.path(FIG, "ent_by_first_current.png"), p2, width = 7, height = 4.2, dpi = 150)

# ---- R9. Current status of student-visa arrivals --------------------
res$current <- nscg_23 %>%
  filter(First_visa_type == "Student visa", WKSLYR > 49, HRSWK > 34) %>%
  group_by(Current_ctzn_status) %>%
  summarise(total = sum(WTSURVY)) %>%
  filter(!is.na(Current_ctzn_status)) %>%
  arrange(desc(total))
cat("\n== R9 Current status of student-visa arrivals ==\n"); print(res$current)

# ---- Appendix: unweighted sample sizes by industry ------------------
res$ind_n <- nscg_23 %>%
  filter(First_visa_type %in% c("Student visa", "Native"),
         Industry_group != "NA/Missing") %>% ft_fy() %>%
  group_by(First_visa_type, Industry_group) %>%
  summarise(n = n()) %>%
  pivot_wider(names_from = First_visa_type, values_from = n) %>%
  arrange(desc(`Student visa`))
cat("\n== Appendix: unweighted n by industry ==\n"); print(res$ind_n)

saveRDS(res, file.path(OUT, "student_visa_results.rds"))
cat("\nAll results computed and saved to output/student_visa_results.rds\n")
