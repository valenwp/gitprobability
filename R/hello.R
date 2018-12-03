# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

rejsample<-function(n, pdf, a, b, C){
  replicate(n, {u<-runif(a,b)
  v<-runif(0,C)
  if(pdf(u)>=v){accep<-TRUE}
  else{accept<-FALSE}})
}


