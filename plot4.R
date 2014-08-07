# Load data
source('loadData.R')

print("Generate plot4")

png(file = "plot4.png") 

par(mfrow=c(2,2))
with(sample_data, {
	#1
	plot(Time, Global_active_power, type='l', main="", xlab='', ylab='Global Active Power')
	#2
	plot(Time, Voltage, type='l', main="", xlab='datetime', ylab='Voltage')
	#3
	plot(Time, Sub_metering_1, col='black', type='l', xlab='', ylab='Energy sub metering')
	lines(Time, Sub_metering_2, col='red')
	lines(Time, Sub_metering_3, col='blue')   
	legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid', bty='n')  
	#4
	plot(Time, Global_reactive_power, type='l', xlab='datetime')
	
})

dev.off()