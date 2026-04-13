# Load the required package
library(rsconnect)

# Define your file paths and title
doc_title <- "Lecture 13: Regression"
html_file <- "C:/Users/tomha/R_Projects/pols3312_spring2026/Lectures/Lecture_13/lecture_13_regression.html" 
source_file <- "C:/Users/tomha/R_Projects/pols3312_spring2026/Lectures/Lecture_13/lecture_13_regression.qmd" # Works with .Rmd as well

# Execute the upload
publish_result <- rpubsUpload(
        title = doc_title, 
        contentFile = html_file, 
        originalDoc = source_file
)

# Launch the browser to complete the setup
if (!is.null(publish_result$continueUrl)) {
        browseURL(publish_result$continueUrl)
} else {
        print(publish_result$error)
}