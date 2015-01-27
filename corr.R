
corr <- function(directory, threshold = 0) {
	## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files
	
	## 'threshold' is a numeric vector of length 1 indicating the
	## number of completely observed observations (on all
	## variables) required to compute the correlation between
	## nitrate and sulfate; the default is 0
	
	## Return a numeric vector of correlations
	
	files_list <- list.files(directory, full.names=TRUE)
	
	id = 1:332
	
	monitor_data <- lapply(files_list[id], read.csv)
	
	corxy <- numeric()
	
	for (i in id) {
		data <- monitor_data[[i]]
		nobs <- length(data[complete.cases(data), 1])
		if (nobs > threshold) {
			x <- data[complete.cases(data), "sulfate"]
			y <- data[complete.cases(data), "nitrate"]
			corxy <- c(corxy, cor(x, y))
		}
	}
	
	corxy
	
}