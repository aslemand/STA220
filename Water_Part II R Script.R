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

# Contingency table of type of drinking water and highest level of education
table(Highest_Education_Level, Water_Drinking_Type)

# Save the R result, in this the contingency table, in a name "Contingency.Table"
Contingency.Table <- table(Highest_Education_Level, Water_Drinking_Type)
Contingency.Table

# Add Margins
addmargins(Contingency.Table)

# Call the library "ggplot2" included in the "tidyverse" package
# ggplot2: grammer of graphics - Data Visualization
library(ggplot2)
g = ggplot(Water, aes(x = Highest_Education_Level, fill = Water_Drinking_Type)) 
g + geom_bar(position = "dodge")

# Calculate Marginal Proportions for Highest Education Level
Margin.Prop.Edu <- prop.table(margin.table(Contingency.Table, 1))
Margin.Prop.Edu

# Add margins to the marginal distribution table
addmargins(Margin.Prop.Edu)

# Calculate Marginal Proportions for Type of Drinking Water
Margin.Prop.Water <- prop.table(margin.table(Contingency.Table, 2))
Margin.Prop.Water

# Add margins to the marginal distribution table
addmargins(Margin.Prop.Water)

# Calculate Joint Proportions
Joint.Prop <- prop.table(Contingency.Table)
Joint.Prop

# Add margins to the joint distribution table
addmargins(Joint.Prop)

# Calculate Row Proportions
Row.Prop <- prop.table(Contingency.Table, 1)
Row.Prop

# Calculate Column Proportions
Col.Prop <- prop.table(Contingency.Table, 2)
Col.Prop
