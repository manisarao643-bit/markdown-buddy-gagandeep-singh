<!--
AI Assistance Declaration: I used ChatGPT (GPT-6, 19 November 2026) for ideation,
documentation planning, and Markdown drafting. This appendix records the prompts used.
I will verify all generated material manually before submission and remain responsible
for the final work.
-->

# Appendix: AI Prompts and Assistance Record

## AI tool information

- **Tool:** ChatGPT
- **Model:** GPT-6
- **Date used:** 19 November 2026
- **Purpose:** Documentation planning, README organization, R Markdown organization,
  clarity improvements, and reflection drafting.

## Prompts used

### Step 1 — Understand README structure

**Seed prompt**

> Explain what sections a good GitHub README for an R data analysis project should include.

**Refinement prompt**

> Revise the sections list so it’s concise and uses Markdown headers and bullet formatting.

**Critique/validation prompt**

> Check the Markdown syntax for correctness and readability.

### Step 2 — Draft README

**Project summary supplied**

> Create a documentation example for an R project that uses only synthetic student-performance
> data. The project generates 30 records, inspects the data, calculates descriptive summaries,
> and creates a scatter plot of study hours and assessment scores. Use base R and ggplot2.

**Seed prompt**

> Here’s a summary of my R project: a reproducible R analysis using synthetic student-performance
> data, with a script that generates records, inspects variables, calculates descriptive
> summaries, and creates a scatter plot. Generate a professional README.md file using Markdown.

**Refinement prompt**

> Add sections for Installation, Example Code, and License. Keep tone concise and professional.

**Critique/validation prompt**

> Review the Markdown for syntax errors and suggest two improvements for clarity.

### Step 3 — Document one R script

**Seed prompt**

> Here’s my R script description: it generates a synthetic student dataset, checks its structure
> and missing values, calculates descriptive summaries, saves a CSV file, and creates a scatter
> plot. Suggest Markdown formatting and code block examples.

**Refinement prompt**

> Add syntax highlighting and improve section organization using headings such as Purpose,
> Inputs, Outputs, Dependencies, and Workflow.

**Critique/validation prompt**

> Is the Markdown consistent with R Markdown best practices? Identify any sections that need
> clearer explanations.

## Summary of AI-generated assistance and human responsibility

AI was used to suggest document organization and draft explanatory wording. The project topic,
synthetic-data scope, file names, and validation checklist are stated explicitly in the files.
The student must personally run the R script, inspect the generated files, independently
cross-check numerical summaries, knit the `.Rmd` file, and preview the README on GitHub.

No real or personal dataset was provided to the AI. AI-generated content is not treated as
verified simply because it was produced by a language model.

## Verification record — complete after performing the checks

| Check | Evidence to record | Status |
|---|---|---|
| Run `analysis.R` in RStudio | Note whether it runs without errors | Not yet verified |
| Check generated CSV | Confirm 30 rows and four columns | Not yet verified |
| Independent calculation check | Record spreadsheet/R cross-check result | Not yet verified |
| Knit `Documentation.Rmd` | Confirm HTML output renders correctly | Not yet verified |
| GitHub Markdown preview | Confirm README formatting | Not yet verified |
| Self/peer spot-check | Record who checked and what was reviewed | Not yet verified |

Do not change a status to complete until the corresponding check has actually been performed.
