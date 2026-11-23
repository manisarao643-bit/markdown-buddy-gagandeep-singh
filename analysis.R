# AI Assistance Declaration:
# I used ChatGPT (GPT-6, 19 November 2026) for planning and drafting suggestions.
# Prompts and disclosure are recorded in Appendix.md. I will run and verify this script
# in RStudio, independently check its outputs, and take responsibility for all results.
#
# Project: Synthetic Student Performance Analysis
# Purpose: Generate synthetic records, summarize them, and create a scatter plot.
# Data: Synthetic only; no real or personal student information is used.

# 1. Setup ------------------------------------------------------------------

required_package <- "ggplot2"

if (!requireNamespace(required_package, quietly = TRUE)) {
  install.packages(required_package)
}

library(ggplot2)

set.seed(400)

# 2. Generate synthetic data -------------------------------------------------

n_students <- 30

student_data <- data.frame(
  student_id = seq_len(n_students),
  study_hours = round(runif(n_students, min = 1, max = 10), 1),
  attendance_rate = round(runif(n_students, min = 60, max = 100), 1)
)

# Generate a score using a simple illustrative relationship plus random noise.
# Scores are bounded between 0 and 100.
student_data$score <- round(
  pmin(100, pmax(0,
    35 + 5.5 * student_data$study_hours +
      0.25 * (student_data$attendance_rate - 60) +
      rnorm(n_students, mean = 0, sd = 8)
  )),
  1
)

# Keep the columns in the documented order.
student_data <- student_data[
  c("student_id", "study_hours", "score", "attendance_rate")
]

# 3. Inspect the dataset -----------------------------------------------------

cat("Dataset structure:\n")
str(student_data)

cat("\nFirst six records:\n")
print(head(student_data))

cat("\nMissing values by column:\n")
print(colSums(is.na(student_data)))

# 4. Calculate descriptive summaries ---------------------------------------

cat("\nDescriptive summary:\n")
print(summary(student_data))

cat("\nMean study hours:\n")
print(mean(student_data$study_hours))

cat("\nMean assessment score:\n")
print(mean(student_data$score))

cat("\nCorrelation between study hours and score:\n")
print(cor(student_data$study_hours, student_data$score))

# 5. Create output directory and save data ----------------------------------

if (!dir.exists("output")) {
  dir.create("output")
}

write.csv(
  student_data,
  file = file.path("output", "synthetic_student_data.csv"),
  row.names = FALSE
)

# 6. Visualize the relationship ---------------------------------------------

score_plot <- ggplot(
  student_data,
  aes(x = study_hours, y = score)
) +
  geom_point(size = 2.5, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, color = "steelblue") +
  labs(
    title = "Study Hours and Assessment Scores",
    subtitle = "Synthetic data generated for documentation practice",
    x = "Study hours",
    y = "Assessment score"
  ) +
  theme_minimal()

print(score_plot)

ggsave(
  filename = file.path("output", "study_hours_vs_score.png"),
  plot = score_plot,
  width = 7,
  height = 5,
  dpi = 300
)

cat("\nAnalysis complete. Check the output/ folder for the CSV and PNG files.\n")
