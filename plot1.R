household_power_consumption <- read.csv("~/exp_data/exploritoryDA/household_power_consumption.txt", sep=";")

household_power_consumption$Date <- strptime(as.Date(household_power_consumption$Date), "%d/%m/%Y")
hhpc<- subset(household_power_consumption, Date >='2007-02-01'& Date <'2007-02-03',select=Date:Sub_metering_3)
hhpc$Global_active_power<-as.numeric(hhpc$Global_active_power)


 hist(hhpc$Global_active_power, col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power",xaxt='n')
 axis(1,at=c(0,1000,2000,3000),labels=c(0,2,4,6))

dev.copy(png, file="plot1.png")
dev.off()