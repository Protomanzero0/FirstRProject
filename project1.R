library(dplyr)


display_item_on_screen <- function(item) {
print(item)
}

display_data_plot <- function(x_data, y_data) {
plot(x_data, y_data, main = "Sample plot title",
xlab = "X Axis", ylab = "Y Axis", pch = 18, cex = 3, col = "red", )
}

display_item_on_screen(10.0002 + 10)
display_item_on_screen((40L - 15L))
display_item_on_screen(3 + 6i)
display_item_on_screen(TRUE)
name <- "John"
last_name <- "Madden"
display_item_on_screen(paste(name, last_name))

x <- c(1, 2, 3, 4, 5, 6, 7, 8)
y <- c(2, 6, 10, 7, 3, 4, 8, 5)
par(mfrow = c(2,1))
display_data_plot(x, y)
plot(1:15, 1:15)

list <- list("String", 23.21, 30L, FALSE, "End String")
for (item in list){
    print(item)
}

new_data_frame <- data.frame(
    Name = c("Exia", "Dynames", "Kyrios", "Virtue", "Nadleeh"),
    Grade = c("Perfect", "Master", "Master", "Master", "Master"),
    Weapon = c("GN Sword", "GN Sniper", "GN SMG", "GN Cannon", "GN Bazooka")
)

new_data_frame %>%
mutate(Owned = case_when(
    Name == "Exia" | Name == "Dynames" ~ "Yes",
    TRUE ~ "Not Yet ;P"
))