for (x in 1 : 10){
    print(x)
}

# This is a comment huzzah

# Concat with paste()
first_name <- "John"
last_name <- "Madden"

paste(first_name, last_name)

#Different data types (class() checks var type):
number <- 10
integer <- 10L #L denotes an integer
complex <- 9 + 3i #i is imaginary here
string_character <- "This is a string"
logical <- TRUE

class(number)
class(complex)
class(string_character)

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

summary(Data_Frame)