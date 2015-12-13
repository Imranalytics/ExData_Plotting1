# Reading of data
myData<-read.table('./household_power_consumption.txt',header=TRUE,
                   sep=';',stringsAsFactors = FALSE,dec='.',na='?')

#checking the variables
str(myData)

#subsetting the test data
myData1<-myData[myData$Date %in% c('1/2/2007','2/2/2007'),]

#checking the variables of myData1
str(myData1)

#Launching PNG graphics Device
png('plot1.png',width=480,height=480)

#Plotting the Histogram
hist(myData1$Global_active_power,col='red',main='Global Active Power',
     xlab = 'Global Active Power (kilowatts)')
     
dev.off()
