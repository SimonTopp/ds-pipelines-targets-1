library(targets)
source("functions.R")
tar_option_set(packages = c("tidyverse", "stringr", "sbtools", "whisker"))

list(
  tar_target(
    model_RMSEs_csv,
    download_data('5d925066e4b0c4f70d0d0599', fetch_dir = '1_fetch/out', file_name = 'models_RMSE.csv'),
    format = "file"
  ), 
  tar_target(
    plot_data,
    process_data(in_filepath = model_RMSEs_csv),
  ),
  tar_target(
    figure_1_png,
    make_plot(out_filepath = "figure_1.png", data = plot_data), 
    format = "file"
  )
)