setwd("C:/Users/Max Lai/OneDrive/Spring 2016/CS 229/Project/Lending Club/Rejected")
data_matrix =read.csv("RejectStats2007-12.csv", header = FALSE, stringsAsFactors=FALSE)

a=data_matrix

#remove intro
a = a[2:dim(a)[1],];



Rejected2007 = a[1:5276,];
Rejected2008 = a[5277:30894,];
Rejected2009 = a[30895:87909,];
Rejected2010 = a[87910:200515,];
Rejected2011 = a[200516:418355,];
Rejected2012 = a[418356:dim(a)[1],];
write.csv(Rejected2007, "RejectStats2007.csv", row.names = FALSE);
write.csv(Rejected2008, "RejectStats2008.csv", row.names = FALSE);
write.csv(Rejected2009, "RejectStats2009.csv", row.names = FALSE);
write.csv(Rejected2010, "RejectStats2010.csv", row.names = FALSE);
write.csv(Rejected2011, "RejectStats2011.csv", row.names = FALSE);
write.csv(Rejected2012, "RejectStats2012.csv", row.names = FALSE);
write.csv(year2013, "RejectStats2013.csv", row.names = FALSE);
write.csv(year2014, "RejectStats2014.csv", row.names = FALSE);

