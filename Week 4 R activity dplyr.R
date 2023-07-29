#Week 4: dplyr package

#Task: Write the code to get a dataset from Base R: ChickWeight
#and save it as a dataframe with a new name that includes your first name

TejoSaiKrishnaCW <- ChickWeight
#See the top rows of the data
#TASK: Write the code to see the top rows of the data
head(TejoSaiKrishnaCW)

#Install and call the package dplyr
#TASK: Write the code to install and call dplyr
install.packages("dplyr")
library(dplyr)


#Let's just see the weight and Time columns
#Task: Write the code to 'select' just the weight and Time columns 
#(hint: use the 'select' function)
select(TejoSaiKrishnaCW, weight, Time)
#Let's name the dataset with just the two columns, weight and Time
#TASK: Write the code to save the two columns as a new dataframe
#and give it a new name
my_new_data <- select(TejoSaiKrishnaCW, weight, Time)

#Let's get rid of the Time column in the new dataframe created above
#TASK: Write the code that deselects the Time column
#(hint: use the 'select' function to not select a -column)
my_new_data <- select(my_new_data, -Time)

#Let's rename a column name
#TASK: Write the code that renames 'weight' to 'ounces'

TejoSaiKrishnaCW <- rename(TejoSaiKrishnaCW, ounces = weight)
#Let's make a new dataframe with the new column name
#TASK: Write the code that names a new dataframe that includes the 'ounces' column
TejoSaiKrishnaCW

#Let's 'filter' our dataframe to only those with a 1 in the Chick column
#TASK: Write the code that includes only rows where Chick = 1
my_filtered_data <- filter(TejoSaiKrishnaCW, Chick == 1)

#Let's 'group' our data by Diet
#TASK: Write the code to group the data by Diet (hint: group_by)

my_grouped_data <- group_by(TejoSaiKrishnaCW, Diet)
#Task: add one of the other codes (not in the tasks above) 
#you learned about from the dplyr package
my_summarized_data <- summarise(my_grouped_data, 
                                avg_ounces = mean(ounces))

# Print the summarized data
print(my_summarized_data)
