best <- function(state, outcome) {
	## Read outcome data
	## Outcome columns
	## [11] "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
	## [17] "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" 
	## [23] "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia" 
	cols <- c(11, 17, 23)
	names(cols) <- c("heart attack", "heart failure", "pneumonia")
	## Check that state and outcome are valid
	if (!any(outcome[, 7] == state))
		stop("invalid state")
	if (!any(outcome == names(cols)))
		stop("invalid outcome")
	## Return hospital name in that state with lowest 30-day death 
	## rate
	
	
}