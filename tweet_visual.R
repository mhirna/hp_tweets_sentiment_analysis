library(ggplot2)
library(dplyr)
library(tidyverse)

dt = read.csv("tweeter_rowling.csv")
dt <- dt %>%  mutate(date=as.Date(date, format = "%Y-%m-%d"))

ggplot(dt, aes(x=date, y=score_vader, colour=score_vader)) + geom_point() + 
  scale_color_gradientn(colours=c("#ff4b3e", "#e0ff4f", "#04e762"), breaks=c(-0.7,0,0.7), labels=c("Negative", "Neutral", "Positive")) +
  labs(title="J.K. Rowling tweets sentiment analysis during 2009-2016\n", x="year", y="sentiment score") +
  theme(
    legend.justification = c("right", "top"),
    legend.box.just = "right"
   ) +
  labs(color="Sentiment score")
