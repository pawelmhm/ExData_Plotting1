plot3 <- function  () {
    d <- read.csv('household_electric_dates.csv')
    dtimes <- paste(d[[2]], d[[3]])
    d$datetime <- as.POSIXlt(dtimes)
    d[[4]] <- as.numeric(d[[4]])
    png('plot3.png')

    plot(d$datetime, d[[8]], type='l',
         ylab='Global Active Power (kilowatts)',
         xlab="")
    points(d$datetime, d[[9]], type="l", col="red")
    points(d$datetime, d[[10]], type="l", col="blue")

    legend("topright", lty=c(1,1), col = c("black", "red", "blue"), legend=names(d)[8:10])
    dev.off()
}
plot3()
