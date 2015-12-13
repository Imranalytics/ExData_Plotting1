# Reading of data
myData<-read.table('./household_power_consumption.txt',header=TRUE,
                   sep=';',stringsAsFactors = FALSE,dec='.',na='?')

#checking the variables
str(myData)

#subsetting the test data
myData1<-myData[myData$Date %in% c('1/2/2007','2/2/2007'),]

#checking the variables of myData1
str(myData1)

#Converting Date variable into right format
datetime <- strptime(paste(myData1$Date, myData1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Launching PNG graphics Device
png("plot3.png", width=480, height=480)

#Creating the required plot
plot(datetime, myData1$Sub_metering_1, type="l", xlab="", ylab="Energy Submetering")
lines(datetime,myData1$Sub_metering_2,type='l',col='red')
lines(datetime,myData1$Sub_metering_3,type='l',col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,lwd=2.5,col=c('black','red','blue'))


dev.off()