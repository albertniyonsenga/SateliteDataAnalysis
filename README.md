# Satelite Data Analysis

In this repository, we aim to use our Linux skills to extract insights from the vast amounts of satellite data collected to help an AI-based firm that utilizes satellite data to
predict weather changes, providing Africa with valuable insights and solutions to optimize
agricultural practices.

## Task 1

This is how we did this part of the assignment:
pwd: check the current working directory
vi top10_temp.sh: created a file named top10_temps.sh to write the script for extraction of the top 10 temperatures
i: to permit us to insert the text
#!/bin/bash: tells the system to use the bash shell to interpret the script


> highest_temp.csv:  redirects and overwrites the result into highest_temp.csv, which wasn't the existing
echo "Top 10 highest temperatures have been saved to highest_temp.csv."
Displays a message to confirm that the file has been successfully created.
wq: write and quit 
chmod +x: executes the top10_temps.sh file
./top10_temps.sh: runs the file
ls: checks if the file highest_temps.csv exists
cat highest_temp.csv: checks whether the result was written in the file
chmod +x highest_temp.csv: gives the file execute permissions
mv highest_temp.csv analyzed_data: moved the file to the analyzed_data directory since that's what was required by the question
cd analyzed_data/: changed directory to the analyzed data where the required file was supposed to be created
ls: lists all the files in the analyzed data directory for confirmation if the file has been added and contains the required information
git add . : adds the files to the git hub
git commit -m “Update all”: commits the files in the git hub
git push: pushes the files to the main branch in git hub

## Task 2

