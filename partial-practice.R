##########
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            --
##----------------------- PARTIAL DERIVATIVE PRACTICE---------------------------
##                                                                            --
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#rm(list = ls())

library(tidyverse)
eq1 <- function(x){
  3 * x^2 + 4
  
}

#create values to evaluate function over
my_df_range <- data.frame(x = c(1, 100))

#plot as continuous curve over specific range using geom_function()
my_df_range %>% ggplot(aes(x = x)) + geom_function(fun = eq1) + theme_bw()

#..................example plotting derivatives..................
ct <- function(t){
  t^3
}

#create values to evaluate function over
my_df_range_2 <- data.frame(t = c(-5, 5))

#plot as continuous curve over specific range using geom_function()
my_df_range_2 %>% ggplot(aes(x = t)) + geom_function(fun = ct) + theme_bw()

## find derivative
d_ct <- D(expr = expression(t^3), name = "t")
d_ct

dc_dt_fun <- function(t){
  3* t^2
}

my_df_range_2 %>% ggplot(aes(x = t)) + geom_function(fun = ct, col = "darkred") + 
  geom_function(fun = dc_dt_fun, col = "darkblue")+ theme_bw()

#......................partial derivatives.......................

#create expression
f_xyz <- expression(2*x*y - 3*x^2*z^3)

#partial derivative with respect to x
df_dx <- D(expr = f_xyz, name = "x")

#partial derivative with respect to z
df_dx <- D(expr = f_xyz, name = "z")


