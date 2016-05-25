setwd("C:/Users/Max Lai/OneDrive/Spring 2016/CS 229/Project/Lending Club/Combined_part_a");
Combined2015 = read.csv("2015part_a.csv", header = FALSE, stringsAsFactors=FALSE);
Combined2015 = Combined2015[2:dim(Combined2015)[1],];
Combined2015 = Combined2015[!(is.na(Combined2015[,4])),];
Combined2015$V2 = as.character(Combined2015$V2);
Combined2015$V4 = as.numeric(Combined2015$V4);
write.csv(Combined2015, "2015part_a_fixed.csv", row.names = FALSE);

