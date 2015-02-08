
#Plot 2
#-----------------------
data2 <- read.table(url, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData2 <- data2[data2$Date %in% c("1/2/2007","2/2/2007") ,] #str(subSetData2)
Newdt <- strptime(paste(subSetData2$Date, subSetData2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData2$Global_active_power)

png("plot2.png", width=480, height=480)
plot(Newdt, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()