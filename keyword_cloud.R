chudong_seoulg <- read.csv("chudong_seoulg.csv")
chudong_seoulgex <- read.csv("chudong_seoulgex.csv")
maebong_ch <- read.csv("maebong_ch.csv")
maebong_chex <- read.csv("maebong_chex.csv")
walpyeong_ch <- read.csv("walpyeong_ch.csv")
walpyeong_chex <- read.csv("walpyeong_chex.csv")
youngheong_seoulg <- read.csv("youngheong_seoulg.csv")
youngheong_seoulgex <- read.csv("youngheong_seoulgex.csv")
zikdong_seoulg <- read.csv("zikdong_seoulg.csv")
zikdong_seoulgex <- read.csv("zikdong_seoulgex.csv")
mingan_all <- read.csv("mingan_all.csv")

chudong_seoulg <- chudong_seoulg[which(chudong_seoulg$Freq > 1), ]
chudong_seoulgex <- chudong_seoulgex[which(chudong_seoulgex$Freq > 1), ]
maebong_ch <- maebong_ch[which(maebong_ch$Freq > 1), ]
maebong_chex <- maebong_chex[which(maebong_chex$Freq > 1), ]
walpyeong_ch <- walpyeong_ch[which(walpyeong_ch$Freq > 1), ]
walpyeong_chex <- walpyeong_chex[which(walpyeong_chex$Freq > 1), ]
youngheong_seoulg <- youngheong_seoulg[which(youngheong_seoulg$Freq > 1), ]
youngheong_seoulgex <- youngheong_seoulgex[which(youngheong_seoulgex$Freq > 1), ]
zikdong_seoulg <- zikdong_seoulg[which(zikdong_seoulg$Freq > 1), ]
zikdong_seoulgex <- zikdong_seoulgex[which(zikdong_seoulgex$Freq > 1), ]
mingan_all <- mingan_all[which(mingan_all$Freq > 100), ]

dogewi <- df_count[which(df_count$Freq > 300), ]
dogongwi <- df_count2[which(df_count2$Freq > 50), ]

wordcloud2(dogewi, minRotation = 0, maxRotation = 0, 
           size = 1.1, fontFamily = "NanumSquare")
wordcloud2(dogongwi, minRotation = 0, maxRotation = 0, 
           size = 1.2, fontFamily = "NanumSquare")

write.csv(dogewi, "dogewi.csv")
write.csv(dogongwi, "dogongwi.csv")

write.csv(chudong_seoulg, "chudong_seoulg.csv")
write.csv(chudong_seoulgex, "chudong_seoulgex.csv")
write.csv(maebong_ch, "maebong_ch.csv")
write.csv(maebong_chex, "maebong_chex.csv")
write.csv(walpyeong_ch, "walpyeong_ch.csv")
write.csv(walpyeong_chex, "walpyeong_chex.csv")
write.csv(youngheong_seoulg, "youngheong_seoulg.csv")
write.csv(youngheong_seoulgex, "youngheong_seoulgex.csv")
write.csv(zikdong_seoulg, "zikdong_seoulg.csv")
write.csv(zikdong_seoulgex, "zikdong_seoulgex.csv")
write.csv(mingan_all, "mingan_all.csv")
