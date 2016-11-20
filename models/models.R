library(overseer)

# if run interactively setwd() to file location
# sourcing will keep everything relative to this file similar to knitting in Rmd

models <- Overseer$new()

mod_simple <- '
$PARAM CL= 1.2, V=14.3
$CMT CENT
$PKMODEL ncmt = 1
$MAIN
$TABLE double DV = CENT/V;
$CAPTURE DV
'


# save inlined model
models$add_model(mod_simple)

# pull in model saved as one_cmt_f.cpp
models$add_model_file("one_cmt_f")

models$add_model_directory("multiple_models/")

models

