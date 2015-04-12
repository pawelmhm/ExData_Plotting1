plot1 <- function  () {
    d <- read.csv('household_electric_dates.csv')
    d[[4]] <- as.numeric(d[[4]])
    png('plot1.png')
    hist(d[[4]], col="red", xlab='Global Active Power (kilowatts)',
        main='Global Active Power')
    dev.off()
}
plot1()
