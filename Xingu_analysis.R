########################################################################################################################
##### Objective: Read, extract and analyze the data relative to precipitation and temperature to compare historical
# and modeled to the future data. Focus is given to the city of Santa Cruz do Xingu (Latitude: 10° 14' 29'' South,
# Longitude: 52° 22' 20'' West).
# The datasets are based in the CMIP 6 (Coupled Model Intercomparison Project Phase 6) and can be dowloaded at the
# following URLs:
#
# Precipitation
# Historical:
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18500101-18691231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18700101-18891231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18900101-19091231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19100101-19291231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19300101-19491231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19500101-19691231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19700101-19891231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19900101-20091231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/pr/gr1/v20190726/pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_20100101-20141231.nc
#
# Modeled predictions (following SSP370 --- Shared Socioeconomic Pathways):
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/pr/gr1/v20180701/pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20150101-20341231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/pr/gr1/v20180701/pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20350101-20541231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/pr/gr1/v20180701/pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20550101-20741231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/pr/gr1/v20180701/pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20750101-20941231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/pr/gr1/v20180701/pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20950101-21001231.nc
#
# Temperature
# Historical:
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18500101-18691231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18700101-18891231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18900101-19091231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19100101-19291231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19300101-19491231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19500101-19691231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19700101-19891231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19900101-20091231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/day/tas/gr1/v20190726/tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_20100101-20141231.nc
# 
# Predicted:
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/tas/gr1/v20180701/tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20150101-20341231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/tas/gr1/v20180701/tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20350101-20541231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/tas/gr1/v20180701/tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20550101-20741231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/tas/gr1/v20180701/tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20750101-20941231.nc
# http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/day/tas/gr1/v20180701/tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20950101-21001231.nc

##### Limitations: Some slices of this code can be optimized with loops: especially lines 92 - 307;
# The author had no previous experience with netCDF files, hence lots of energy was spent learning to open and extract
# features without freezing the computer. A reasonable solution was to slice the data to the geographic coordinates
# of interest (lines 108 - 117).
########################################################################################################################

# Generating new virtual environment (executed only once in the program lifetime)
# renv::init()

# Import packages
library(ncdf4)
# library(ncdump)
# library(raster)
# library(ggplot2)
# library(dplyr)

# Name directory and files
## Directory
dir <- "C:\\Users\\André\\Documents\\WayCarbon_data"

############################################### Precipitation #########################################################

## Files
### Historical data
file_name_1850 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18500101-18691231.nc'
file_name_1870 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18700101-18891231.nc'
file_name_1890 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18900101-19091231.nc'
file_name_1910 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19100101-19291231.nc'
file_name_1930 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19300101-19491231.nc'
file_name_1950 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19500101-19691231.nc'
file_name_1970 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19700101-19891231.nc'
file_name_1990 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19900101-20091231.nc'
file_name_2010 <- 'pr_day_GFDL-ESM4_historical_r1i1p1f1_gr1_20100101-20141231.nc'

### Predicted models by CMIP6
file_name_2015 <- 'pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20150101-20341231.nc'
file_name_2035 <- 'pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20350101-20541231.nc'
file_name_2055 <- 'pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20550101-20741231.nc'
file_name_2075 <- 'pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20750101-20941231.nc'
file_name_2095 <- 'pr_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20950101-21001231.nc'

# Set working directory
setwd(dir)

# Explore metadata
# ncdump::NetCDF(file_name_1850)

# Historical data
# h_1: 1850
# Open file
h_1 <- nc_open(file_name_1850)
# print(h_1)

# 'time' variable unit is days and lenght of 7300 days, which corresponds to 20 years (1850 - 1870 - 1890 - ...)

# Set variables (longitude, latitude and time)
lon_h_1 <- ncvar_get(h_1, "lon")
lat_h_1 <- ncvar_get(h_1, "lat")
t_h_1 <- ncvar_get(h_1, "time")

# Snoop variables
# summary(t_h_1)
# str()

# Find the indeces corresponding to Santa Cruz do Xingu
# The coordinates of the city are: lat: 10 14' 29", lon: 52 22' 20"
lat_min_h_1 <- min(which(h_1$dim$lat$vals >= -11))
lat_max_h_1 <- max(which(h_1$dim$lat$vals <= -10))
lon_min_h_1 <- min(which(h_1$dim$lon$vals >= 180 + 52))
lon_max_h_1 <- max(which(h_1$dim$lon$vals <= 180 + 53))

# Get a slice of precipitation variable starting at 'start'
# The axis at the netCDF file are: lon : X axis, lat : Y, t : T
start <- c(lon_min_h_1, lat_min_h_1, 1)
count <- c(1, 1, -1)
pr_h_1 <- ncvar_get(h_1, start = start, count = count)
# head(pr_h_1)
# plot(pr_h_1)

# Close netCDF file
nc_close(h_1)

