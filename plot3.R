data = read.csv("filtered_data.csv")
png(filename='plot3.png',width=480,height=480,units='px',bg='transparent')
with(data, {
	plot(dateTime, Sub_metering_1, type='l', xaxt="n", xlab='', ylab="Energy sub metering")
	lines(dateTime, Sub_metering_1, type='l')
	lines(dateTime, Sub_metering_2, type='l', col='red')
	lines(dateTime, Sub_metering_3, type='l', col='blue')
	axis(1, dateTime, format(as.Date(as.character(dateTime)), "%a"))
	legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd='1', col=c('black', 'red', 'blue'))
})

x<-dev.off()