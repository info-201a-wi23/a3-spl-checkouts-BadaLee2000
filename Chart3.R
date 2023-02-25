seattle_df <- read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = TRUE)
x_values <- seq(1, 3)
y_values <- seq(1,3)
library(dplyr)


seattle_df %>% filter(MaterialType == "SOUNDDISC") %>% summarize()

trend1 <- seattle_df %>%  filter(MaterialType == "SOUNDDISC") %>% 
  filter(CheckoutMonth != 1) 

library(ggplot2)
ggplot(trend1) +
  geom_col(aes(x=CheckoutMonth, y = Checkouts, fill = Checkouts)) +
  labs(title = "Number of Checkouts for SOUND DISC in 2022",
       x = "Months",
       y = "Checkouts") 
