power <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", stringsAsFactors=FALSE)
power2 <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
png("plot1.png", width=480, height=480)
hist(power2$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

