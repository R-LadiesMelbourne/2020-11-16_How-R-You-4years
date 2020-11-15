#How to Generate Word Clouds in R (The simplest way)


library(wordcloud) #wordcloud for generating word cloud images

library(RColorBrewer) #RColorBrewer for color palettes

words <- c("RLadies", "Rmarkdown", "tips", "tricks", "script", "rmd", "console", "packages", "share", "4thanniversary", "celebrate", 
           "RSoftware", "Australia", "Melbourne", "Girls", "Learn","Teach", "Data Structure", "Algorithm", "Visualisation", 
           "Code", "Data", "ggplot2", "Zoom", "Help", "Text", "RStudio", "programing", "questions", "answers", "Plot", "happy")

freqs <- c(980, 900, 498, 811, 800, 654, 489, 90, 254, 500, 600, 200, 488, 400, 140, 250, 357, 789, 147, 120, 590, 741, 100, 788, 812, 693, 410, 753, 95, 80, 594, 644)

set.seed(3)

wordcloud(words = words,freqs = freqs, scale=c(4,.4), max.words = 1000, random.order=TRUE, random.color=TRUE, colors = brewer.pal(8, "Accent"))
