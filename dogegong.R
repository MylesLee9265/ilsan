library(data.table)


date <- as.numeric(dogewi$일자)
keyword <- dogewi$키워드


data1 <- data.frame(date, keyword)


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

date <- as.numeric(dogongwi$일자)
keyword <- dogongwi$키워드

data1 <- data.frame(date, keyword)

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


write.csv(df_count, "dogewi.csv")
write.csv(df_count2, "dogongwi.csv")
