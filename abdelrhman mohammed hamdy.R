
marks <- c(10, 20, 30, 40)
names(marks) <- c("x1", "x2", "x3", "x4")
marks[2]
marks[ ! names(marks) %in% c("x1", "x4") ]

mat <- matrix( c(1:10) , nrow=2, byrow = T)

mat[,2]


rownames <- c("x1", "x2")
columnnames <- c("y1", "y2", "y3", "y4", "y5")

mat <- matrix( c(1:10) , nrow=2, byrow = T, dimnames=list(rownames, columnnames))

salaries <- matrix(c(100, 120, 130,140), nrow=2, byrow=T,
                   dimnames = list(c("X", "Y"), c("Egy", "USA")))
dis = matrix(c(50, 20, 30,40), nrow=2, byrow=T)
as = salaries - dis
tc = colSums(salaries)
tr = rowSums(salaries)
colMeans(salaries)
rowMeans(salaries)

newSalaries = rbind(salaries, tc, tr)

stdDegrees <- c(12, 43, 35, 27, 30)
addDegree <- function (degree){
  if(degree > 30)
    return (degree) else
      return(degree + 3) }
a = lapply(stdDegrees, addDegree)
b = sapply(stdDegrees, addDegree)
sum(b)

setwd("C:\\Users\\LENOVO\\Desktop")
data= read.csv(file = 'G1_Allometry.csv')
data
f=data
f
class(data)
colnames(data)
rownames(data)
summary(head(data))
str(tail(data))
col_data=data[c(1,3)]
col_data
ro_data=data[2,]
ro_data
species=c("PSME")
diameter=55
height=(31.82999998)
leafarea=3.958274
branchmass=22.98360
a_data=data.frame(species,diameter,height,leafarea,branchmass)
new_data=rbind(data,a_data)
new_data
new_height=gsub(",","",height)
new_height
snew_height=as.numeric(new_height)
snew_height
is.na(data)
any(is.na(data))
data=data[complete.cases(data),]
data
c=mean(data$diameter)
c
library(ggplot2)
data("data")
draw1 <- ggplot(data)

draw_hist= ggplot(data, aes(diameter))
draw_hist + geom_histogram()
draw_hist + geom_histogram(binwidth = 5)
draw_hist + geom_histogram(color="red")
draw_hist + geom_histogram(fill="blue")
draw_hist + geom_histogram(alpha = 0.5)
draw_hist + geom_histogram() + labs(x="diameter", y="height")

draw_bar <- ggplot(data, aes(x=diameter, fill = height))
draw_bar + geom_bar()
draw_bar + geom_bar() + theme_light()
draw_bar + geom_bar() + labs(y="height",
                             title = "height ")


