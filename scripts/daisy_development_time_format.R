# Script to process development time data


# example data:
eg_data <- tibble::tibble(
  start = c("2025-08-01 10:00:00 BST", "2025-08-01 10:00:00 BST", "2025-08-01 10:00:00 BST"),
  timepoint = c("2025-08-11 10:00:00 BST", "2025-08-11 14:00:00 BST", "2025-08-12 10:00:00 BST"),
  o1 = c(1, 2, 3),
  o2 = c(3,1,2),
  b1 = c(4,5,6),
  b2 = c(6,4,5)
)

# to read in real data - repeat for each of your tables
actual_data <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch2", # change this to match
  range = "A3:S19" # change to match the range of your table
)

# reformat data
actual_data_long <- actual_data |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B4, # get column names
    names_to = c("genotype", "vial"), # the new column names
    names_sep = 1, # where to split the current column names
    values_to = "emerged" # names for time when checked
  ) |> # pipe this directly into:
  dplyr::mutate( # make a new column
    dev_time = lubridate::interval( # calculate the time interval between the two points...
      start = lubridate::ymd_hms(start_date),
      end = lubridate::ymd_hms(collection_date)
    ) %/% lubridate::hours(1) # round to the nearest hour
  ) |> # pipe this directly into:
  dplyr::mutate( # make a new column
    treatment = "constant" # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
  )

# repeat above for each of your tables:
# then to join:

full_table  <- dplyr::bind_rows(
  table_one,
  table_two,
  table_three
)




