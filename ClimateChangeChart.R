# title: Map any region of the world
# author: FelixAnalytix.com


## ----Install and load R packages-----------------
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("rnaturalearth")) install.packages("rnaturalearth")
if (!require("sf")) install.packages("sf")
if (!require("wbstats")) install.packages("wbstats")

library(tidyverse)
library(rnaturalearth) # World Map Data from Natural Earth
library(sf) # Geographic Simple Features in R
library(wbstats) # access World Bank API


## ----Download world data-------------------------
world <- ne_countries(scale="medium", returnclass="sf") %>%
  filter(admin != "Antarctica")



target_crs <- "+proj=moll"

world_moll <- world %>%
  st_transform(crs = target_crs)


# https://data.worldbank.org/indicator/EN.ATM.CO2E.PC
ind <- "EN.ATM.CO2E.PC"

indicator_info <- wb_cachelist$indicators %>%
  filter(indicator_id == ind)

indicator_info$indicator

#1990
df <- wb_data(ind, start_date = 1990) %>%
  filter(date == 1990)

glimpse(df)


df %>%
  ggplot() +
  geom_histogram(aes(EN.ATM.CO2E.PC)) +
  theme_minimal() +
  scale_x_sqrt()


world_moll %>%
  left_join(df, by = c("iso_a3" = "iso3c")) %>%
  ggplot() +
  geom_sf(aes(fill = EN.ATM.CO2E.PC)) +
  scale_fill_viridis_c(
    trans = "sqrt",
    labels = scales::number_format(scale = 1),
    breaks = c(1:5)^2) +
  # fix labels if needed: https://stackoverflow.com/a/60733863
  scale_x_continuous(labels = function(x) paste0(x, '\u00B0', "W")) +
  scale_y_continuous(labels = function(x) paste0(x, '\u00B0', "N")) +
  theme_bw() +
  theme(panel.background = element_rect(fill = "aliceblue")) +
  labs(
    title = paste(unique(df$date), indicator_info$indicator),
    fill = NULL,
  )


## ----Create bounding box-------------------------
# Choose manually the region to plot with Open Street Map
# https://www.openstreetmap.org/export
window_coord <- st_sfc(
  st_point(c(-18, 32.5)), #left, bottom
  st_point(c(40.4, 72.3)), #right, top
  crs = 4326 #the EPSG identifier of WGS84 (used in GPS)
)

window_coord_sf <- window_coord %>%
  st_transform(crs = target_crs) %>%
  st_coordinates() # retrieve coordinates
Sys.sleep(2)
#1991
df <- wb_data(ind, start_date = 1991) %>%
  filter(date == 1991)

glimpse(df)


df %>%
  ggplot() +
  geom_histogram(aes(EN.ATM.CO2E.PC)) +
  theme_minimal() +
  scale_x_sqrt()


world_moll %>%
  left_join(df, by = c("iso_a3" = "iso3c")) %>%
  ggplot() +
  geom_sf(aes(fill = EN.ATM.CO2E.PC)) +
  scale_fill_viridis_c(
    trans = "sqrt",
    labels = scales::number_format(scale = 1),
    breaks = c(1:5)^2) +
  # fix labels if needed: https://stackoverflow.com/a/60733863
  scale_x_continuous(labels = function(x) paste0(x, '\u00B0', "W")) +
  scale_y_continuous(labels = function(x) paste0(x, '\u00B0', "N")) +
  theme_bw() +
  theme(panel.background = element_rect(fill = "aliceblue")) +
  labs(
    title = paste(unique(df$date), indicator_info$indicator),
    fill = NULL,
  )


## ----Create bounding box-------------------------
# Choose manually the region to plot with Open Street Map
# https://www.openstreetmap.org/export
window_coord <- st_sfc(
  st_point(c(-18, 32.5)), #left, bottom
  st_point(c(40.4, 72.3)), #right, top
  crs = 4326 #the EPSG identifier of WGS84 (used in GPS)
)

window_coord_sf <- window_coord %>%
  st_transform(crs = target_crs) %>%
  st_coordinates() # retrieve coordinates
Sys.sleep(2)
#1992
df <- wb_data(ind, start_date = 1992) %>%
  filter(date == 1992)

glimpse(df)


df %>%
  ggplot() +
  geom_histogram(aes(EN.ATM.CO2E.PC)) +
  theme_minimal() +
  scale_x_sqrt()


world_moll %>%
  left_join(df, by = c("iso_a3" = "iso3c")) %>%
  ggplot() +
  geom_sf(aes(fill = EN.ATM.CO2E.PC)) +
  scale_fill_viridis_c(
    trans = "sqrt",
    labels = scales::number_format(scale = 1),
    breaks = c(1:5)^2) +
  # fix labels if needed: https://stackoverflow.com/a/60733863
  scale_x_continuous(labels = function(x) paste0(x, '\u00B0', "W")) +
  scale_y_continuous(labels = function(x) paste0(x, '\u00B0', "N")) +
  theme_bw() +
  theme(panel.background = element_rect(fill = "aliceblue")) +
  labs(
    title = paste(unique(df$date), indicator_info$indicator),
    fill = NULL,
  )


## ----Create bounding box-------------------------
# Choose manually the region to plot with Open Street Map
# https://www.openstreetmap.org/export
window_coord <- st_sfc(
  st_point(c(-18, 32.5)), #left, bottom
  st_point(c(40.4, 72.3)), #right, top
  crs = 4326 #the EPSG identifier of WGS84 (used in GPS)
)

window_coord_sf <- window_coord %>%
  st_transform(crs = target_crs) %>%
  st_coordinates() # retrieve coordinates
Sys.sleep(2)
#1993
df <- wb_data(ind, start_date = 1993) %>%
  filter(date == 1993)

glimpse(df)


df %>%
  ggplot() +
  geom_histogram(aes(EN.ATM.CO2E.PC)) +
  theme_minimal() +
  scale_x_sqrt()


world_moll %>%
  left_join(df, by = c("iso_a3" = "iso3c")) %>%
  ggplot() +
  geom_sf(aes(fill = EN.ATM.CO2E.PC)) +
  scale_fill_viridis_c(
    trans = "sqrt",
    labels = scales::number_format(scale = 1),
    breaks = c(1:5)^2) +
  # fix labels if needed: https://stackoverflow.com/a/60733863
  scale_x_continuous(labels = function(x) paste0(x, '\u00B0', "W")) +
  scale_y_continuous(labels = function(x) paste0(x, '\u00B0', "N")) +
  theme_bw() +
  theme(panel.background = element_rect(fill = "aliceblue")) +
  labs(
    title = paste(unique(df$date), indicator_info$indicator),
    fill = NULL,
  )


## ----Create bounding box-------------------------
# Choose manually the region to plot with Open Street Map
# https://www.openstreetmap.org/export
window_coord <- st_sfc(
  st_point(c(-18, 32.5)), #left, bottom
  st_point(c(40.4, 72.3)), #right, top
  crs = 4326 #the EPSG identifier of WGS84 (used in GPS)
)

window_coord_sf <- window_coord %>%
  st_transform(crs = target_crs) %>%
  st_coordinates() # retrieve coordinates
Sys.sleep(2)
