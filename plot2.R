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
png("plot2.png", width=480, height=480)

#Creating the required plot
plot(datetime, myData1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()