df <- read.csv("activity/activity.csv")
df <- na.omit(df)
rownames(df) <- NULL
head(df)

total_steps <- tapply(df$steps, df$date, sum, na.rm = TRUE)

#tapply(df$steps, df$date, sum)

total_steps

hist(total_steps)

me <- mean(total_steps)

md <- median(total_steps)