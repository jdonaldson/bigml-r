require(roxygen2)
roxygenize('bigml', roxygen.dir='bigml', copy.package=F, unlink.target=F)
system("R CMD CHECK bigml")

detach("package:bigml", unload=TRUE)
system("R CMD BUILD bigml")
system("R CMD INSTALL bigml")
require(bigml)
quickDataset
