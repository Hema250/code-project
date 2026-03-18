phone_sales<-data.frame(Quarter=c("Q1","Q2","Q3","Q4","Q1","Q2","Q3","Q4"),
                        Brand=c("Alpha","Alpha","Alpha","Alpha","Nova","Nova","Nova","Nova"),
                        Ads_Spend=c(20,25,30,35,15,18,22,28),
                        Units_Sold=c(400,480,550,650,300,360,420,520))

print(phone_sales)
nrow(phone_sales)   # number of rows
ncol(phone_sales)   # number of columns
--------------------------------------------------------------------------------------------------------
barplot(phone_sales$Units_Sold,
       
       main = "Units Sold",
       xlab = "Brand & Quarter",
       ylab = "Units Sold",
       col=c("yellow","green","blue","red","grey","skyblue","lightgreen","red4"),
       width=2,
       space=0.5,
       ylim=c(0,800))
-------------------------------------------------------------------------------------------------------
  phone_sales<-data.frame(Quarter=c("Q1","Q2","Q3","Q4","Q1","Q2","Q3","Q4"),
                          Brand=c("Alpha","Alpha","Alpha","Alpha","Nova","Nova","Nova","Nova"),
                          Ads_Spend=c(20,25,30,35,15,18,22,28),
                          Units_Sold=c(400,480,550,650,300,360,420,520)) 
plot(phone_sales$Ads_Spend,
     phone_sales$Units_Sold,
     main="Ads_spend vs Units_Sold",
     xlab="ads",
     ylab="sold")
     
grid()
legend(
  "topleft",
  legend=c("x value","y value"),
  col=c("blue","red"),
  lwd=2,
)
---------------------------------------------------------------------------------------------------------------
  
  phone_sales<-data.frame(Quarter=c("Q1","Q2","Q3","Q4","Q1","Q2","Q3","Q4"),
                          Brand=c("Alpha","Alpha","Alpha","Alpha","Nova","Nova","Nova","Nova"),
                          Ads_Spend=c(20,25,30,35,15,18,22,28),
                          Units_Sold=c(400,480,550,650,300,360,420,520))
quarter_num <- as.numeric(factor(phone_sales$Quarter,
                                 levels = c("Q1","Q2","Q3","Q4")))
plot(quarter_num,
     phone_sales$Units_Sold,
     type="o",
     xaxt="n",
     main="Quarter vs Units_Sold",
     xlab="Quarter",
     ylab="sold")
axis(1,at=1:4,labels=c("Q1","Q2","Q3","Q4"))
---------------------------------------------------------------------------------------------------------------
  phone_sales<-data.frame(Quarter=c("Q1","Q2","Q3","Q4","Q1","Q2","Q3","Q4"),
                          Brand=c("Alpha","Alpha","Alpha","Alpha","Nova","Nova","Nova","Nova"),
                          Ads_Spend=c(20,25,30,35,15,18,22,28),
                          Units_Sold=c(400,480,550,650,300,360,420,520))  
hist(phone_sales$Units_Sold,
     main = "Histogram of Units Sold",
     
     xlab = "Units Sold",
     col="skyblue")

----------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------
  
  day = c(1:15)
weather <- data.frame(
  
  
  humidity = c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69),
  rainfall = c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)
)


rownames(weather)<-day

weather_t<-t(as.matrix(weather))

barplot(
  weather_t,
  beside=TRUE,
  col=c("red","blue"),
  main="Weather prediction",
  xlab="Days",
  ylab="weather",
  ylim=c(0,100)
)
grid()
legend(
  "topleft",
  legend=c("humidity","rainfall"),
  col=c("blue","red"),
  lwd=2,
)
--------------------------------------------------------------------------------
  
  weather <- data.frame(
    day = 1:15,
    temperature = c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32),
    humidity = c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69),
    rainfall = c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)
  )


weather$day[weather$temperature == max(weather$temperature) ]   # Hottest day
weather$day[weather$temperature == min(weather$temperature) ]   # Coldest day
--------------------------------------------------------------------------------
  
  day = 1:15
temperature <- c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32)
humidity <- c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69)
rainfall <- c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)



data<-data.frame(day,temperature,humidity,rainfall)
data

m_model<-lm(rainfall~day+temperature+humidity,data=data)
summary(m_model)  
------------------------------------------------------------------------------------------------------------------------
  
 
  
  study<-data.frame(
    student=paste("s",1:10,sep=""),
    study_hours=c(1,2,2.5,3,4,5,6,6.5,7,8),
    marks=c(35,40,45,50,60,68,75,78,85,92)
  )
plot(
  study$study_hours,
  study$marks,
  type="b",
  xlab="Hours",
  ylab="Marks",
  xlim=c(0,5),
  ylim=c(0,100),
  lwd=2,
  pch=15,
  col="red"
  
)
grid()
---------------------------------------------------------------------------------
