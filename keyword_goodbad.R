library(wordcloud2)
library(RColorBrewer)

type1 <- zikdong_seoulgex[which(zikdong_seoulgex$type == "Y"), ]
type2 <- zikdong_seoulgex[which(zikdong_seoulgex$type == "N"), ]
wordcloud2(type1, color = type1$col, minRotation = 0, maxRotation = 0, size = 1.2, 
           fontFamily = "NanumSquare")
wordcloud2(type2, color = type2$col, minRotation = 0, maxRotation = 0, size = 1,
           fontFamily = "NanumSquare")

?wordcloud2