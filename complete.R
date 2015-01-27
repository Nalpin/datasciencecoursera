
complete <- function(directory, id = 1:332) {
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'id' is an integer vector indicating the monitor ID numbers
	## to be used
	
	## Return a data frame of the form:
	## id nobs
	## 1  117
	## 2  1041
	## ...
	## where 'id' is the monitor ID number and 'nobs' is the
	## number of complete cases
	
	files_list <- list.files(directory, full.names=TRUE)
	
	monitor_data <- lapply(files_list[id], read.csv)
	
	nobs <- numeric(length(id))
	
	for (i in seq_along(id)) {
		data <- monitor_data[[i]]
		nobs[i] <- length(data[complete.cases(data), 1])
	}
	
	data.frame(id, nobs)
	
}
