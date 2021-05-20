library(sbtools)
## This script pulls down model evaluation data for Lake Mendota

## Function for pulling down data from 
## USGS's ScienceBase https://www.sciencebase.gov/

fetch_data <- function(ID, fetch_dir, file_name){

  
  if(dir.exists(fetch_dir) == F){
    dir.create(fetch_dir)
  }
  
  path <- file.path(fetch_dir, file_name)
  item_file_download(ID, names = file_name, destinations = path, overwrite_file = TRUE)
}

path <- fetch_data('5d925066e4b0c4f70d0d0599', '1_fetch/out', 'models_RMSE.csv')
