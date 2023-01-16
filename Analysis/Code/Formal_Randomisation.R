## Rerandomisation of papers from the preliminary review to be re-read in the 
## formal review

library(tidyverse)
library(readxl)

set.seed(1234)

# Read review IDs
review_sheet <- read_xlsx("Spreadsheets/Stage2_Spreadsheet.xlsx")

# Shuffle review ID S
random_order <- data.frame(order = seq(1:nrow(review_sheet)),
                           reviewID = sample(review_sheet$`Review ID`, nrow(review_sheet)))

       
write_csv(random_order, "Analysis/Outputs/formal_randomisation.csv")
