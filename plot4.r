power <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", stringsAsFactors=FALSE)
power2 <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
power2$datetime <- strptime(with(power2, paste(Date, Time)), format = "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
with(power2, {
    plot(datetime, Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
    plot(datetime, Voltage, type="l")
    plot(datetime, Sub_metering_1, type = "l", xlab="", ylab = "Energy sub metering")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend("topright", legend = names(power2)[7:9], col = c("black", "red", "blue"), lty=1, bty="n")
    plot(datetime, Global_reactive_power, type="l")
    
})
dev.off()

