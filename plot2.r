power <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", stringsAsFactors=FALSE)
power2 <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
power2$datetime <- strptime(with(power2, paste(Date, Time)), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(power2$datetime, power2$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()

