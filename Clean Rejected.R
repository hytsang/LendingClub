setwd("C:/Users/Max Lai/OneDrive/Spring 2016/CS 229/Project/Lending Club/Rejected")
Rejected2015 =read.csv("RejectStats2015.csv", header = FALSE, stringsAsFactors=FALSE)

a=Rejected2015

#remove intro
a = a[3:dim(a)[1],];
#remove columns
a = a[,-c(4,6,9)];
#remove na
a = a[a[,6] !='n/a',]
#format month
a[1:dim(a)[1],2]=substr(a[1:dim(a)[1],2],6,7);
#fix %/- signs
remove_percentage = function(arg1){
  size = nchar(arg1);
  arg1 = substr(arg1, 1, size-1)
}

ir = do.call(rbind, lapply(a[1:dim(a)[1],4], remove_percentage));
a[1:dim(a)[1],4] = ir

#format years of employment
clean_years = function(arg1){
  if(arg1 == "< 1 year"){
    arg1 = "0";
  }else if(arg1 == "1 year"){
    arg1 = "1";
  }else if(arg1 == "2 years"){
    arg1 = "2";
  }else if(arg1 == "3 years"){
    arg1 = "3";
  }else if(arg1 == "4 years"){
    arg1 = "4";
  }else if(arg1 == "5 years"){
    arg1 = "5";
  }else if(arg1 == "6 years"){
    arg1 = "6";
  }else if(arg1 == "7 years"){
    arg1 = "7";
  }else if(arg1 == "8 years"){
    arg1 = "8";
  }else if(arg1 == "9 years"){
    arg1 = "9";
  }else if(arg1 == "10+ years"){
    arg1 = "10";
  }
}

years = do.call(rbind, lapply(a[1:dim(a)[1],6], clean_years));
a[1:dim(a)[1],6] = years

#add outcome
a$v7 = "FAIL"
