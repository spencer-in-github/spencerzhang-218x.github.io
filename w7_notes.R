temp <- tempfile()
download.file("https://www2.census.gov/programs-surveys/acs/data/pums/2019/1-Year/csv_hca.zip",destfile = temp)

pums_hca_2019_1yr <- read_csv(unzip(temp,"psam_h06.csv"))

unlink(temp)