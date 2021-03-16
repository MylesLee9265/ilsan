library(readxl)

chudong_seoulg <- read_excel("data/chudong_seoulg.xlsx")
chudong_seoulgex <- read_excel("data/chudong_seoulgex.xlsx")
maebong_ch <- read_excel("data/maebong_ch.xlsx")
maebong_chex <- read_excel("data/maebong_chex.xlsx")
walpyeong_ch <- read_excel("data/walpyeong_ch.xlsx")
walpyeong_chex <- read_excel("data/walpyeong_chex.xlsx")
youngheong_seoulg <- read_excel("data/youngheong_seoulg.xlsx")
youngheong_seoulgex <- read_excel("data/youngheong_seoulgex.xlsx")
zikdong_seoulg <- read_excel("data/zikdong_seoulg.xlsx")
zikdong_seoulgex <- read_excel("data/zikdong_seoulgex.xlsx")
mingan_all <- read_excel("data/mingan_all.xlsx")


dogewi <- read_excel("data/dogewi.xlsx")
dogongwi <- read_excel("data/dogongwi.xlsx")


data <- list(chudong_seoulg = chudong_seoulg,
             chudong_seoulgex = chudong_seoulgex,
             maebong_ch = maebong_ch,
             maebong_chex = maebong_chex,
             walpyeong_ch = walpyeong_ch,
             walpyeong_chex = walpyeong_chex,
             youngheong_seoulg = youngheong_seoulg,
             youngheong_seoulgex = youngheong_seoulgex,
             zikdong_seoulg = zikdong_seoulg,
             zikdong_seoulgex = zikdong_seoulgex,
             mingan_all = mingan_all)

save(data, file = "ilsan_gb_park_data.RData")

load("ilsan_park_data.RData")
