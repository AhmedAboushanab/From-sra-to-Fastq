#Library stingr to use functin str_detect
library(stringr)
sri<-data.frame(read.delim("sing10st.txt"))
Xlist = list()
#for loop to check the direction of the reads in the fastq files from their names
for(f in 1:nrow(sri)) {
  g = sri[f, 1]
  if(str_detect(g, "_1") == TRUE) {
    print("forward")
    Xlist = append(Xlist, 'forward')
  } else if(str_detect(g, "_2") == TRUE) {
    print("reverse")
    Xlist = append(Xlist, 'reverse')
  } else {
    break
  }
}
write(unlist(Xlist), file = 'Direction', sep = '\n')
#unlist converts a list to a vector
#write just writes the contents to a file but cannot deal with lists just atomic vector format

