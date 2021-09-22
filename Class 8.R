#Library mtcars
data(mtcars)

mt_rownames <- rownames(mtcars)

View(mtcars)

# try the base function strsplit()

strsplit(mt_rownames[1], split = " ")

# but
strsplit(mt_rownames[2], split = " ")

unlist(strsplit(mt_rownames[2], split = " "))[1]

# apply the solution to entire list

  sss <- strsplit(mt_rownames, split = " ")
  
  length(sss)
  
  li <- 1: length(sss)
  
  
  ssst <- sapply(li, function(li) mk <- sss[[li]][1])
  
  ssf <- as.factor(ssst)
  
  
  
  ssf_ct <- sapply(ssf, function(x) length(which(ssst == x)))

  ssf_ct <- as.data.frame(ssf_ct)
  
  
  ssf_tab <- cbind(ssst, ssf_ct)
  
  ssf_tab
  
  
  ssf_tab <- unique(ssf_tab)
  
  
###################################
###### Now with tidyverse
###################################
library(tidyverse)
data(mtcars)
  
clon <- colnames(mtcars)


### rownames_to_column("col")

rn <- str_split(rn, " ", n = 2, simplify = T)


mtcars <- as_tribble(mtcars)
mtcars <- cbind2(rn, mtcars)
colnames(mtcars) <- c("Make", "Model", coln)

sum_mt <- group_by(mtcars, Make)
sum_mt <- count(mtcars, Make)

sum_mt <- filter(sum_mt, Make == "Fiat"| Make == "Hornet"| Make == "Mazda"| Make == "Merc"| Make == "Toyota")

su_mt1 <- mtcars %>% group_by(Make) %>% count(Make)

#################################
#### Stop for Class 8
#################################