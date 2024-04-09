# Load libraries
library(pins)
library(vetiver)
library(plumber)

# Load the model
model_board <- board_folder(path = "data/model", versioned = TRUE)
v <- vetiver_pin_read(board = model_board, name = "penguin_model")

# Serve the model as an API
pr() %>%
  vetiver_api(v) %>%
  pr_run(port = 8080)
