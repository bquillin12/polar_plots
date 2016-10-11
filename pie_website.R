##################################
### Pie charts as infographics ###
### IWT website ##################
##################################

# packages
library(ggplot2)

# load data
pie <- read.csv("pie.csv", sep = ",", header = TRUE)
levels(pie$activity) <- gsub(" ", "\n", levels(pie$activity)) # puts line breaks in spaces on axis labels

# create counterfactul pie
ggplot(data = pie, aes(x = activity, y = usual, fill = usual)) +
  geom_bar(stat = "identity") +
  labs(fill = "") +
  ylab("") +
  xlab("") +
  coord_polar(theta = "x") +
  theme(legend.position = "none") +
  theme(axis.text = element_text(size = 5))

# create IWT pie
ggplot(data = pie, aes(x = activity, y = IWT, fill = IWT)) +
  geom_bar(stat = "identity") +
  labs(fill = "") +
  ylab("") +
  xlab("") +
  coord_polar(theta = "x") +
  theme(legend.position = "none") +
  theme(axis.text = element_text(size = 5)) 



