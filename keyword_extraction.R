library(data.table)

load("ilsan_park_data.RData")

date <- as.numeric(data[["maebong_ch"]][["일자"]])
keyword <- data[["maebong_ch"]][["키워드"]]


data2 <- data.frame(date, keyword)

data1 <- data2[which(data2$date >= 20200701), ]

data_new <- data.table()

n <- nrow(data1)

for (i in 1:n){
  
  print(i)
  
  date_index <- as.character(data1[i, 1])
  keyword_index <- as.character(data1[i, 2])
  
  keyword_index_split_temp <- data.frame(strsplit(keyword_index, split = ","))
  data1_temp <- data.frame(cbind(date_index, keyword_index_split_temp))
  
  names(data1_temp) <- c("date", "keyword")
  
  data_new <- rbind(data_new, data1_temp)
  
}

count <- table(data_new$keyword)

count <- sort(count, decreasing = T)

df_count <- as.data.frame(count, stringsAsFactors = F)
# ------------------------------------------------------------------------------

data1 <- data2[which(data2$date < 20200701), ]

data_new <- data.table()

n <- nrow(data1)

for (i in 1:n){
  
  print(i)
  
  date_index <- as.character(data1[i, 1])
  keyword_index <- as.character(data1[i, 2])
  
  keyword_index_split_temp <- data.frame(strsplit(keyword_index, split = ","))
  data1_temp <- data.frame(cbind(date_index, keyword_index_split_temp))
  
  names(data1_temp) <- c("date", "keyword")
  
  data_new <- rbind(data_new, data1_temp)
  
}

count <- table(data_new$keyword)

count <- sort(count, decreasing = T)

df_count2 <- as.data.frame(count, stringsAsFactors = F)


write.csv(df_count, "maebong_ch_up.csv")
write.csv(df_count2, "maebong_ch_down.csv")
