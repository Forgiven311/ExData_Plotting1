
#Plot 1
#-----------------------
url <- "./powerdata.txt"
data2 <- read.table(url, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData2 <- data2[data2$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData2$Global_active_power)

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()