library("dplyr")
library("tidyverse")

mechaCar <- read.csv(file="MechaCar_mpg.csv")
head(mechaCar)
model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar))
summarize(mechaCar)
