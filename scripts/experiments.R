library(tidyverse)
#I'm writing a script to experiment with various things

truth <- 1:10
one_up <- 2:11
hundred_up <- pred1 + 100
rev_up <- 11:2
hundred_rev <- rev_up + 100

seq_5 <- c(1,2,4,5,7,8,10,11,13,14)

combo <- tibble(truth, one_up, hundred_up, rev_up, hundred_rev)

ggplot(combo, aes(pred1, truth)) +
  geom_point()


test_metrics <- metric_set(rmse, rsq)


map(combo %>% select(-truth), ~ test_metrics(combo, truth = truth, estimate = .))

cor(truth, seq_5)
