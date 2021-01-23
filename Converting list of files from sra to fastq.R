sri<-data.frame(read.delim("data1-10.txt"))
for(f in 1:nrow(sri)) {
  g = sri[f, 1]
  cmd = paste("fastq-dump --split-3", g)
  cat(cmd,"\n")#print the current command
  system(cmd) # invoke command
}


