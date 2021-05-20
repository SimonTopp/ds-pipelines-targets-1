## Functions for target workflow to look at lake Mendota temperature model errors
library(sbtools)
download_data <- function(dataID, fetch_dir, file_name){
  if(dir.exists(fetch_dir) == F){
    dir.create(fetch_dir)
  }
  
  path <- file.path(fetch_dir, file_name)
  item_file_download('5d925066e4b0c4f70d0d0599', 
                     names = "me_RMSE.csv", 
                     destinations = path, 
                     overwrite_file = TRUE)
}

