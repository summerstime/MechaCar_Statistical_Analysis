library("dplyr")
library("tidyverse")

mechaCar <- read.csv(file="MechaCar_mpg.csv")
head(mechaCar)
model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar))
summarize(mechaCar)


suspension <- read.csv(file="Suspension_Coil.csv")
head(suspension)
summary(suspension)
total_summary <- summarize(suspension, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

view(total_summary)

lot_summary <- summarize(group_by(suspension, Manufacturing_Lot), Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
view(lot_summary)

class(suspension$PSI)
boxplot(suspension$PSI)

subset1 <- subset(suspension, Manufacturing_Lot == "Lot1")
subset2 <- subset(suspension, Manufacturing_Lot == "Lot2")
subset3 <- subset(suspension, Manufacturing_Lot == "Lot3")
t.test(suspension$PSI, mu=1500)
t.test(subset1$PSI, mu=1500)
t.test(subset2$PSI, mu=1500)
t.test(subset3$PSI, mu=1500)