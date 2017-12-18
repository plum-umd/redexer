# For `melt`
library(reshape2)
library(DT)
library(dplyr)
library(ggplot2)
library(ggthemes)
library(lattice)
library(latticeExtra)
library(extrafont)
library(grid)
library(gtable)

data <- read.csv("/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/google_survey/final.csv")

chart_sub <- subset(data, select=c("app"))
chart_sub <- unique(chart_sub)

print(paste("There are ",nrow(chart_sub)," apps using Google permissions"))

chart_sub <- unique(data)
#chart_sub$combo <- paste(chart_sub$type,chart_sub$permission,sep=":")
chart_sub$count <- 1
chart_sub_long <- summarise(group_by(chart_sub, app), permlist = toString(permission), total = sum(count))
chart_sub_long$app <- reorder(chart_sub_long$app,chart_sub_long$total)
write.csv(chart_sub_long, file="/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/google_survey/results/PermissionRequests.csv")

# postscript("/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/facebook_survey/PermissionRequests.eps",width=12,heigh=17,horizontal=FALSE,onefile=FALSE,paper="special",colormodel="cmyk",family="Arial")
# #cols <- c("chocolate2","darkgoldenrod2", "darkgreen", "dodgerblue3", "antiquewhite1","hotpink2")
# p10 <- ggplot(chart_sub_long, aes(y=total, x=app)) + geom_bar(stat="identity") + coord_flip()
# p10 <- p10 + geom_text(data=chart_sub_long, aes(x = app, y=total+.3, label = total), 
#           size=6) + theme(text=element_text(family="Arial",size=22),legend.title = element_blank(),axis.title.y=element_blank(),legend.position="bottom")
# p10 <- p10 + labs(y="Permission Count") + ggtitle("Permissions Requested per App")
# print(p10)
# dev.off
