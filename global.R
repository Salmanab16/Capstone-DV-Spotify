options(scipen = 99)

library(shiny)
library(shinydashboard)
library(tidyverse)
library(plotly)
library(scales)
library(glue)
library(DT)
library(wordcloud2)
library(readr)
library(dplyr)
library(ggplot2)

spotify <- read_csv("data.csv")
spotify2 <- read_csv("top10s.csv")

spotify_clean1 <- 
  spotify %>% 
  mutate(
    explicit = as.factor(explicit),
    mode = as.factor(mode),
    year = as.numeric(year),
    acousticness = as.numeric(acousticness),
    danceability = as.numeric(danceability),
    energy = as.numeric(energy),
    instrumentalness = as.numeric(instrumentalness),
    liveness = as.numeric(liveness),
    speechiness = as.numeric(speechiness),
    loudness = as.numeric(loudness),
    valence = as.numeric(valence)
    
  )

spotify_clean <- spotify_clean1 %>% arrange(desc(spotify_clean1$year))



