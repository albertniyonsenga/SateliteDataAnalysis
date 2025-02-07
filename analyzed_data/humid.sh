#!/bin/bash

# Using Eswatini as the country of choice for our analyzed data
country_name="Eswatini"

# Extract all rows with "Eswatini" from the raw data and save them in the analyzed_data directory	
grep "${country_name}," ../raw_data/satelite_temperature_data.csv | sort -t, -k 4 -nr | uniq | cut -d , -f 1,2,4 > humidity_data_${country_name}.csv

echo "Eswatini data has been extracted and saved to analyzed_data/humidity_data_Eswatini.csv"
