# calculate 3 + 4
# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
exp(5)

# modulo
10 / 3
10 %% 3

# Assign the value 42 to x
x <- 42
  
# Print out the value of the variable x
x
print(x)

# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <- 3

# Add these two variables together
# Create the variable my_fruit
my_fruit <- my_apples + my_oranges
my_fruit

# Assign a value to the variable my_apples
my_apples <- 5 

# Fix the assignment of my_oranges
my_oranges <- "six" 

# Create the variable my_fruit and print it out
my_fruit <- my_apples + as.numeric(my_oranges) 
my_fruit

my_fruit2 <- c(my_apples, my_oranges)
my_fruit2 + 2
my_added_apples <- (as.numeric(my_fruit2[1]) + 2)

# -------------Another example ---------------
# Change my_numeric to be 42
my_numeric <- 42.5

# Change my_character to be "universe"
my_character <- "some text"

# Change my_logical to be FALSE
my_logical <- FALSE

c(my_numeric, my_character, my_logical)
as.numeric(my_logical)

seq(from = 1, to = 4, by = 2)
c(1, 2, 3, 4)

# vector ... etc.
my_dna <- "AACGAATGAGTAAATGAGTAAATGAAGGAATGATTATTCCTTGCTTTAGAACTTCTGGAATTAGAGGACA
ATATTAATAATACCATCGCACAGTGTTTCTTTGTTGTTAATGCTACAACATACAAAGAGGAAGCATGCAG"
my_dna
length(my_dna)
class(my_dna)
str(my_dna)
nchar(my_dna)

# appr1 
my_dna_comma <- sapply(strsplit(
  x = my_dna, split = "", fixed = TRUE), 
       function(x) paste(x, collapse = "_")) 
length(my_dna_comma)
str(my_dna_comma)

my_dna_list <- strsplit(x = my_dna, split = "", fixed = TRUE)
length(my_dna_list)
class(my_dna_list)
my_dna_vector <- unlist(my_dna_list)
length(my_dna_list[[1]])
str(my_dna_vector)
length(my_dna_vector)

list()
c()
str()
class()

# first nucleotide
my_dna_vector[1]
# indexing 1:nchar(my_dna)
my_dna_vector[1:50]
# unique characters
unique(my_dna_vector)

# number of As
(my_dna_vector == "A")
length(my_dna_vector[my_dna_vector == "A"])

# remove \n
remove_nuc <- match("\n", my_dna_vector)
which(my_dna_vector %in% c("\n", "X"))
my_dna_vector[remove_nuc] <- "A"
my_dna_vector_2 <- my_dna_vector[-71]
unique(my_dna_vector_2)

# ---------------------------------------------------------
x <- c(a = 1, b = 2)
is.vector(x)
as.vector(x)
all.equal(x, as.vector(x)) ## FALSE
all.equal(5, my_apples)
identical(5, my_apples)
identical(x, as.vector(x))
names(x)
x["a"]
x[1]

?as.vector