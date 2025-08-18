# Script to process development time data

#Data were formatted according to individual batches and grouped as one final dataset at the end 

######batch2########

#batch2constant
# to read in real data - repeat for each of your tables
actual_data1 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch2", # change this to match
  range = "A3:S19" # change to match the range of your table
)
# reformat data
actual_data_long1 <- actual_data1 |> # pipe into:
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
    treatment = "constant", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "2"
  )


#batch2fluctuation_small
# to read in real data - repeat for each of your tables
actual_data2 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch2", # change this to match
  range = "A25:R41" # change to match the range of your table
)
# reformat data
actual_data_long2 <- actual_data2 |> # pipe into:
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
    treatment = "fluctuation_small", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "2"
  )

#batch2fluctuation_big
# to read in real data - repeat for each of your tables
actual_data3 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch2", # change this to match
  range = "A47:R63" # change to match the range of your table
)
# reformat data
actual_data_long3 <- actual_data3 |> # pipe into:
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
    treatment = "fluctuation_big", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "2"
  )



######batch3#######

#batch3constant
# to read in real data - repeat for each of your tables
actual_data4 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch3", # change this to match
  range = "A3:V24" # change to match the range of your table
)
# reformat data
actual_data_long4 <- actual_data4 |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B5, # get column names
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
    treatment = "constant", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "3"
  )


#batch3fluctuation_small
# to read in real data - repeat for each of your tables
actual_data5 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch3", # change this to match
  range = "A29:V50" # change to match the range of your table
)
# reformat data
actual_data_long5 <- actual_data5 |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B5, # get column names
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
    treatment = "fluctuation_small", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "3"
  )

#batch3fluctuation_big
# to read in real data - repeat for each of your tables
actual_data6 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch3", # change this to match
  range = "A55:V80" # change to match the range of your table
)
# reformat data
actual_data_long6 <- actual_data6 |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B5, # get column names
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
    treatment = "fluctuation_big", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "3"
  )



######batch4#######

#batch4constant
# to read in real data - repeat for each of your tables
actual_data7 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch4", # change this to match
  range = "A2:K23" # change to match the range of your table
)
# reformat data
actual_data_long7 <- actual_data7 |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B2, # get column names
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
    treatment = "constant", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "4"
  )


#batch4fluctuation_small
# to read in real data - repeat for each of your tables
actual_data8 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch4", # change this to match
  range = "A28:K49" # change to match the range of your table
)
# reformat data
actual_data_long8 <- actual_data8 |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B2, # get column names
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
    treatment = "fluctuation_small", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "4"
  )

#batch4fluctuation_big
# to read in real data - repeat for each of your tables
actual_data9 <- readxl::read_excel(
  path = "data/raw_data.xlsx", # match your file
  sheet= "Batch4", # change this to match
  range = "A54:K75" # change to match the range of your table
)
# reformat data
actual_data_long9 <- actual_data9 |> # pipe into:
  tidyr::pivot_longer(
    cols = O1:B2, # get column names
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
    treatment = "fluctuation_big", # the treatment for that table e.g: constant, fluctuation_small, fluctuation_big
    batch = "4"
  )



# repeat above for each of your tables:

# then to join:

full_table  <- dplyr::bind_rows(
  actual_data_long1,
  actual_data_long2,
  actual_data_long3,
  actual_data_long4,
  actual_data_long5,
  actual_data_long6,
  actual_data_long7,
  actual_data_long8,
  actual_data_long9
)


#changing the original labels of vials into corresponding genotypes
library(dplyr)
actual_full_table <- full_table %>%
  mutate(genotype = case_when(
    genotype == "O" ~ "tT",
    genotype == "Y" ~ "mT",
    genotype == "G" ~ "tM",
    genotype == "B" ~ "mM"
))

#make final excel
library(writexl)
write_xlsx(actual_full_table, "reformat_data.xlsx")

