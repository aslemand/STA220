# Hello :)
# We will use Hashtag symbol for making comments 
# prior to running R line of codes.
# Note that R is case sensitive.

# Install the package "tidyverse"
# We will do this once
# install.packages("tidyverse")

# Open the library "tidyverse" to access cool functions
library(tidyverse)

# Get variable names in the data 
names(Water)

# Find the structure of variables in this data frame
str(Water)

# Look at top rows of data (default is 6 rows)
head(Water)

# Look ar bottom rows of data (default is 6 rows)
tail(Water)

# Re-label levels of the categorical variable "Highest Level of Education"
# We will use the $ sign to call a specific variable in the data frame
Water$Highest_Education_Level[Water$Highest_Education_Level == "1"] <- "Highschool or Less"
Water$Highest_Education_Level[Water$Highest_Education_Level == "2"] <- "Some Post-secondary"
Water$Highest_Education_Level[Water$Highest_Education_Level == "3"] <- "University"

# Re-label levels of the categorical variable "Primary Type of Drinking Water"
# We will use the $ sign to call a specific variable in the data frame
Water$Water_Drinking_Type[Water$Water_Drinking_Type == "1"] <- "Tap Water"
Water$Water_Drinking_Type[Water$Water_Drinking_Type == "2"] <- "Bottled Watter"
Water$Water_Drinking_Type[Water$Water_Drinking_Type == "3"] <- "Both"

# Attach the data frame to use each variable name directly in the analysis
attach(Water)

# Obtain a frequency distribution table of the variable
# Highest level of education
table(Highest_Education_Level)

# Add margins to the frequency distribution table
addmargins(table(Highest_Education_Level))

# Obtain relative frequencies (proportions)
prop.table(table(Highest_Education_Level))

# Add margins to the relative frequency distribution table
addmargins(prop.table(table(Highest_Education_Level)))

# Display a bar plot of Highest Level of Education
barplot(table(Highest_Education_Level),
        # Give title to the plot
        main = "Bar Plot of Highest Level of Education of Respondents",
        # Label the y-axis to denote frequency of responses
        ylab = "Frequency",
        # Color each level of the categorical variable
        col = rainbow(3))

# Display a pie chart of Highest Level of Education
pie(table(Highest_Education_Level),
    # Give title to the plot
    main = "Pie Chart of Highest Level of Education of Respondents",
    # Color each level of the categorical variable
    col = rainbow(3))

# Obtain a frequency distribution table of the variable
# Primary type of drinking water
table(Water_Drinking_Type)

# Add margins to the frequency distribution table
addmargins(table(Water_Drinking_Type))

# Obtain relative frequencies (proportions)
prop.table(table(Water_Drinking_Type))

# Add margins to the relative frequency distribution table
addmargins(prop.table(table(Water_Drinking_Type)))

# Display a bar plot of Type of Drinking Water
barplot(table(Water_Drinking_Type),
        # Give title to the plot
        main = "Bar Plot of Primary Type of Drinking Water Used",
        # Label the y-axis to denote frequency of responses
        ylab = "Frequency",
        # Color each level of the categorical variable
        col = rainbow(3))

# Display a pie chart of Type of Drinking Water
pie(table(Water_Drinking_Type),
    # Give title to the plot
    main = "Pie Chart of Primary Type of Drinking Water Used",
    # Color each level of the categorical variable
    col = rainbow(3))
