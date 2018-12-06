#' @description MCMC sample from a pdf
#'
#' @param t a sample of numbers
#' @param pdf a random variable
#'
#' @return the samples
#'
#' @example
#' pdf<-function(x){x/2}
#' t<-runif(1,0,2)
#' mcmcsample(t, pdf)
mcmcsample<-function(t, pdf){
  dat<-t
  for(i in 1:2000){
  proposed<-t
  if(runif(1,0,1)<pdf(proposed)/pdf(t)){t<-proposed}
  dat<-c(dat,t)
  }
  unique(dat)
}

