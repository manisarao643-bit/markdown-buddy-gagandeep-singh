<!--
AI Assistance Declaration: I used ChatGPT (GPT-6, 19 November 2026) to organize and
draft reflection points. Prompts are recorded in Appendix.md. I will revise these
responses to reflect the work I personally completed and the checks I actually performed.
-->

# Reflection

*Note: The assignment handout requires responses to three reflection questions but does not
print the exact question wording. The three responses below address the assignment's stated
reflection themes. If the instructor supplied exact questions separately, align these
answers with that wording before submission.*

## 1. How did AI assist you in creating the project documentation?

AI helped me plan the structure of the README and the R Markdown document. It suggested
common documentation sections such as the project overview, requirements, installation,
example usage, data description, outputs, and license. It also helped organize the script
documentation into purpose, inputs, outputs, dependencies, workflow, and validation.

The main benefit was saving time on the initial organization and improving the consistency
of headings and explanations. I still need to run the R script and review the rendered files
because generated documentation can describe code incorrectly if the code changes.

## 2. What are the strengths and weaknesses of using AI for documentation?

A major strength of AI is that it can quickly propose a clear document outline, improve
sentence clarity, and identify sections that readers may expect in a project README. It can
also suggest consistent Markdown formatting and examples.

However, AI can make assumptions about a project, include details that have not been tested,
or produce code and explanations that do not match. It cannot replace running the script,
checking the outputs, or understanding the analysis. For this reason, AI suggestions should
be treated as drafts and checked against the actual project.

## 3. How did you validate the AI-assisted work and use AI ethically?

I used synthetic data rather than real or personal records. I disclosed the AI tool, date,
and prompts in the project files and Appendix. The analysis script uses a fixed random seed
to support reproducibility.

Before submission, I must run the script in RStudio, inspect the generated CSV and plot,
independently check summary calculations using R or a spreadsheet, and knit the R Markdown
file. I must also preview the README on GitHub. These checks help identify errors that may
not be obvious from reading the draft. I remain responsible for the accuracy, originality,
and final submission.
