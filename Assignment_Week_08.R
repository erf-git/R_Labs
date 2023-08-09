# Assignment Week 
# Ethan R Feldman


myfib4 = function(thresh=10, printme=T) {
  fibseq = c(1, 1)
  counter = 2
  
  repeat{
    fibseq = c(fibseq, fibseq[counter-1] + fibseq[counter])
    counter = counter+1
    
    if(fibseq[counter] > thresh){
      break
    }
  }
  
  if (printme==F) {
    return(fibseq)  
    
  } else {
    for(val in fibseq) {
      cat(val,", ",sep="")
    }
    cat("BREAK NOW...")
  }

}

myfib4(thresh=150,printme=TRUE)
myfib4(1000000,T)
myfib4(150,FALSE)
myfib4(1000000,printme=F)



