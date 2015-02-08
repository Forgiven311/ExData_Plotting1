
# Plot 3
#-------------------------------
data2 <- read.table(url, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData2 <- data2[data2$Date %in% c("1/2/2007","2/2/2007") ,] #str(subSetData2)
Newdt <- strptime(paste(subSetData2$Date, subSetData2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData2$Global_active_power)
subM1 <- as.numeric(subSetData2$Sub_metering_1)
subM2 <- as.numeric(subSetData2$Sub_metering_2)
subM3 <- as.numeric(subSetData2$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(Newdt, subM1, type="l", ylab="Energy Submetering", xlab="")
lines(Newdt, subM2, type="l", col="red")
lines(Newdt, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()