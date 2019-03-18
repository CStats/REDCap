library(REDCapR)  #NEED TO INSTALL THIS PACKAGE IF NOT ALREADY SETUP

#Configure your redcap parameters
uri <- https://redcap.sydney.edu.au/api/  #REPLACE WITH YOUR URL (and add /api/)
token <- "WHATEVER THE PROJECT API TOKEN IS"  

#Download data via the API
data <- redcap_read(redcap_uri=uri, token=token, raw_or_label = "raw" )$data
data_labeled <- redcap_read(redcap_uri=uri, token=token, raw_or_label = "label")$data  #I’VE FOUND IT USEFUL TO DOWNLOAD THE LABELED DATASET TOO

#Save the downloaded data
saveRDS(data, file="DataSetName.rds")
saveRDS(data_labeled, file="DataSetName.rds")
