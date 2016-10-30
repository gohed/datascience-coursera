# read data
con <- file("./data/household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007", readLines(con), value=TRUE), sep = ";", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = "?")
close(con)
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

# Plot 4
if(!file.exists("data-plots")) dir.create("data-plots")
png(filename = "./data-plots/plot4.png", width = 480, height = 480, units="px")
par(mfcol = c(2, 2))
with(data,plot(DateTime, Global_active_power, ylab = "Global Active Power", type = "l"))
with(data,plot(DateTime, Sub_metering_1, ylab = "Energy sub metering", type = "l"))
with(data,lines(DateTime, Sub_metering_2, col = "red"))
with(data,lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, cex=0.9, bty = "n")
with(data,plot(DateTime, Voltage, xlab = "datetime", ylab = "Voltage", type = "l"))
with(data,plot(DateTime, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l"))
dev.off()