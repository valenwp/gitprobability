#' MCMC sample from a pdf
#'
#' @param t a sample of numbers
#' @param pdf a random variable
#' @param n a number
#' @return the samples
#' @examples
#' pdf<-function(x){x/2}
#' t<-runif(1,0,2)
#' mcmcsample(t, pdf, 3)
mcmcsample<-function(t, pdf, n){
  dat<-t
  for(i in 1:(n-1)){
  proposed<-t
  if(runif(1,0,1)<pdf(proposed)/pdf(t)){t<-proposed}
  dat<-c(dat,t)
  }
  dat
}

