#notes-hotkey in rstudio

View(data_variable_name) #to view the dataframe that's in the Environment
names(data_variable_name) #to view the field names of the dataframe
nrow(data_variable_name) #to view the number of rows in the dataframe
mapview(data_variable_name) #to quickly view a mappable object (you'll need to have loaded the
relevant library to do this, which we'll explain later)

SELECTION
double click: highligt word
triple: highlight entire line

NAVIGATION
cmd+UP/DOWN: to the upfront/bottom down page
world+UP/DOWN: to the next/last page
cmd+option+I: create r chunk

COMMENT/UNCOMMENT: ctrl/cmd+shit+C


AUTOMATIC DATE FILL: 
#creating a single line r chunk in a markdown file
'r format(Sys.Date(), '%B %d, %Y')'
#in consule
format(Sys.Date(), '%B %d, %Y')