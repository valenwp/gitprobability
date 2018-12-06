#' @description Rejection sample from a pdf
#'
#' @param n a number
#' @param pdf a random variable
#' @param a a number
#' @param b a number
#' @param C a number
#'
#' @return the samples
#'
#' @examples
#' pdf<-function(x){x/2}
#' rejsample(2, pdf, 0, 5, .5)

rejsample<-function(n, pdf, a, b, C){
  accepted<-0
  samp<-rep(NA,n)
  while(accepted<n){
  u<-runif(1,a,b)
  v<-runif(1,0,C)
  if(pdf(u)>=v){
    accepted<-accepted+1
    samp[accepted]=u
  }}
  samp}
