setwd("C:/Antonia/Module/Bioinformatik/Übungen")
data <- read.table("4_human_ACTG_Isoforms.txt", header=F, sep="\t")
MSA_split <- strsplit(data$V1,"")

MSA <- as.data.frame(MSA_split)
for (i in 1:9){
  names(MSA) <- seq(i)}

MSA_table <- t(MSA)

for (i in 1:180){
 print(c(sort(MSA_table[i]), decreasing=TRUE) [1])
  }




