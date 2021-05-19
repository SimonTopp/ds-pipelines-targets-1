## This script pulls down model evaluation data for Lake Mendota

## Function for pulling down data from 
## USGS's ScienceBase https://www.sciencebase.gov/

fetch_data <- function(ID, project_output_dir, file_name){
  require(sbtools)
  
  if(dir.exists(project_output_dir) == F){
    dir.create(project_output_dir)
  }
  
  path <- file.path(project_output_dir, file_name)
  item_file_download(ID, names = file_name, destinations = path, overwrite_file = TRUE)
  
  print(paste0('This file has been saved as ', path ))
  return(path)
}

path <- fetch_data('5d925066e4b0c4f70d0d0599', '1_fetch/out', 'models_RMSE.csv')
