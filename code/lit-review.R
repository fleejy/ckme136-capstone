hoq <- read.csv(file="~/Education/Ryerson (2018)/capstone/final_hoq.csv", header = TRUE, stringsAsFactors=TRUE)

str(hoq)

# Create ordered levels
hoq$h_mortality <- ordered(hoq$h_mortality, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_soc <- ordered(hoq$h_soc, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_ra <- ordered(hoq$h_ra, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_pex <- ordered(hoq$h_pex, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_eoc <- ordered(hoq$h_eoc, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_toc <- ordered(hoq$h_toc, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))
hoq$h_imaging <- ordered(hoq$h_imaging, levels = c("'Not Available'", "'Below the national average'", "'Same as the national average'", "'Above the national average'"))