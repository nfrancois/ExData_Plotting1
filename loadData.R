
filename <- "plotting1.rds"

if (!file.exists(filename)) {
	print("Load data by extraction")
	# Load all data
	all_data <- read.csv2("household_power_consumption.txt", na.strings = "NA")

	# Transform data & time
	all_data$Time <- strptime(paste(all_data$Date, all_data$Time), format='%d/%m/%Y %H:%M:%S')
	all_data$Date <- as.Date(all_data$Date, format='%d/%m/%Y')

	# Selection date between 2007-02-02 and 2007-02-02
	sample_data <- all_data[all_data$Date == as.Date("2007-02-01") |  all_data$Date == as.Date("2007-02-02") ,]

	# Transform numeric data
	sample_data$Global_active_power <- as.numeric(as.character(sample_data$Global_active_power))
	sample_data$Global_reactive_power <- as.numeric(as.character(sample_data$Global_reactive_power))
	sample_data$Voltage <- as.numeric(as.character(sample_data$Voltage))
	sample_data$Global_intensity <- as.numeric(as.character(sample_data$Global_intensity))
	sample_data$Sub_metering_1 <- as.numeric(as.character(sample_data$Sub_metering_1))
	sample_data$Sub_metering_2 <- as.numeric(as.character(sample_data$Sub_metering_2))
	sample_data$Sub_metering_3 <- as.numeric(as.character(sample_data$Sub_metering_3))

	# Export as usable file format
	saveRDS(sample_data, file=filename)

} else {
	print("Load data from file")
	sample_data <- readRDS(filename)
}