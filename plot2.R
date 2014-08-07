# Load data
source('loadData.R')

print("Generate plot2")

png(file = "plot2.png") 

plot(sample_data$Time, sample_data$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')

dev.off()