# Satelite Data Analysis

In this repository, we aim to use our Linux skills to extract insights from the vast amounts of satellite data collected to help an AI-based firm that utilizes satellite data to
predict weather changes, providing Africa with valuable insights and solutions to optimize
agricultural practices.

## Top 10 Highest Temperatures

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

## Entire Data of Country - Eswatini
For the task, we were required to analyze data of our country of choice by extracting the entire data of that country and then saving its result in descending order of humidity and then saving the output in the new country and using a variable `country_name` to represent the selected country. Let's get our explain how we achieved that automation using our Linux and shell scripts:

- First, we have declared `country_name` so that we will be able to assign any country of our choice, and as our choice, we used `Eswatini.`
- Secondly, we want to make sure we can get the country without becoming dirty with the dataset, so we used `grep "${country_name},"` so that we can able to search for the right content followed by country name in our dataset file, and then we added the path of our file,
  > The reason we followed our variable by *,* is that content in CSV files are separated by a comma and making like that we are sure that we will be looking for the contents which follow our country name.

And here it's `../raw_data/satelite_temperature_data.csv`; so why `..`? As our file is in a sub-directory, we have to specify where our scripts will look for the dataset, and by using `..`, we specify that it's located in the parental directory and then add the sub-directory and then file.
- So far, we also need to extract the humidity data based on the data sorted and then order them in descending order, so we used `sort -t, -k 4 -nr`, where we clarified that we must get data in `column 4` where we got humidity data and then `-nr` to get them in reverse order(Highest to lowest) and then we added `uniq` to remove duplicated lines.
- We then extracted other sections to make the new file of analyzed data look more informative where we used `cut -d, -f 1,2,4` by 1, we mean country, by 2, we mean `month` that temperature took place, and our very own `humidity` all from the sorted lines.
- Finally, we have to print all the sorted data to the new file to make it easy to get data. Here, we used commands `> analyzed_data/humidity_data_${country_name}.csv` so that we are sure that the data will be saved into `humidity_data_${country_name}.csv` in the `analyzed_data` directory. By using a country variable to name the new file, we can be sure we saved the time to keep naming when we changed the country during analysis.

