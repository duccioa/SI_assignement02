data(ToothGrowth)
df <- ToothGrowth
rm(ToothGrowth)
df$dose <- as.factor(df$dose)
str(df)
summary(df$len)


hist(df$len, breaks = 30, 
     main = "Tooth growth frequency",
     xlab = "length")
plot(density(df$len), 
     main = "Probability Density Function of the tooth growth")
abline(v = mean(df$len), col = "red")



library(ggplot2)
ggplot(df, aes(dose, len)) + 
    geom_boxplot(aes(fill = dose)) +
    facet_grid(supp ~ .) +
    coord_flip()
    
g <- ggplot(df, aes(x = dose, y = len, fill = dose))
g <- g + geom_violin(col = "black", size = 0.5)
g <- g + facet_grid(supp ~ .)
g <- g + coord_flip()
g

