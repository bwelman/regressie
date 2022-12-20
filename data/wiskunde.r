# import data uit SPSS bestand
library(Hmisc)
mydata <- spss.get("wiskunde.sav", use.value.labels = TRUE)
# De laatste optie converteert value labels naar R factors
# converteer naar csv voor mogelijke import in Excel en R
write.csv(mydata, file = "wiskunde.csv", row.names = FALSE)

#spss bestanden kunnen ook met tidyverse package haven worden ingelezen
# echter geen optie voor conversie naar factors
# Voor mogelijkheid zie https://haven.tidyverse.org/reference/as_factor.html
library(haven)
wiskunde <- read_sav("data/wiskunde.sav") %>% 
	as_factor(only_labelled = TRUE)

