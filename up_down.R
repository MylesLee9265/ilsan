chudong_seoulg <- read.csv("chudong_seoulg_down.csv")
chudong_seoulgex <- read.csv("chudong_seoulgex_down.csv")
maebong_ch <- read.csv("maebong_ch_down.csv")
maebong_chex <- read.csv("maebong_chex_down.csv")
walpyeong_ch <- read.csv("walpyeong_ch_down.csv")
walpyeong_chex <- read.csv("walpyeong_chex_down.csv")
youngheong_seoulg <- read.csv("youngheong_seoulg_down.csv")
youngheong_seoulgex <- read.csv("youngheong_seoulgex_down.csv")
zikdong_seoulg <- read.csv("zikdong_seoulg_down.csv")
zikdong_seoulgex <- read.csv("zikdong_seoulgex_down.csv")
mingan_all <- read.csv("mingan_all_down.csv")

chudong_seoulg <- chudong_seoulg[which(chudong_seoulg$Freq > 1), -1]
chudong_seoulgex <- chudong_seoulgex[which(chudong_seoulgex$Freq > 1), -1]
maebong_ch <- maebong_ch[which(maebong_ch$Freq > 1), -1]
maebong_chex <- maebong_chex[which(maebong_chex$Freq > 1), -1]
walpyeong_ch <- walpyeong_ch[which(walpyeong_ch$Freq > 1), -1]
walpyeong_chex <- walpyeong_chex[which(walpyeong_chex$Freq > 1), -1]
youngheong_seoulg <- youngheong_seoulg[which(youngheong_seoulg$Freq > 1), -1]
youngheong_seoulgex <- youngheong_seoulgex[which(youngheong_seoulgex$Freq > 1), -1]
zikdong_seoulg <- zikdong_seoulg[which(zikdong_seoulg$Freq > 1), -1]
zikdong_seoulgex <- zikdong_seoulgex[which(zikdong_seoulgex$Freq > 1), -1]
mingan_all <- mingan_all[which(mingan_all$Freq > 10), -1]


wordcloud2(chudong_seoulg, minRotation = 0, maxRotation = 0, 
           size = 0.85, fontFamily = "NanumSquare")
wordcloud2(chudong_seoulgex, minRotation = 0, maxRotation = 0, 
           size = 1.2, fontFamily = "NanumSquare")
wordcloud2(maebong_ch, minRotation = 0, maxRotation = 0, 
           size = 1.1, fontFamily = "NanumSquare")
wordcloud2(maebong_chex, minRotation = 0, maxRotation = 0, 
           size = 1.1, fontFamily = "NanumSquare")
wordcloud2(walpyeong_ch, minRotation = 0, maxRotation = 0, 
           size = 0.9, fontFamily = "NanumSquare")
wordcloud2(walpyeong_chex, minRotation = 0, maxRotation = 0, 
           size = 0.7, fontFamily = "NanumSquare")
wordcloud2(youngheong_seoulg, minRotation = 0, maxRotation = 0, 
           size = 0.8, fontFamily = "NanumSquare")
wordcloud2(youngheong_seoulgex, minRotation = 0, maxRotation = 0, 
           size = 0.9, fontFamily = "NanumSquare")
wordcloud2(zikdong_seoulg, minRotation = 0, maxRotation = 0, 
           size = 0.75, fontFamily = "NanumSquare")
wordcloud2(zikdong_seoulgex, minRotation = 0, maxRotation = 0, 
           size = 1.2, fontFamily = "NanumSquare")
wordcloud2(mingan_all, minRotation = 0, maxRotation = 0, 
           size = 1.2, fontFamily = "NanumSquare")


write.csv(chudong_seoulg, "chudong_seoulg_down.csv")
write.csv(chudong_seoulgex, "chudong_seoulgex_down.csv")
write.csv(maebong_ch, "maebong_ch_down.csv")
write.csv(maebong_chex, "maebong_chex_down.csv")
write.csv(walpyeong_ch, "walpyeong_ch_down.csv")
write.csv(walpyeong_chex, "walpyeong_chex_down.csv")
write.csv(youngheong_seoulg, "youngheong_seoulg_down.csv")
write.csv(youngheong_seoulgex, "youngheong_seoulgex_down.csv")
write.csv(zikdong_seoulg, "zikdong_seoulg_down.csv")
write.csv(zikdong_seoulgex, "zikdong_seoulgex_down.csv")
write.csv(mingan_all, "mingan_all_down.csv")
