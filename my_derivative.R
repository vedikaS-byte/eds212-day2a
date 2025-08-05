####################
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivative practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# create an expression 
my_expression <- expression(5*x^2)
my_dev <- D(exp= my_expression, name = "x")

# evaluate derivative at x = 2.8
x = 2.8
eval(my_dev)


my_derivative <- D(exp = expression(2*z^3 - 10.5*z^2 + 4.1), name = "z")
my_derivative

my_derivative_2<- D(exp = expression((2*y^3 + 1)^4 - 8*y^3), name = "y")
my_derivative_2

#one small change


## plotting example, but first install and call the needed packages
library(ggplot2)
library(palmerpenguins)
library(tidyverse)
str(penguins)

penguins %>% ggplot(aes(x = body_mass_g, y = flipper_length_mm, col = factor(species))) + geom_point() +  
                      scale_color_manual(values = c("darkorange", "purple", "cyan4")) + 
      facet_wrap(~island) +
                       theme_minimal() + labs(title = "Body Mass of Different Penguin Species Relative to Flipper Length",   x = "Body Mass (g)", y = "Flipper Length (mm)", caption = "Collected by Dr. Kristen Gorman")


