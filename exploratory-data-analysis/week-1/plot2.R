# read data
con <- file("./data/household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007", readLines(con), value=TRUE), sep = ";", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = "?")
close(con)
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

# Plot 2
png(filename = "./data-plots/plot2.png", width = 480, height = 480, units="px")
with(data,plot(DateTime, Global_active_power, ylab = "Global Active Power (kilowatts)", xlab="", type = "l"))
dev.off()
