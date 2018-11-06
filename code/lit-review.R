setwd("~/repos/ckme136-capstone/")
hoq <- read.csv(file="dataset/final_hoq.csv", header = TRUE, stringsAsFactors=TRUE)
str(hoq)

# Create ordered levels
hoq$h_mortality <- ordered(hoq$h_mortality, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_soc <- ordered(hoq$h_soc, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_ra <- ordered(hoq$h_ra, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_pex <- ordered(hoq$h_pex, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_eoc <- ordered(hoq$h_eoc, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_toc <- ordered(hoq$h_toc, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_imaging <- ordered(hoq$h_imaging, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))

# Categorize hospital overall rating (Low Hospital Quality was abbreviated to LHQ and High Hospital Quality was abbreviated to HHQ.)
hoq$h_rating <- cut(hoq$h_rating, breaks=c(0, 3, 5), labels=c("LHQ", "HHQ"))
write.csv(hoq, file = "nomRating.csv")
str(hoq)

# Balanced nomRating.csv using Weka classbalancer = nomRating-balanced.csv
# False instances were down sampled to match the true instances (i.e., from 2435 to 964)
# Weka J48 Decision Tree was used with 10-fold cross validation.

# Should national average rating be numericized?
#dt <- read.csv(file="nomRating-balanced.csv", header = TRUE, stringsAsFactors=TRUE)
#numNational <- function(x, y) { # x will be the data frame and y will be the 
#  for(i in 1:length(x$))
#}
