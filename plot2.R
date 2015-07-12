data = read.csv("filtered_data.csv")
png(filename='plot2.png',width=480,height=480,units='px',bg='transparent')
with(data, {
	plot(dateTime, Global_active_power, xaxt="n", type="1", ylab="Global Active Power (kilowatts)", axis="")	
	lines(dateTime, Global_active_power)
	axis(1, dateTime, format(as.Date(as.character(dateTime)), "%a"))
})
x<-dev.off()