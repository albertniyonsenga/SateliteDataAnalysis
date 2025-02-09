<div align="center">
  <h1>Satelite Data Analysis 🛰️</h1>
</div>

In this repository, we aim to use our Linux skills to extract insights from the vast amounts of satellite data collected to help an AI-based firm that utilizes satellite data to
predict weather changes, providing Africa with valuable insights and solutions to optimize
agricultural practices.

## Top 10 Highest Temperatures
For this part of the assignment, we were required to extract the Top 10 highest temperatures from the dataset; here is a detailed description of how  we did that using shell scripts and Linux skills:

- The first priority is the shebang line, where we must specify the bash interpreter.
- then we start with `tail -n +2 ../raw_data/satelite_temperature_data.csv`, where the `tail` command displays the file's last lines, `-n +2` to displays the file's content by excluding line 1 from our dataset file and then specify file path by using `..`, we specify that it's located in the parental directory and then add the sub-directory and then file.
- then we sort the displayed content by `sort -t, -k 3 -nr`, where we clarified that we must get data in `column 3`, which is  temperature data, and then `-nr` to get them in reverse order where we will start from Highest to lowest. Then, we added `uniq` to remove any duplicates that could arise.
- To make sure we will only get the **top 10**, we used `head -n 10`; we used `-n` as a modern and preferable approach for lines.
- We then extracted other sections to make the new file of analyzed data look more informative. Where we used `cut -d, -f 1,2,3` by 1, 2, and 3,. We mean `country`, `month` and `temperature ` respectively from the sorted lines.
- we used commands `> highest_temp.csv` so that we are sure that the data will be saved into `humidity_data_${country_name}.csv` in the current directory, and in our case, it's `analyzed_data`. By using a country variable to name the new file, we can be sure we saved the time to keep naming when we changed the country during analysis.

After using shell scripts and Linux skills, we can easily get the top 10 highest temperatures in [Top 10 Highest temperatures](analyzed_data/highest_temp.csv).


## Humidity Data - Eswatini
For this task, we were required to analyze data of our country of choice by extracting the entire data of that country and then saving its result in descending order of humidity and then saving the output in the new country and using a variable `country_name` to represent the selected country. Let's get our explain how we achieved that automation using our Linux and shell scripts:

- First, after adding the `shebang line,` we declared `country_name` so that we would be able to assign any country of our choice, and as our choice, we used `Eswatini.`
- Secondly, we want to make sure we can get the country without becoming dirty with the dataset, so we used `grep "${country_name},"` so that we can able to search for the right content followed by country name in our dataset file, and then we added the path of our file,
  > The reason we followed our variable by *,* is a comma separates that content in CSV files, and by making it like that, we are sure that we will be looking for the contents that follow our country name.

And here it's `../raw_data/satelite_temperature_data.csv`; so why `..`? As our file is in a sub-directory, we have to specify where our scripts will look for the dataset, and by using `..`, we specify that it's located in the parental directory and then add the sub-directory and then file.
- So far, we also need to extract the humidity data based on the data sorted and then order them in descending order, so we used `sort -t, -k 4 -nr`, where we clarified that we must get data in `column 4` where we got humidity data and then `-nr` to get them in reverse order(Highest to lowest) and then we added `uniq` to remove duplicated lines.
- We then extracted other sections to make the new file of analyzed data look more informative where we used `cut -d, -f 1,2,4` by 1, we mean country, by 2, we mean `month` that temperature took place, and our very own `humidity` all from the sorted lines.
- Finally, we have to print all the sorted data to the new file to make it easy to get data. Here, we used commands `> humidity_data_${country_name}.csv` so that we are sure that the data will be saved into `humidity_data_${country_name}.csv` in the `analyzed_data` in our current directory. By using a country variable to name the new file, we can be sure we saved the time to keep naming when we changed the country during analysis.

Here is the result ➡️ [Eswatini Humidity analysis](analyzed_data/highest_data_Eswatini.csv).


## Contributors 💻

Thanks to  the **Group 31** members who have made this `Coding lab` possible, we hope that with your Linux skills, anyone can now extract insights from the vast amounts of satellite data collected to predict weather changes across Africa.

- [AdolehSamuel](https://github.com/AdolehSamuel)
- [Amazing-beep](https://github.com/Amazing-beep)
- [Divine-kuzo](https://github.com/Divine-kuzo)
- [rachealA924](https://github.com/rachealA924)
- [Divine-kuzo](https://github.com/Divine-kuzo)
- [albertniyonsenga](https://github.com/albertniyonsenga)

Your contributions are highly appreciated 🎉. 



