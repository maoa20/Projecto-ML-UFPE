#----------------------------------------------------------------------------
# Librerias
#----------------------------------------------------------------------------

library(readxl)
library(scales)
library(tidyverse)
library(cluster)

#----------------------------------------------------------------------------
# Paths
#----------------------------------------------------------------------------

url <- "../Documents/Master_UFPE/Primer Semestre/Aprendizagem de Máquina/Projecto/dataset_14_mfeat-fourier.xlsx"
url2 <- "../Documents/Master_UFPE/Primer Semestre/Aprendizagem de Máquina/Projecto/mfeat-fac.xlsx"
url3 <- "../Documents/Master_UFPE/Primer Semestre/Aprendizagem de Máquina/Projecto/mfeat-kar.xlsx"

#----------------------------------------------------------------------------
# Reading, Standarization and Dissimilarities Object
#----------------------------------------------------------------------------

fourier.z <- read_excel(url) %>% 
  daisy(metric = c("euclidean"), stand = T)
  

fact.z <- read_excel(url2, col_names = F) %>% 
  daisy(metric = c("euclidean"), stand = T)

kar.z <- read_excel(url3, col_names = F) %>% 
  daisy(metric = c("euclidean"), stand = T)


