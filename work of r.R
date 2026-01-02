study<-data.frame(
  student=paste("s",1:10,sep=""),
  study_hours=c(1,2,2.5,3,4,5,6,6.5,7,8),
  marks=c(35,40,45,50,60,68,75,78,85,92)
)
plot(
  study$study_hours,
  study$marks,
  type="b",
  main="study hr vs marks",
  xlab="Hours",
  ylab="Marks",
  lwd=2,
  pch=15,
  col="red")
grid()
--------------------------------------------------------------------------------
  study<-data.frame(
    student=paste("s",1:10,sep=""),
    study_hours=c(1,2,2.5,3,4,5,6,6.5,7,8),
    marks=c(35,40,45,50,60,68,75,78,85,92)
  )
plot(
  
  study$marks,
  type="l",
  main="progression",
  xlab="Hours",
  ylab="Marks",
  
  col="darkred"
  
)
grid()
--------------------------------------------------------------------------------
  study<-data.frame(
    student=paste("s",1:10,sep=""),
    study_hours=c(1,2,2.5,3,4,5,6,6.5,7,8),
    marks=c(35,40,45,50,60,68,75,78,85,92)
  )
barplot(
 
  study$marks,
  
  xlab="Hours",
  ylab="Marks",
  col="green"
  
)
--------------------------------------------------------------------------------
  study<-data.frame(
    student=paste("s",1:10,sep=""),
    study_hours=c(1,2,2.5,3,4,5,6,6.5,7,8),
    marks=c(35,40,45,50,60,68,75,78,85,92)
  )
av<-mean(study$marks)
print(av)