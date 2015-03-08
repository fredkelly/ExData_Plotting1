plot1 <- function() {
  # load/filter
  data <- read.delim("./household_power_consumption.txt", sep=";", colClasses=replicate(9, "character"))
  data <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
  # load output png
  png("./plot1.png")
  # build histogram
  hist(as.numeric(data$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
  dev.off()
}