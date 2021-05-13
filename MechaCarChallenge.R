library(dplyr)

# Read in data
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Linear regression
models <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
               ground_clearance + AWD, data=MechaCar_mpg)

summary(models)

# Read in Suspension_Coil file
Coils <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Total Summary 
Coils %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI))

# Lot Summary






