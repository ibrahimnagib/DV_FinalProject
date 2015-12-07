require("jsonlite")
require("RCurl")
require(ggplot2)
require(dplyr)
car <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", 'skipper.cs.utexas.edu:5001/rest/native/?query="Select VEHICLE_MANUFACTURER_NAME, RATED_HORSEPOWER, CO2_G_MI_
                from CARS;"')), httpheader=c(DB='jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl', USER='C##cs329e_in2422', PASS='orcl_in2422', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON', verbose = TRUE))))

ggplot(car, aes(x=RATED_HORSEPOWER)) + geom_histogram(aes(fill = ..count..),binwidth=35.4)

# p <- ggplot(car, aes(factor(VEHICLE_MANUFACTURER_NAME), RATED_HORSEPOWER))
# p + geom_boxplot()


# ggplot() +
#   coord_cartesian() + 
#   scale_x_discrete() +
#   scale_y_continuous() +
#   labs(title="PLOT 1") +
#   labs(x="VEHICLE_MANUFACTURER_NAME", y="RATED_HORSEPOWER", color="VEHICLE TYPE") +
#   layer(data=car , 
#         mapping=aes(x=VEHICLE_MANUFACTURER_NAME, y=RATED_HORSEPOWER), 
#         stat="identity",
#         stat_params=list(), 
#         geom="boxplot",
#         geom_params=list(), 
#         position=position_jitter(width=0.0, height=0)
#   ) 