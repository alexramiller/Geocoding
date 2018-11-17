###Separates out geocoding results by type of address match

setwd("/Users/ajramiller/Dropbox (iData)/2018-2019/WAEV")

geocode_results <- read.csv("/Users/ajramiller/Dropbox (iData)/2018-2019/WAEV/Geocode_TestResult.csv", stringsAsFactors = FALSE)

address_type <- function(types) {
  for (type in types) {
    frame <- geocode_results
    frame = frame[geocode_results$Addr_type == type,]
    myfile <- file.path(paste0("Geocode_", type, ".csv"))
    write.csv(frame, file = myfile)
  }
}

all_types <- c("PointAddress", "StreetAddress", "StreetInt", "StreetName", "Locality", "Postal", "SubAdmin", " ")

address_type(all_types)