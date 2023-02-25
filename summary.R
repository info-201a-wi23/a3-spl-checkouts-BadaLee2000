library(dplyr)
library(ggplot2)

seattle_df <- read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

seattle_df %>% filter(MaterialType == "EBOOK") %>% summarize(avg = mean(Checkouts))
seattle_df %>% filter(MaterialType == "BOOK") %>% summarize(avg = mean(Checkouts))
seattle_df %>% filter(MaterialType == "AUDIOBOOK") %>% summarize(avg = mean(Checkouts))
seattle_df %>% filter(MaterialType == "SOUNDDISC") %>% summarize(avg = mean(Checkouts))

seattle_df %>% group_by(CheckoutMonth) %>% filter(MaterialType == "EBOOK") %>% summarize(number = max(Checkouts))

seattle_df %>% group_by(CheckoutMonth) %>% filter(MaterialType == "BOOK") %>% filter(CheckoutYear != 2023) %>% summarize(avg = mean(Checkouts))
