sales= c(4141,3842,3056,3519,4226, 4630,3507,3754, 5000,5120,4011, 5015,1916,675, 3636,3224,2295, 2730,2618,4421, 4113,3746, 3532, 3825,1096, 761,2088,820,2114, 1882,2159,1602,3354,2927)

price = c(59,59,59,59,59,59,59,59,59,59,59,59, 79,79,79,79,79,79,79,79,79, 79,79,79,99,99, 99,99,99,99,99,99,99,99)

promotion= c(200,200,200,200,400,400,400,400, 600,600,600,600,200,200,200,200, 400,400,400,400,600,600,600,600, 200,200,200,200,400,400,400,400,600,600)

omni1 = data.frame(sales, price, promotion)
omni
head(omni)
str(omni)
sales2 = lm( sales ~ price + promotion, data = omni)
summary(sales2)
p1 = data.frame(price=c(120,150),promotion=c(800,1000))
p2=predict(sales2,newdata= p1)
cbind(p1,p2)
plot(sales2)

k1 = data.frame(price=c(110,130),promotion=c(400,500))
k2=predict(sales2,newdata= k1)
cbind(k1,k2)

