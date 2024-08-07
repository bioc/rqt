% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rqt-generics.R, R/rqt-methods.R
\docType{methods}
\name{geneTestMeta}
\alias{geneTestMeta}
\alias{geneTestMeta,list-method}
\title{This function performs a gene-level meta-analysis based on 
combined effect sizes.}
\usage{
geneTestMeta(objects, ...)

\S4method{geneTestMeta}{list}(
  objects,
  perm = 0,
  STT = 0.2,
  weight = FALSE,
  cumvar.threshold = 75,
  out.type = "D",
  method = "pca",
  scaleData = FALSE,
  asym.pval = FALSE,
  comb.test = "wilkinson",
  penalty = 0.001,
  verbose = FALSE
)
}
\arguments{
\item{objects}{List of objects of class rqt}

\item{...}{Additional parameters to pass to the function}

\item{perm}{Integer indicating the number of permutations 
to compute p-values. Default: 0.}

\item{STT}{Numeric indicating soft truncation threshold (STT) 
to convert to gamma parameter (must be <= 0.4). 
Needed for an optimal parameter a in Gamma-distribution. Default: 0.2. 
See, for example, Fridley, et al 2013: "Soft truncation thresholding 
for gene set analysis of RNA-seq data: Application to a vaccine study".}

\item{weight}{Logical value. Indicates using weights (see Lee et al 2016). 
Default: FALSE.}

\item{cumvar.threshold}{Numeric value indicating 
the explained variance threshold for PCA-like methods. Default: 75}

\item{out.type}{Character, indicating a type of phenotype. 
Possible values: \code{D} (dichotomous or binary), 
\code{C} (continous or quantitative).}

\item{method}{Method used to reduce multicollinerity and account for LD. 
Default: \code{pca}. 
Another methods available: \code{lasso}, \code{ridge}, \code{pls}.}

\item{scaleData}{A logic parameter (TRUE/FALSE) indicating scaling of 
the genotype dataset.}

\item{asym.pval}{Indicates Monte Carlo approximation for p-values. Default: FALSE.}

\item{comb.test}{Statistical test for combining p-values.}

\item{penalty}{Value of \code{penalty} parameter for LASSO/ridge regression.
Default: 0.001}

\item{verbose}{Indicates verbosing output. Default: FALSE.}
}
\value{
A list of two: (i) final.pvalue - 
a final p-value across all studies; 
(ii) pvalueList - p-values for each study;

A list of two: (i) final.pvalue - 
a final p-value across all studies; 
(ii) pvalueList - p-values for each study;
}
\description{
This function performs a gene-level meta-analysis based on 
combined effect sizes.

This function performs a gene-level meta-analysis based on 
combined effect sizes.
}
\examples{
data1 <- data.matrix(read.table(system.file("extdata/phengen2.dat",
                                           package="rqt"), skip=1))
pheno <- data1[,1]
geno <- data1[, 2:dim(data1)[2]]
colnames(geno) <- paste(seq(1, dim(geno)[2]))
geno.obj <- SummarizedExperiment(geno)
obj1 <- rqt(phenotype=pheno, genotype=geno.obj)

data2 <- data.matrix(read.table(system.file("extdata/phengen3.dat",
                                           package="rqt"), skip=1))
pheno <- data2[,1]
geno <- data2[, 2:dim(data2)[2]]
colnames(geno) <- paste(seq(1, dim(geno)[2]))
geno.obj <- SummarizedExperiment(geno)
obj2 <- rqt(phenotype=pheno, genotype=geno.obj)

data3 <- data.matrix(read.table(system.file("extdata/phengen.dat",
                                           package="rqt"), skip=1))
pheno <- data3[,1]
geno <- data3[, 2:dim(data3)[2]]
colnames(geno) <- paste(seq(1, dim(geno)[2]))
geno.obj <- SummarizedExperiment(geno)
obj3 <- rqt(phenotype=pheno, genotype=geno.obj)

res.meta <- geneTestMeta(list(obj1, obj2, obj3))
print(res.meta)
}
