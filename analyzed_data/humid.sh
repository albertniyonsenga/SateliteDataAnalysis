#!/bin/bash

# Extract all rows with "Eswatini" from the raw data and save them in the analyzed_data directory
grep "Eswatini" ../raw_data/satelite_temperature_data.csv > humidity_data_Eswatini.csv

echo "Eswatini data has been extracted and saved to analyzed_data/humidity_data_Eswatini.csv"

