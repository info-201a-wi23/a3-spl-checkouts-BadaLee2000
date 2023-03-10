seattle_df <- read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = TRUE)
x_values <- seq(1, 3)
y_values <- seq(1,3)


trend2 <- seattle_df %>%  filter(MaterialType == "EBOOK") %>% filter(CheckoutYear != 2023) 


library(ggplot2)
ggplot(trend2) +
  geom_col(aes(x=CheckoutMonth, y = Checkouts, fill = Checkouts)) +
  labs(title = "Number of Checkouts for EBooks in 2022",
       x = "Months",
       y = "Checkouts") 
