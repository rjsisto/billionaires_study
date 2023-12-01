packages = read.table("/home/project/R-requirements.txt", header=F)$V1
update.packages(ask=F)
install.packages(packages)