# h_2: 1870
h_2 <- nc_open(file_name_1870)
lon_h_2 <- ncvar_get(h_2, "lon")
lat_h_2 <- ncvar_get(h_2, "lat")
t_h_2 <- ncvar_get(h_2, "time")
lat_min_h_2 <- min(which(h_2$dim$lat$vals >= -11))
lat_max_h_2 <- max(which(h_2$dim$lat$vals <= -10))
lon_min_h_2 <- min(which(h_2$dim$lon$vals >= 180 + 52))
lon_max_h_2 <- max(which(h_2$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_2, lat_min_h_2, 1)
count <- c(1, 1, -1)
pr_h_2 <- ncvar_get(h_2, start = start, count = count)
nc_close(h_2)

# h_3: 1890
h_3 <- nc_open(file_name_1890)
lon_h_3 <- ncvar_get(h_3, "lon")
lat_h_3 <- ncvar_get(h_3, "lat")
t_h_3 <- ncvar_get(h_3, "time")
lat_min_h_3 <- min(which(h_3$dim$lat$vals >= -11))
lat_max_h_3 <- max(which(h_3$dim$lat$vals <= -10))
lon_min_h_3 <- min(which(h_3$dim$lon$vals >= 180 + 52))
lon_max_h_3 <- max(which(h_3$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_3, lat_min_h_3, 1)
count <- c(1, 1, -1)
pr_h_3 <- ncvar_get(h_3, start = start, count = count)
nc_close(h_3)

# h_4: 1910
h_4 <- nc_open(file_name_1910)
lon_h_4 <- ncvar_get(h_4, "lon")
lat_h_4 <- ncvar_get(h_4, "lat")
t_h_4 <- ncvar_get(h_4, "time")
lat_min_h_4 <- min(which(h_4$dim$lat$vals >= -11))
lat_max_h_4 <- max(which(h_4$dim$lat$vals <= -10))
lon_min_h_4 <- min(which(h_4$dim$lon$vals >= 180 + 52))
lon_max_h_4 <- max(which(h_4$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_4, lat_min_h_4, 1)
count <- c(1, 1, -1)
pr_h_4 <- ncvar_get(h_4, start = start, count = count)
nc_close(h_4)

# h_5: 1930
h_5 <- nc_open(file_name_1930)
lon_h_5 <- ncvar_get(h_5, "lon")
lat_h_5 <- ncvar_get(h_5, "lat")
t_h_5 <- ncvar_get(h_5, "time")
lat_min_h_5 <- min(which(h_5$dim$lat$vals >= -11))
lat_max_h_5 <- max(which(h_5$dim$lat$vals <= -10))
lon_min_h_5 <- min(which(h_5$dim$lon$vals >= 180 + 52))
lon_max_h_5 <- max(which(h_5$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_5, lat_min_h_5, 1)
count <- c(1, 1, -1)
pr_h_5 <- ncvar_get(h_5, start = start, count = count)
nc_close(h_5)

# h_6: 1950
h_6 <- nc_open(file_name_1950)
lon_h_6 <- ncvar_get(h_6, "lon")
lat_h_6 <- ncvar_get(h_6, "lat")
t_h_6 <- ncvar_get(h_6, "time")
lat_min_h_6 <- min(which(h_6$dim$lat$vals >= -11))
lat_max_h_6 <- max(which(h_6$dim$lat$vals <= -10))
lon_min_h_6 <- min(which(h_6$dim$lon$vals >= 180 + 52))
lon_max_h_6 <- max(which(h_6$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_6, lat_min_h_6, 1)
count <- c(1, 1, -1)
pr_h_6 <- ncvar_get(h_6, start = start, count = count)
nc_close(h_6)

# h_7: 1970
h_7 <- nc_open(file_name_1970)
lon_h_7 <- ncvar_get(h_7, "lon")
lat_h_7 <- ncvar_get(h_7, "lat")
t_h_7 <- ncvar_get(h_7, "time")
lat_min_h_7 <- min(which(h_7$dim$lat$vals >= -11))
lat_max_h_7 <- max(which(h_7$dim$lat$vals <= -10))
lon_min_h_7 <- min(which(h_7$dim$lon$vals >= 180 + 52))
lon_max_h_7 <- max(which(h_7$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_7, lat_min_h_7, 1)
count <- c(1, 1, -1)
pr_h_7 <- ncvar_get(h_7, start = start, count = count)
nc_close(h_7)

# h_8: 1990
h_8 <- nc_open(file_name_1990)
lon_h_8 <- ncvar_get(h_8, "lon")
lat_h_8 <- ncvar_get(h_8, "lat")
t_h_8 <- ncvar_get(h_8, "time")
lat_min_h_8 <- min(which(h_8$dim$lat$vals >= -11))
lat_max_h_8 <- max(which(h_8$dim$lat$vals <= -10))
lon_min_h_8 <- min(which(h_8$dim$lon$vals >= 180 + 52))
lon_max_h_8 <- max(which(h_8$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_8, lat_min_h_8, 1)
count <- c(1, 1, -1)
pr_h_8 <- ncvar_get(h_8, start = start, count = count)
nc_close(h_8)

# h_9: 2010
h_9 <- nc_open(file_name_2010)
lon_h_9 <- ncvar_get(h_9, "lon")
lat_h_9 <- ncvar_get(h_9, "lat")
t_h_9 <- ncvar_get(h_9, "time")
lat_min_h_9 <- min(which(h_9$dim$lat$vals >= -11))
lat_max_h_9 <- max(which(h_9$dim$lat$vals <= -10))
lon_min_h_9 <- min(which(h_9$dim$lon$vals >= 180 + 52))
lon_max_h_9 <- max(which(h_9$dim$lon$vals <= 180 + 53))
start <- c(lon_min_h_9, lat_min_h_9, 1)
count <- c(1, 1, -1)
pr_h_9 <- ncvar_get(h_9, start = start, count = count)
nc_close(h_9)

# Predicted models by CMIP6
# p_1: 2015
p_1 <- nc_open(file_name_2015)
lon_p_1 <- ncvar_get(p_1, "lon")
lat_p_1 <- ncvar_get(p_1, "lat")
t_p_1 <- ncvar_get(p_1, "time")
lat_min_p_1 <- min(which(p_1$dim$lat$vals >= -11))
lat_max_p_1 <- max(which(p_1$dim$lat$vals <= -10))
lon_min_p_1 <- min(which(p_1$dim$lon$vals >= 180 + 52))
lon_max_p_1 <- max(which(p_1$dim$lon$vals <= 180 + 53))
start <- c(lon_min_p_1, lat_min_p_1, 1)
count <- c(1, 1, -1)
pr_p_1 <- ncvar_get(p_1, start = start, count = count)
nc_close(p_1)

# p_2: 2035
p_2 <- nc_open(file_name_2035)
print(p_2)
lon_p_2 <- ncvar_get(p_2, "lon")
lat_p_2 <- ncvar_get(p_2, "lat")
t_p_2 <- ncvar_get(p_2, "time")
lat_min_p_2 <- min(which(p_2$dim$lat$vals >= -11))
lat_max_p_2 <- max(which(p_2$dim$lat$vals <= -10))
lon_min_p_2 <- min(which(p_2$dim$lon$vals >= 180 + 52))
lon_max_p_2 <- max(which(p_2$dim$lon$vals <= 180 + 53))
start <- c(lon_min_p_2, lat_min_p_2, 1)
count <- c(1, 1, -1)
pr_p_2 <- ncvar_get(p_2, start = start, count = count)
nc_close(p_2)

# p_3: 2055
p_3 <- nc_open(file_name_2055)
print(p_3)
lon_p_3 <- ncvar_get(p_3, "lon")
lat_p_3 <- ncvar_get(p_3, "lat")
t_p_3 <- ncvar_get(p_3, "time")
lat_min_p_3 <- min(which(p_3$dim$lat$vals >= -11))
lat_max_p_3 <- max(which(p_3$dim$lat$vals <= -10))
lon_min_p_3 <- min(which(p_3$dim$lon$vals >= 180 + 52))
lon_max_p_3 <- max(which(p_3$dim$lon$vals <= 180 + 53))
start <- c(lon_min_p_3, lat_min_p_3, 1)
count <- c(1, 1, -1)
pr_p_3 <- ncvar_get(p_3, start = start, count = count)
nc_close(p_3)

# p_4: 2075
p_4 <- nc_open(file_name_2075)
lon_p_4 <- ncvar_get(p_4, "lon")
lat_p_4 <- ncvar_get(p_4, "lat")
t_p_4 <- ncvar_get(p_4, "time")
lat_min_p_4 <- min(which(p_4$dim$lat$vals >= -11))
lat_max_p_4 <- max(which(p_4$dim$lat$vals <= -10))
lon_min_p_4 <- min(which(p_4$dim$lon$vals >= 180 + 52))
lon_max_p_4 <- max(which(p_4$dim$lon$vals <= 180 + 53))
start <- c(lon_min_p_4, lat_min_p_4, 1)
count <- c(1, 1, -1)
pr_p_4 <- ncvar_get(p_4, start = start, count = count)
nc_close(p_4)

# p_5: 2095
p_5 <- nc_open(file_name_2095)
lon_p_5 <- ncvar_get(p_5, "lon")
lat_p_5 <- ncvar_get(p_5, "lat")
t_p_5 <- ncvar_get(p_5, "time")
lat_min_p_5 <- min(which(p_5$dim$lat$vals >= -11))
lat_max_p_5 <- max(which(p_5$dim$lat$vals <= -10))
lon_min_p_5 <- min(which(p_5$dim$lon$vals >= 180 + 52))
lon_max_p_5 <- max(which(p_5$dim$lon$vals <= 180 + 53))
start <- c(lon_min_p_5, lat_min_p_5, 1)
count <- c(1, 1, -1)
pr_p_5 <- ncvar_get(p_5, start = start, count = count)
nc_close(p_5)
####################

# Work with years
# Create auxiliary vectors
days_of_year <- 365    # Not considering leap years
years_interval <- c(1:20)
year_vector <- rep(days_of_year, times = 20)
vector <- c(0, years_interval * year_vector)
vector_to_h_9 <- c(0,  365,  730, 1095, 1460, 1825)   # h_9 has only 5 years count
vector_to_p_5 <- c(0,  365,  730, 1095, 1460, 1825, 2190)   # p_5 has only 6 years count

# Create data frames with daily precipitation for the years of 1850 to 2100
pr_1850_1869 <- list()
pr_1870_1889 <- list()
pr_1890_1909 <- list()
pr_1910_1929 <- list()
pr_1930_1949 <- list()
pr_1950_1969 <- list()
pr_1970_1989 <- list()
pr_1990_2009 <- list()
pr_2010_2014 <- list()
pr_2015_2034 <- list()
pr_2035_2054 <- list()
pr_2055_2074 <- list()
pr_2075_2094 <- list()
pr_2095_2100 <- list()

pr_h_1_matrix <- matrix(pr_h_1)
pr_h_2_matrix <- matrix(pr_h_2)
pr_h_3_matrix <- matrix(pr_h_3)
pr_h_4_matrix <- matrix(pr_h_4)
pr_h_5_matrix <- matrix(pr_h_5)
pr_h_6_matrix <- matrix(pr_h_6)
pr_h_7_matrix <- matrix(pr_h_7)
pr_h_8_matrix <- matrix(pr_h_8)
pr_h_9_matrix <- matrix(pr_h_9)
pr_p_1_matrix <- matrix(pr_p_1)
pr_p_2_matrix <- matrix(pr_p_2)
pr_p_3_matrix <- matrix(pr_p_3)
pr_p_4_matrix <- matrix(pr_p_4)
pr_p_5_matrix <- matrix(pr_p_5)

i <- 1
for (i in 1:20){
  pr_1850_1869[i] <- data.frame(pr_h_1_matrix[(vector[i] + 1):vector[i+1],])
  pr_1870_1889[i] <- data.frame(pr_h_2_matrix[(vector[i] + 1):vector[i+1],])
  pr_1890_1909[i] <- data.frame(pr_h_3_matrix[(vector[i] + 1):vector[i+1],])
  pr_1910_1929[i] <- data.frame(pr_h_4_matrix[(vector[i] + 1):vector[i+1],])
  pr_1930_1949[i] <- data.frame(pr_h_5_matrix[(vector[i] + 1):vector[i+1],])
  pr_1950_1969[i] <- data.frame(pr_h_6_matrix[(vector[i] + 1):vector[i+1],])
  pr_1970_1989[i] <- data.frame(pr_h_7_matrix[(vector[i] + 1):vector[i+1],])
  pr_1990_2009[i] <- data.frame(pr_h_8_matrix[(vector[i] + 1):vector[i+1],])
  pr_2015_2034[i] <- data.frame(pr_p_1_matrix[(vector[i] + 1):vector[i+1],])
  pr_2035_2054[i] <- data.frame(pr_p_2_matrix[(vector[i] + 1):vector[i+1],])
  pr_2055_2074[i] <- data.frame(pr_p_3_matrix[(vector[i] + 1):vector[i+1],])
  pr_2075_2094[i] <- data.frame(pr_p_4_matrix[(vector[i] + 1):vector[i+1],])
  i <- i + 1
}

j <- 1
for (j in 1:5){
  pr_2010_2014[j] <- data.frame(pr_h_9_matrix[(vector_to_h_9[j] + 1):vector_to_h_9[j+1],])
  j <- j + 1
}

k <- 1
for (k in 1:6){
  pr_2095_2100[k] <- data.frame(pr_p_5_matrix[(vector_to_p_5[k] + 1):vector_to_p_5[k+1],])
  k <- k + 1
}

# Create more auxiliary vectors
vector_1850_1869 <- c(1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864,
                          1865, 1866, 1867, 1868, 1869)
vector_2010_2014 <- c(2010, 2011, 2012, 2013, 2014)
vector_2015_2034 <- c(2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029,
                          2030, 2031, 2032, 2033, 2034)
vector_2095_2100 <- c(2095, 2096, 2097, 2098, 2099, 2100)

pr_1850_1869_df <- data.frame(pr_1850_1869)
pr_1870_1889_df <- data.frame(pr_1870_1889)
pr_1890_1909_df <- data.frame(pr_1890_1909)
pr_1910_1929_df <- data.frame(pr_1910_1929)
pr_1930_1949_df <- data.frame(pr_1930_1949)
pr_1950_1969_df <- data.frame(pr_1950_1969)
pr_1970_1989_df <- data.frame(pr_1970_1989)
pr_1990_2009_df <- data.frame(pr_1990_2009)
pr_2010_2014_df <- data.frame(pr_2010_2014)
pr_2015_2034_df <- data.frame(pr_2015_2034)
pr_2035_2054_df <- data.frame(pr_2035_2054)
pr_2055_2074_df <- data.frame(pr_2055_2074)
pr_2075_2094_df <- data.frame(pr_2075_2094)
pr_2095_2100_df <- data.frame(pr_2095_2100)

colnames(pr_1850_1869_df) <- vector_1850_1869
colnames(pr_1870_1889_df) <- vector_1850_1869 + 20
colnames(pr_1890_1909_df) <- vector_1850_1869 + 40
colnames(pr_1910_1929_df) <- vector_1850_1869 + 60
colnames(pr_1930_1949_df) <- vector_1850_1869 + 80
colnames(pr_1950_1969_df) <- vector_1850_1869 + 100
colnames(pr_1970_1989_df) <- vector_1850_1869 + 120
colnames(pr_1990_2009_df) <- vector_1850_1869 + 140
colnames(pr_2010_2014_df) <- vector_2010_2014
colnames(pr_2015_2034_df) <- vector_2015_2034
colnames(pr_2035_2054_df) <- vector_2015_2034 + 20
colnames(pr_2055_2074_df) <- vector_2015_2034 + 40
colnames(pr_2075_2094_df) <- vector_2015_2034 + 60
colnames(pr_2095_2100_df) <- vector_2095_2100

# Conbine each interval to a larger data frame
# Historical precipitation
pr_h <- cbind(pr_1850_1869_df, pr_1870_1889_df, pr_1890_1909_df, pr_1910_1929_df, pr_1930_1949_df, pr_1950_1969_df,
              pr_1970_1989_df, pr_1990_2009_df, pr_2010_2014_df)

# Predicted precipitation
pr_p <- cbind(pr_2015_2034_df, pr_2035_2054_df, pr_2055_2074_df, pr_2075_2094_df, pr_2095_2100_df)

# Plot and save a PNG file of precipitation of 160 years of historical data and the year of 2070
png("pr_historical_vs_2070.png", width = 700, height = 400, res = 115)
par(mfrow=c(1,1), family = "serif")
matplot(x = c(1:365), y = pr_h, type = 'l', col = 'gray', lwd = 1,
        xaxt = 'n', yaxt = 'n', bty = 'n', xlab = "Months", ylab = "",
        cex.lab = 1, cex.main = 1.2, main = "Precipitation season in 2070 is similar to historical data")
lines(x = c(1:365), y = pr_p$`2070`, col = 'red', lwd = 1.5)
axis(1, at = seq(15, 365, by = 30),
     labels = c("Jan", "Feb", "Mar", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
     las = 2, line = 0, lwd = 0.5)
axis(2, at = seq(0, 0.002, by = 0.001), las=0, line = -0.3, lwd = 0.5)
title(main = "In comparison to 160 years", cex.main = 1, font.main = 3, line = 0.5)
title(ylab = bquote("Daily precipitation [" ~ kg/m^2*s ~ "]"), line = 2.5)
legend(200, 0.002, legend = c("Years of 1850-2010 \nsuperposed", "2070"),
       col=c("gray", "red"), lty=1:1, cex=0.8, text.font = 3, box.lty = 0)
dev.off()

# Work with sum of precipitation for each 20 year interval
# Sum all daily precipitation of historical and predicted data --- daily 'pr' turns into yearly 'pr'
pr_h_sum <- data.frame(colSums(pr_h))
pr_p_sum <- data.frame(colSums(pr_p))
colnames(pr_h_sum) <- "sum pr"
colnames(pr_p_sum) <- "sum pr"

# Make data frames --- yearly accumulated 'pr' turns into the accumulated of 20 years intervals
pr_sum_1 <- data.frame(sum(pr_h_sum[1:20,]))
pr_sum_2 <- data.frame(sum(pr_h_sum[21:40,]))
pr_sum_3 <- data.frame(sum(pr_h_sum[41:60,]))
pr_sum_4 <- data.frame(sum(pr_h_sum[61:80,]))
pr_sum_5 <- data.frame(sum(pr_h_sum[81:100,]))
pr_sum_6 <- data.frame(sum(pr_h_sum[101:120,]))
pr_sum_7 <- data.frame(sum(pr_h_sum[121:140,]))
pr_sum_8 <- data.frame(sum(pr_h_sum[141:160,]))
pr_sum_9 <- data.frame(sum(pr_h_sum[161:165,]))
pr_sum_10 <- data.frame(sum(pr_p_sum[1:20,]))
pr_sum_11 <- data.frame(sum(pr_p_sum[21:40,]))
pr_sum_12 <- data.frame(sum(pr_p_sum[41:60,]))
pr_sum_13 <- data.frame(sum(pr_p_sum[61:80,]))
pr_sum_14 <- data.frame(sum(pr_p_sum[81:86,]))
colnames(pr_sum_1) <- "pr_sum"
colnames(pr_sum_2) <- "pr_sum"
colnames(pr_sum_3) <- "pr_sum"
colnames(pr_sum_4) <- "pr_sum"
colnames(pr_sum_5) <- "pr_sum"
colnames(pr_sum_6) <- "pr_sum"
colnames(pr_sum_7) <- "pr_sum"
colnames(pr_sum_8) <- "pr_sum"
colnames(pr_sum_9) <- "pr_sum"
colnames(pr_sum_10) <- "pr_sum"
colnames(pr_sum_11) <- "pr_sum"
colnames(pr_sum_12) <- "pr_sum"
colnames(pr_sum_13) <- "pr_sum"
colnames(pr_sum_14) <- "pr_sum"

# Combine data frames
pr_sum <- rbind(pr_sum_1, pr_sum_2, pr_sum_3, pr_sum_4, pr_sum_5, pr_sum_6, pr_sum_7, pr_sum_8,
                pr_sum_10, pr_sum_11, pr_sum_12, pr_sum_13)

# Plot and save a PNG file of precipitation of 160 years of historical data and the year of 2070
png("pr_sum_1850-2095.png", width = 700, height = 400, res = 115)
par(mfrow=c(1,1), family = "serif")
matplot(y = pr_sum, type = 'h', col = 'black', lwd = 15,
        xaxt = 'n', yaxt = 'n', bty = 'n', xlab = "", ylab = "",
        cex.lab = 1, cex.main = 1.2, main = "Precipitation in 2055-2075 is the larger in the period")
axis(1, at = seq(1, 12, by = 1),
     labels = c("1850-1870", "1870-1890", "1890-1910", "1910-1930", "1930-1950", "1950-1970", "1970-1990", "1990-2010",
                "2015-2035", "2035-2055", "2055-2075", "2075-2095"),
     las = 2, line = 0, lwd = 0.5)
axis(2, at = seq(0.15, 0.25, by = 0.005), las=0, line = -0.3, lwd = 0.5)
title(main = "In the accumulated of 20 years intervals", cex.main = 1, font.main = 3, line = 0.5)
title(ylab = bquote("Cumulative precipitation  [" ~ kg/m^2*s ~ "]"), line = 2.5)
dev.off()

############################################### Temperature #########################################################

## Files
### Historical data
tas_file_name_1850 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18500101-18691231.nc'
tas_file_name_1870 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18700101-18891231.nc'
tas_file_name_1890 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_18900101-19091231.nc'
tas_file_name_1910 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19100101-19291231.nc'
tas_file_name_1930 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19300101-19491231.nc'
tas_file_name_1950 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19500101-19691231.nc'
tas_file_name_1970 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19700101-19891231.nc'
tas_file_name_1990 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_19900101-20091231.nc'
tas_file_name_2010 <- 'tas_day_GFDL-ESM4_historical_r1i1p1f1_gr1_20100101-20141231.nc'

### Predicted models by CMIP6
tas_file_name_2015 <- 'tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20150101-20341231.nc'
tas_file_name_2035 <- 'tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20350101-20541231.nc'
tas_file_name_2055 <- 'tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20550101-20741231.nc'
tas_file_name_2075 <- 'tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20750101-20941231.nc'
tas_file_name_2095 <- 'tas_day_GFDL-ESM4_ssp370_r1i1p1f1_gr1_20950101-21001231.nc'

# Historical data
# h_1: 1850
# Open file
h_1_tas <- nc_open(tas_file_name_1850)
# print(tas_h_1)

# 'time' variable unit is days and lenght of 7300 days, which corresponds to 20 years (1850 - 1870 - 1890 - ...)

# Set variables (longitude, latitude and time)
lon_tas_h_1 <- ncvar_get(h_1_tas, "lon")
lat_tas_h_1 <- ncvar_get(h_1_tas, "lat")
t_tas_h_1 <- ncvar_get(h_1_tas, "time")

# Snoop variables
# summary(t_tas_h_1)
# str()

# Find the indeces corresponding to Santa Cruz do Xingu
# The coordinates of the city are: lat: 10 14' 29", lon: 52 22' 20"
lat_min_tas_h_1 <- min(which(h_1_tas$dim$lat$vals >= -11))
lat_max_tas_h_1 <- max(which(h_1_tas$dim$lat$vals <= -10))
lon_min_tas_h_1 <- min(which(h_1_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_1 <- max(which(h_1_tas$dim$lon$vals <= 180 + 53))

# Get a slice of precipitation variable starting at 'start'
# The axis at the netCDF file are: lon : X axis, lat : Y, t : T
start <- c(lon_min_tas_h_1, lat_min_tas_h_1, 1)
count <- c(1, 1, -1)
tas_h_1 <- ncvar_get(h_1_tas, start = start, count = count)
# head(pr_tas_h_1)
# plot(pr_tas_h_1)

# Close netCDF file
nc_close(h_1_tas)

# tas_h_2: 1870
h_2_tas <- nc_open(tas_file_name_1870)
lon_tas_h_2 <- ncvar_get(h_2_tas, "lon")
lat_tas_h_2 <- ncvar_get(h_2_tas, "lat")
t_tas_h_2 <- ncvar_get(h_2_tas, "time")
lat_min_tas_h_2 <- min(which(h_2_tas$dim$lat$vals >= -11))
lat_max_tas_h_2 <- max(which(h_2_tas$dim$lat$vals <= -10))
lon_min_tas_h_2 <- min(which(h_2_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_2 <- max(which(h_2_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_2, lat_min_tas_h_2, 1)
count <- c(1, 1, -1)
tas_h_2 <- ncvar_get(h_2_tas, start = start, count = count)
nc_close(h_2_tas)

# tas_h_3: 1890
h_3_tas <- nc_open(tas_file_name_1890)
lon_tas_h_3 <- ncvar_get(h_3_tas, "lon")
lat_tas_h_3 <- ncvar_get(h_3_tas, "lat")
t_tas_h_3 <- ncvar_get(h_3_tas, "time")
lat_min_tas_h_3 <- min(which(h_3_tas$dim$lat$vals >= -11))
lat_max_tas_h_3 <- max(which(h_3_tas$dim$lat$vals <= -10))
lon_min_tas_h_3 <- min(which(h_3_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_3 <- max(which(h_3_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_3, lat_min_tas_h_3, 1)
count <- c(1, 1, -1)
tas_h_3 <- ncvar_get(h_3_tas, start = start, count = count)
nc_close(h_3_tas)

# tas_h_4: 1910
h_4_tas <- nc_open(tas_file_name_1910)
lon_tas_h_4 <- ncvar_get(h_4_tas, "lon")
lat_tas_h_4 <- ncvar_get(h_4_tas, "lat")
t_tas_h_4 <- ncvar_get(h_4_tas, "time")
lat_min_tas_h_4 <- min(which(h_4_tas$dim$lat$vals >= -11))
lat_max_tas_h_4 <- max(which(h_4_tas$dim$lat$vals <= -10))
lon_min_tas_h_4 <- min(which(h_4_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_4 <- max(which(h_4_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_4, lat_min_tas_h_4, 1)
count <- c(1, 1, -1)
tas_h_4 <- ncvar_get(h_4_tas, start = start, count = count)
nc_close(h_4_tas)

# tas_h_5: 1930
h_5_tas <- nc_open(tas_file_name_1930)
lon_tas_h_5 <- ncvar_get(h_5_tas, "lon")
lat_tas_h_5 <- ncvar_get(h_5_tas, "lat")
t_tas_h_5 <- ncvar_get(h_5_tas, "time")
lat_min_tas_h_5 <- min(which(h_5_tas$dim$lat$vals >= -11))
lat_max_tas_h_5 <- max(which(h_5_tas$dim$lat$vals <= -10))
lon_min_tas_h_5 <- min(which(h_5_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_5 <- max(which(h_5_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_5, lat_min_tas_h_5, 1)
count <- c(1, 1, -1)
tas_h_5 <- ncvar_get(h_5_tas, start = start, count = count)
nc_close(h_5_tas)

# tas_h_6: 1950
h_6_tas <- nc_open(tas_file_name_1950)
lon_tas_h_6 <- ncvar_get(h_6_tas, "lon")
lat_tas_h_6 <- ncvar_get(h_6_tas, "lat")
t_tas_h_6 <- ncvar_get(h_6_tas, "time")
lat_min_tas_h_6 <- min(which(h_6_tas$dim$lat$vals >= -11))
lat_max_tas_h_6 <- max(which(h_6_tas$dim$lat$vals <= -10))
lon_min_tas_h_6 <- min(which(h_6_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_6 <- max(which(h_6_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_6, lat_min_tas_h_6, 1)
count <- c(1, 1, -1)
tas_h_6 <- ncvar_get(h_6_tas, start = start, count = count)
nc_close(h_6_tas)

# tas_h_7: 1970
h_7_tas <- nc_open(tas_file_name_1970)
lon_tas_h_7 <- ncvar_get(h_7_tas, "lon")
lat_tas_h_7 <- ncvar_get(h_7_tas, "lat")
t_tas_h_7 <- ncvar_get(h_7_tas, "time")
lat_min_tas_h_7 <- min(which(h_7_tas$dim$lat$vals >= -11))
lat_max_tas_h_7 <- max(which(h_7_tas$dim$lat$vals <= -10))
lon_min_tas_h_7 <- min(which(h_7_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_7 <- max(which(h_7_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_7, lat_min_tas_h_7, 1)
count <- c(1, 1, -1)
tas_h_7 <- ncvar_get(h_7_tas, start = start, count = count)
nc_close(h_7_tas)

# tas_h_8: 1990
h_8_tas <- nc_open(tas_file_name_1990)
lon_tas_h_8 <- ncvar_get(h_8_tas, "lon")
lat_tas_h_8 <- ncvar_get(h_8_tas, "lat")
t_tas_h_8 <- ncvar_get(h_8_tas, "time")
lat_min_tas_h_8 <- min(which(h_8_tas$dim$lat$vals >= -11))
lat_max_tas_h_8 <- max(which(h_8_tas$dim$lat$vals <= -10))
lon_min_tas_h_8 <- min(which(h_8_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_8 <- max(which(h_8_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_8, lat_min_tas_h_8, 1)
count <- c(1, 1, -1)
tas_h_8 <- ncvar_get(h_8_tas, start = start, count = count)
nc_close(h_8_tas)

# tas_h_9: 2010
h_9_tas <- nc_open(tas_file_name_2010)
lon_tas_h_9 <- ncvar_get(h_9_tas, "lon")
lat_tas_h_9 <- ncvar_get(h_9_tas, "lat")
t_tas_h_9 <- ncvar_get(h_9_tas, "time")
lat_min_tas_h_9 <- min(which(h_9_tas$dim$lat$vals >= -11))
lat_max_tas_h_9 <- max(which(h_9_tas$dim$lat$vals <= -10))
lon_min_tas_h_9 <- min(which(h_9_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_h_9 <- max(which(h_9_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_h_9, lat_min_tas_h_9, 1)
count <- c(1, 1, -1)
tas_h_9 <- ncvar_get(h_9_tas, start = start, count = count)
nc_close(h_9_tas)

# Predicted models by CMIP6
# tas_p_1: 2015
p_1_tas <- nc_open(tas_file_name_2015)
lon_tas_p_1 <- ncvar_get(p_1_tas, "lon")
lat_tas_p_1 <- ncvar_get(p_1_tas, "lat")
t_tas_p_1 <- ncvar_get(p_1_tas, "time")
lat_min_tas_p_1 <- min(which(p_1_tas$dim$lat$vals >= -11))
lat_max_tas_p_1 <- max(which(p_1_tas$dim$lat$vals <= -10))
lon_min_tas_p_1 <- min(which(p_1_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_p_1 <- max(which(p_1_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_p_1, lat_min_tas_p_1, 1)
count <- c(1, 1, -1)
tas_p_1 <- ncvar_get(p_1_tas, start = start, count = count)
nc_close(p_1_tas)

# tas_p_2: 2035
p_2_tas <- nc_open(tas_file_name_2035)
# print(tas_p_2)
lon_tas_p_2 <- ncvar_get(p_2_tas, "lon")
lat_tas_p_2 <- ncvar_get(p_2_tas, "lat")
t_tas_p_2 <- ncvar_get(p_2_tas, "time")
lat_min_tas_p_2 <- min(which(p_2_tas$dim$lat$vals >= -11))
lat_max_tas_p_2 <- max(which(p_2_tas$dim$lat$vals <= -10))
lon_min_tas_p_2 <- min(which(p_2_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_p_2 <- max(which(p_2_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_p_2, lat_min_tas_p_2, 1)
count <- c(1, 1, -1)
tas_p_2 <- ncvar_get(p_2_tas, start = start, count = count)
nc_close(p_2_tas)

# tas_p_3: 2055
p_3_tas <- nc_open(tas_file_name_2055)
# print(tas_p_3)
lon_tas_p_3 <- ncvar_get(p_3_tas, "lon")
lat_tas_p_3 <- ncvar_get(p_3_tas, "lat")
t_tas_p_3 <- ncvar_get(p_3_tas, "time")
lat_min_tas_p_3 <- min(which(p_3_tas$dim$lat$vals >= -11))
lat_max_tas_p_3 <- max(which(p_3_tas$dim$lat$vals <= -10))
lon_min_tas_p_3 <- min(which(p_3_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_p_3 <- max(which(p_3_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_p_3, lat_min_tas_p_3, 1)
count <- c(1, 1, -1)
tas_p_3 <- ncvar_get(p_3_tas, start = start, count = count)
nc_close(p_3_tas)

# tas_p_4: 2075
p_4_tas <- nc_open(tas_file_name_2075)
lon_tas_p_4 <- ncvar_get(p_4_tas, "lon")
lat_tas_p_4 <- ncvar_get(p_4_tas, "lat")
t_tas_p_4 <- ncvar_get(p_4_tas, "time")
lat_min_tas_p_4 <- min(which(p_4_tas$dim$lat$vals >= -11))
lat_max_tas_p_4 <- max(which(p_4_tas$dim$lat$vals <= -10))
lon_min_tas_p_4 <- min(which(p_4_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_p_4 <- max(which(p_4_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_p_4, lat_min_tas_p_4, 1)
count <- c(1, 1, -1)
tas_p_4 <- ncvar_get(p_4_tas, start = start, count = count)
nc_close(p_4_tas)

# tas_p_5: 2095
p_5_tas <- nc_open(tas_file_name_2095)
lon_tas_p_5 <- ncvar_get(p_5_tas, "lon")
lat_tas_p_5 <- ncvar_get(p_5_tas, "lat")
t_tas_p_5 <- ncvar_get(p_5_tas, "time")
lat_min_tas_p_5 <- min(which(p_5_tas$dim$lat$vals >= -11))
lat_max_tas_p_5 <- max(which(p_5_tas$dim$lat$vals <= -10))
lon_min_tas_p_5 <- min(which(p_5_tas$dim$lon$vals >= 180 + 52))
lon_max_tas_p_5 <- max(which(p_5_tas$dim$lon$vals <= 180 + 53))
start <- c(lon_min_tas_p_5, lat_min_tas_p_5, 1)
count <- c(1, 1, -1)
tas_p_5 <- ncvar_get(p_5_tas, start = start, count = count)
nc_close(p_5_tas)
####################

# Work with years
# Create auxiliary vectors
days_of_year <- 365    # Not considering leap years
years_interval <- c(1:20)
year_vector <- rep(days_of_year, times = 20)
vector <- c(0, years_interval * year_vector)
vector_to_h_9 <- c(0,  365,  730, 1095, 1460, 1825)   # h_9 has only 5 years count
vector_to_p_5 <- c(0,  365,  730, 1095, 1460, 1825, 2190)   # p_5 has only 6 years count

# Create data frames with daily precipitation for the years of 1850 to 2100
tas_1850_1869 <- list()
tas_1870_1889 <- list()
tas_1890_1909 <- list()
tas_1910_1929 <- list()
tas_1930_1949 <- list()
tas_1950_1969 <- list()
tas_1970_1989 <- list()
tas_1990_2009 <- list()
tas_2010_2014 <- list()
tas_2015_2034 <- list()
tas_2035_2054 <- list()
tas_2055_2074 <- list()
tas_2075_2094 <- list()
tas_2095_2100 <- list()

tas_h_1_matrix <- matrix(tas_h_1)
tas_h_2_matrix <- matrix(tas_h_2)
tas_h_3_matrix <- matrix(tas_h_3)
tas_h_4_matrix <- matrix(tas_h_4)
tas_h_5_matrix <- matrix(tas_h_5)
tas_h_6_matrix <- matrix(tas_h_6)
tas_h_7_matrix <- matrix(tas_h_7)
tas_h_8_matrix <- matrix(tas_h_8)
tas_h_9_matrix <- matrix(tas_h_9)
tas_p_1_matrix <- matrix(tas_p_1)
tas_p_2_matrix <- matrix(tas_p_2)
tas_p_3_matrix <- matrix(tas_p_3)
tas_p_4_matrix <- matrix(tas_p_4)
tas_p_5_matrix <- matrix(tas_p_5)

i <- 1
for (i in 1:20){
  tas_1850_1869[i] <- data.frame(tas_h_1_matrix[(vector[i] + 1):vector[i+1],])
  tas_1870_1889[i] <- data.frame(tas_h_2_matrix[(vector[i] + 1):vector[i+1],])
  tas_1890_1909[i] <- data.frame(tas_h_3_matrix[(vector[i] + 1):vector[i+1],])
  tas_1910_1929[i] <- data.frame(tas_h_4_matrix[(vector[i] + 1):vector[i+1],])
  tas_1930_1949[i] <- data.frame(tas_h_5_matrix[(vector[i] + 1):vector[i+1],])
  tas_1950_1969[i] <- data.frame(tas_h_6_matrix[(vector[i] + 1):vector[i+1],])
  tas_1970_1989[i] <- data.frame(tas_h_7_matrix[(vector[i] + 1):vector[i+1],])
  tas_1990_2009[i] <- data.frame(tas_h_8_matrix[(vector[i] + 1):vector[i+1],])
  tas_2015_2034[i] <- data.frame(tas_p_1_matrix[(vector[i] + 1):vector[i+1],])
  tas_2035_2054[i] <- data.frame(tas_p_2_matrix[(vector[i] + 1):vector[i+1],])
  tas_2055_2074[i] <- data.frame(tas_p_3_matrix[(vector[i] + 1):vector[i+1],])
  tas_2075_2094[i] <- data.frame(tas_p_4_matrix[(vector[i] + 1):vector[i+1],])
  i <- i + 1
}

j <- 1
for (j in 1:5){
  tas_2010_2014[j] <- data.frame(tas_h_9_matrix[(vector_to_h_9[j] + 1):vector_to_h_9[j+1],])
  j <- j + 1
}

k <- 1
for (k in 1:6){
  tas_2095_2100[k] <- data.frame(tas_p_5_matrix[(vector_to_p_5[k] + 1):vector_to_p_5[k+1],])
  k <- k + 1
}

# Create more auxiliary vectors
vector_1850_1869 <- c(1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864,
                          1865, 1866, 1867, 1868, 1869)
vector_2010_2014 <- c(2010, 2011, 2012, 2013, 2014)
vector_2015_2034 <- c(2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029,
                          2030, 2031, 2032, 2033, 2034)
vector_2095_2100 <- c(2095, 2096, 2097, 2098, 2099, 2100)

tas_1850_1869_df <- data.frame(tas_1850_1869)
tas_1870_1889_df <- data.frame(tas_1870_1889)
tas_1890_1909_df <- data.frame(tas_1890_1909)
tas_1910_1929_df <- data.frame(tas_1910_1929)
tas_1930_1949_df <- data.frame(tas_1930_1949)
tas_1950_1969_df <- data.frame(tas_1950_1969)
tas_1970_1989_df <- data.frame(tas_1970_1989)
tas_1990_2009_df <- data.frame(tas_1990_2009)
tas_2010_2014_df <- data.frame(tas_2010_2014)
tas_2015_2034_df <- data.frame(tas_2015_2034)
tas_2035_2054_df <- data.frame(tas_2035_2054)
tas_2055_2074_df <- data.frame(tas_2055_2074)
tas_2075_2094_df <- data.frame(tas_2075_2094)
tas_2095_2100_df <- data.frame(tas_2095_2100)

colnames(tas_1850_1869_df) <- vector_1850_1869
colnames(tas_1870_1889_df) <- vector_1850_1869 + 20
colnames(tas_1890_1909_df) <- vector_1850_1869 + 40
colnames(tas_1910_1929_df) <- vector_1850_1869 + 60
colnames(tas_1930_1949_df) <- vector_1850_1869 + 80
colnames(tas_1950_1969_df) <- vector_1850_1869 + 100
colnames(tas_1970_1989_df) <- vector_1850_1869 + 120
colnames(tas_1990_2009_df) <- vector_1850_1869 + 140
colnames(tas_2010_2014_df) <- vector_2010_2014
colnames(tas_2015_2034_df) <- vector_2015_2034
colnames(tas_2035_2054_df) <- vector_2015_2034 + 20
colnames(tas_2055_2074_df) <- vector_2015_2034 + 40
colnames(tas_2075_2094_df) <- vector_2015_2034 + 60
colnames(tas_2095_2100_df) <- vector_2095_2100

# Conbine each interval to a larger data frame
# Historical precipitation
tas_h <- cbind(tas_1850_1869_df, tas_1870_1889_df, tas_1890_1909_df, tas_1910_1929_df, tas_1930_1949_df, tas_1950_1969_df,
              tas_1970_1989_df, tas_1990_2009_df, tas_2010_2014_df)

# predicted temperature
tas_p <- cbind(tas_2015_2034_df, tas_2035_2054_df, tas_2055_2074_df, tas_2075_2094_df, tas_2095_2100_df)

# Kelvin to degree Celsius
tas_h_C <- tas_h - 273.15
tas_p_C <- tas_p - 273.15

# Plot and save a PNG file of temperature of 160 years of historical data and the year of 2070
png("tas_historical_vs_2070.png", width = 700, height = 400, res = 115)
par(mfrow=c(1,1), family = "serif")
matplot(x = c(1:365), y = tas_h_C, type = 'l', col = 'gray', lwd = 1,
        xaxt = 'n', bty = 'n', xlab = "Months", ylab = "",
        cex.lab = 1, cex.main = 1.2, main = "Temperature is higher in 2070 compared to historical data")
lines(x = c(1:365), y = tas_p_C$`2070`, col = 'red', lwd = 1.5)
axis(1, at = seq(15, 365, by = 30),
     labels = c("Jan", "Feb", "Mar", "Atas", "Mai", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
     las = 2, line = 0, lwd = 0.5)
title(ylab = bquote("Daily temperature [ºC]"), line = 2.5)
legend(200, 29, legend = c("Years of 1850-2010 \nsuperposed", "2070"),
       col=c("gray", "red"), lty=1:1, cex=0.8, text.font = 3, box.lty = 0)
dev.off()

# Work with average of temperature for each 20 year interval
# Compute the average of all daily temperature of historical and predicted data --- daily 'tas' turns into yearly 'tas'
tas_h_avg <- data.frame(colMeans(tas_h))
tas_p_avg <- data.frame(colMeans(tas_p))
colnames(tas_h_avg) <- "avg tas"
colnames(tas_p_avg) <- "avg tas"

# Combine in a larger data frame
tas_avg_year <- rbind(tas_h_avg, tas_p_avg)

# Visualize
matplot(y = tas_avg_year, type = 'h', col = 'black', lwd = 15,
        bty = 'n', xlab = "", ylab = "",
        cex.lab = 1, cex.main = 1.2, main = "Temperature in 2075-2095 is the larger in the period")

# Make data frames --- yearly mean 'tas' turns into the mean of 20 years intervals
tas_avg_1 <- data.frame(mean(tas_h_avg[1:20,]))
tas_avg_2 <- data.frame(mean(tas_h_avg[21:40,]))
tas_avg_3 <- data.frame(mean(tas_h_avg[41:60,]))
tas_avg_4 <- data.frame(mean(tas_h_avg[61:80,]))
tas_avg_5 <- data.frame(mean(tas_h_avg[81:100,]))
tas_avg_6 <- data.frame(mean(tas_h_avg[101:120,]))
tas_avg_7 <- data.frame(mean(tas_h_avg[121:140,]))
tas_avg_8 <- data.frame(mean(tas_h_avg[141:160,]))
tas_avg_9 <- data.frame(mean(tas_h_avg[161:165,]))
tas_avg_10 <- data.frame(mean(tas_p_avg[1:20,]))
tas_avg_11 <- data.frame(mean(tas_p_avg[21:40,]))
tas_avg_12 <- data.frame(mean(tas_p_avg[41:60,]))
tas_avg_13 <- data.frame(mean(tas_p_avg[61:80,]))
tas_avg_14 <- data.frame(mean(tas_p_avg[81:86,]))
colnames(tas_avg_1) <- "tas_avg"
colnames(tas_avg_2) <- "tas_avg"
colnames(tas_avg_3) <- "tas_avg"
colnames(tas_avg_4) <- "tas_avg"
colnames(tas_avg_5) <- "tas_avg"
colnames(tas_avg_6) <- "tas_avg"
colnames(tas_avg_7) <- "tas_avg"
colnames(tas_avg_8) <- "tas_avg"
colnames(tas_avg_9) <- "tas_avg"
colnames(tas_avg_10) <- "tas_avg"
colnames(tas_avg_11) <- "tas_avg"
colnames(tas_avg_12) <- "tas_avg"
colnames(tas_avg_13) <- "tas_avg"
colnames(tas_avg_14) <- "tas_avg"

# Combine data frames
tas_avg <- rbind(tas_avg_1, tas_avg_2, tas_avg_3, tas_avg_4, tas_avg_5, tas_avg_6, tas_avg_7, tas_avg_8,
                tas_avg_10, tas_avg_11, tas_avg_12, tas_avg_13)

# Kelvin to degree Celsius
tas_avg_C <- tas_avg - 273.15

# Plot and save a PNG file of temperature of 160 years of historical and predicted data
png("tas_avg_1850-2095.png", width = 700, height = 400, res = 115)
par(mfrow=c(1,1), family = "serif")
matplot(y = tas_avg_C, type = 'h', col = 'black', lwd = 15,
        xaxt = 'n', yaxt = 'n', bty = 'n', xlab = "", ylab = "",
        cex.lab = 1, cex.main = 1.2, main = "Temperature in 2075-2095 is the larger in the period")
axis(1, at = seq(1, 12, by = 1),
     labels = c("1850-1870", "1870-1890", "1890-1910", "1910-1930", "1930-1950", "1950-1970", "1970-1990", "1990-2010",
                "2015-2035", "2035-2055", "2055-2075", "2075-2095"),
     las = 2, line = 0, lwd = 0.5)
axis(2, at = seq(25, 28, by = 1), las=0, line = -0.3, lwd = 0.5)
title(main = "Means in 20 years intervals", cex.main = 1, font.main = 3, line = 0.5)
title(ylab = bquote("Mean temperature  [ºC]"), line = 2.5)
dev.off()
