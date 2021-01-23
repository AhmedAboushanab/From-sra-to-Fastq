#Set up directory 
Direction <- read.delim('Direction', header = F)
File_names <-read.delim('sample-ids.txt', header = F)
paths <- read.delim('listOfFiles.list', header = F)
#Combine all the files into one file
total <- data.frame(File_names, paths, Direction)
#Transform the dataframe into an array to remove the row numbers from the file
total2 <- array(total)
#build a headless csv file
write.csv(total2, file = 'file_manifest.csv', row.names = F)
#read the headless csv file 
File <- read.csv("file_manifest.csv", header = F)
#set column names to the file
colnames(File) <- c("sample-id", 'Absolute-filepath', 'direction')
#build a csv file with column names
write.csv(File, file = 'file_manifest2.csv', row.names = F)
#Remove the headless csv file
cmd <-paste('rm file_manifest.csv')
system(cmd)
