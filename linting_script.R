# Linting Your Repo/Files ----

## Load Package ----
library(lintr)

## Linting a single file ----
### Uncomment the following line and update the file path to the file you want
### to check.

# lint(filename = "linting_script.R")

## Linting a whole directory ----
### Uncomment the following line; this will check all files in your current (project) directory.

# lint_dir(path = ".")

## Saving Lints to a File ----
### Save the results of linting to a CSV with the following:

# lint(filename = "linting_script.R") |> # or lint_dir(path = ".")
#   as.data.frame() |>
#   write.csv(file = "lint_results.csv") 

### This will place the resulting CSV in your project's root directory.
