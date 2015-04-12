plot2 <- function  () {
    d <- read.csv('household_electric_dates.csv')
    dtimes <- paste(d[[2]], d[[3]])
    d$datetime <- as.POSIXlt(dtimes)
    d[[4]] <- as.numeric(d[[4]])
    png('plot2.png')
    plot(d$datetime, d[[4]], type="l", 
         ylab='Global Active Power (kilowatts)',
         xlab="")
    dev.off()
}
plot2()
