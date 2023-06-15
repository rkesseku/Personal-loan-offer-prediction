# --------------------------------
# created by Reagan on Jan 2, 2023
# For customer segmentation using clustering 
# ------------------------------------------

# ----------------------------------
# packages used and custom functions
#-----------------------------------

# install and load package manager
# ---------------------------------
if(!require("pacman")){
  install.packages("pacman")
  library("pacman") 
}


# list of packages to use 
# -----------------------
# packages in use
pkg = c("summarytools", "vroom", "tidyverse", "plotly", "DT", "mosaic",
        "here", "RColorBrewer", "patchwork", "rsample", "caret", "pROC",
        "PRROC", "xgboost", "ranger", "kernlab", "doParallel" 
        )

# install and load packages
p_load(char = pkg, install = T)






# Data variables information
# --------------------------
var <- c("ID", "Age", "Experience", "Income",  "ZIP Code", "Family",
         "CCAvg", "Education", "Mortage", "Personal loan", 
         "Securities Account", "CD Account", "Online", "Credit card")


meaning <- c("Customer ID",
             "Customer's age in completed years",
             "Years of professional experience", 
             "Annual income of the customer ($000)", "Home Address ZIP code.",
             "Family size of customer.", 
             "Avg. spending on credit cards per month ($000)",
             "Education level. 1 = Undergrad; 2 = Graduate; 3: Advanced/Professional",
             "Value of house mortgage if any. ($000)", 
             "Did the customer accept the personal loan offered in the last campaign?",
             "Does the customer have a securities account with the bank?",  
             "Does the customer have a certificate of deposit (CD) account with the bank?", 
             "Does the customer use online internet banking facilities?",
             "Does the customer use a credit card issued by Universal bank?")

data_descrip <- datatable(data.frame(var, meaning))


# specifying the variable types for the columns
col_classes = c("numeric", "numeric", "integer", "numeric", "integer",
                "factor", "numeric", "factor", "integer", "factor",
                "factor", "factor", "factor", "factor")


