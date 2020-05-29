#!/bin/bash

# In this project, we worked with datasets on U.S. housing affordability from the U.S. Department of Housing & Urban Development to do data munging using the command line to make them easier to work with.


# List all of the files in the current directory (the home directory), including the file names, permissions, formats, and sizes.

ls -l

# Use the head command to display the first 10 rows of each of the 3 CSV files.

head Hud_2005.csv
head Hud_2007.csv
head Hud_2013.csv

# - Create the file `combined_hud.csv` and append the header row from one of the datasets.
# - Select all non-header rows from `Hud_2005.csv` and append to `combined_hud.csv`.
# - Display the first 10 rows in `combined_hud.csv` to verify your work.

head -1 Hud_2005.csv > combined_hud.csv
wc -l Hud_2005.csv
tail -46853 Hud_2005.csv >> combined_hud.csv
head combined_hud.csv

# - Append the remaining datasets in the order of the years they describe.
#     - Select all non-header rows from `Hud_2007.csv` and append to `combined_hud.csv`.
#     - Select all non-header rows from `Hud_2013.csv` and append to `combined_hud.csv`.
# - Display the last 10 rows of `combined_hud.csv` and verify that they match the last 10 rows of `Hud_2013.csv`.

wc -l Hud_2007.csv
tail -42729 Hud_2007.csv >> combined_hud.csv
wc -l Hud_2013.csv
tail -64535 Hud_2013.csv >> combined_hud.csv

# Count and display the number of lines in `combined_hud.csv` containing `1980-1989`.

grep '1980-1989' combined_hud.csv | wc -l
