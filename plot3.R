# Load data
source('loadData.R')

print("Generate plot3")

png(file = "plot3.png") 

plot(sample_data$Time, sample_data$Sub_metering_1, col='black', type='l', xlab='', ylab='Energy sub metering')
lines(sample_data$Time, sample_data$Sub_metering_2, col='red')
lines(sample_data$Time, sample_data$Sub_metering_3, col='blue')   

legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid')  

dev.off()