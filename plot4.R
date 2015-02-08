
# Plot 4
#------------------------------
data2 <- read.table(url, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData2 <- data2[data2$Date %in% c("1/2/2007","2/2/2007") ,] #str(subSetData2)
Newdt <- strptime(paste(subSetData2$Date, subSetData2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subM1 <- as.numeric(subSetData2$Sub_metering_1)
subM2 <- as.numeric(subSetData2$Sub_metering_2)
subM3 <- as.numeric(subSetData2$Sub_metering_3)
voltage <- as.numeric(subSetData2$Voltage)
globalActivePower <- as.numeric(subSetData2$Global_active_power)
globalReactivePower <- as.numeric(subSetData2$Global_reactive_power)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(Newdt, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(Newdt, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(Newdt, subM1, type="l", ylab="Energy Submetering", xlab="")
lines(Newdt, subM2, type="l", col="red")
lines(Newdt, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(Newdt, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()