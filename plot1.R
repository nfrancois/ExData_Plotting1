# Load data
source('loadData.R')

print("Generate plot1")

png(file = "plot1.png") 

hist(sample_data$Global_active_power, col='Red', main='Global Active Power', xlab="Global Active Power (kilowatts)", ylab="Frequency")

dev.off()