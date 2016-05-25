setwd("C:/Users/Max Lai/OneDrive/Spring 2016/CS 229/Project/Lending Club/Successful/Cleaned_part1")
Successful2015 = read.csv("2015 successful cleaned (for part 1).csv", header = FALSE, stringsAsFactors=FALSE)


b=Successful2015

#remove intro
b = b[2:dim(b)[1],];
#remove columns
b = b[,-c(4,6,9)];
#remove na
b = b[b[,6] !='n/a',]
#fix %/- signs
remove_percentage = function(arg1){
  size = nchar(arg1);
  arg1 = substr(arg1, 1, size-1)
}

ir = do.call(rbind, lapply(b[1:dim(b)[1],4], remove_percentage));
b[1:dim(b)[1],4] = ir

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

years = do.call(rbind, lapply(b[1:dim(b)[1],6], clean_years));
b[1:dim(b)[1],6] = years


#for success
b$v7 = "SUCCESS"

final_matrix = rbind(b, a)
final_matrix$V1 = as.numeric(final_matrix$V1) 
final_matrix$V5 = as.numeric(final_matrix$V5) 
final_matrix$V8 = as.numeric(final_matrix$V8) 

setwd("C:/Users/Max Lai/OneDrive/Spring 2016/CS 229/Project/Lending Club/Combined_part_a")
write.csv(final_matrix, "2015part_a.csv", row.names = FALSE);
