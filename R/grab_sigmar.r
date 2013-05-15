#' Use the name of the operating model to open the ctl file and obtain the INIT
#' value for sigmaR (recruitment deviations sigma)
#'
#' @param om The name of the operating model, which should be the prefix of
#' the .ctl file, eg "myOM"
#' @author Kelli Johnson
#' @export

grab_sigmar <- function (om) {
  ctlFileName <- paste( om, ".ctl", sep = "" )
  if (!file.exists ( ctlFileName ) ) 
    stop ( "Cannot find the .ctl file for the specified operating model." )
  ctlFile <- readLines ( ctlFileName )
 # The line contains multiple values, I want the third value which is the INIT: 
  sigmaRLoc <- grep ( "SR_sigmaR", ctlFile ) 
  sigmaRLoc <- grep ( "SR_sigmaR", ctlFile ) 
  sigmaRValue <- ctlFile[sigmaRLoc]
  as.numeric(strsplit(sigmaRValue, " " )[[1]][3])
}

