# Tutorial source: https://bioconductor.org/packages/devel/bioc/vignettes/ChemmineR/inst/doc/ChemmineR.html
# Exercise source (slide no. 36): http://faculty.ucr.edu/~tgirke/HTML_Presentations/Manuals/Workshop_Dec_5_8_2014/Rcheminfo/Cheminfo.pdf
# In web browser: Download P450 inhibitors from PubChem

# In R:

library("ChemmineR")

# try out with sample data
data("sdfsample")
length(sdfsample)
sdfset <- sdfsample
sdfset
sdfset[1:4]
sdfset[[1]]
str(sdfset[[1]])

sdfset1l <- as(sdfset[1], "list")
names(sdfset1l[[1]])
str(sdfset1l$CMP1$datablock)
sdfset1l$CMP1$datablock[["PUBCHEM_COMPOUND_CID"]]

# Import and examine p450 inhibitor data
p450 <- read.SDFset("Downloads/PubChem_compound_text_p450\ inhibitor_records.sdf")
header(p450[1:4])

datablock(p450[[1]])[1]
sdfid(p450)
makeUnique(sdfid(p450))
unique(sdfid(p450))

blockmatrix <- datablock2ma(datablocklist = datablock(p450))
str(blockmatrix)
blockmatrix[1:6, 1:6]
numchar <- splitNumChar(blockmatrix=blockmatrix)
str(numchar)
numchar[[2]][1:2, 1:2]

propma <- data.frame(MF = MF(p450), 
                     MW = MW(p450), 
                     atomcountMA(p450)
          )
propma[1:4, ]

write.SDF(p450[1:2], file = "subp450.sdf", sig = TRUE)
p450_2 <- read.SDFset("subp450.sdf")

plot(p450[1:2], print = FALSE)

# --------------------------------------------------

