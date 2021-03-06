\name{PACVr.complete}
\alias{PACVr.complete}

\title{
Execute the complete pipeline of \pkg{PACVr}
}

\description{
This function executes the complete pipeline of \pkg{PACVr} via a single command.
}

\usage{
PACVr.complete(gbk.file,
               bam.file,
               windowSize = 250,
               logScale = FALSE,
               threshold = 0.5,
               syntenyLineType = 1,
               relative = TRUE,
               textSize = 0.5,
               delete = TRUE,
               output = NA)
}

\arguments{
\item{gbk.file}{a character vector that specifies the name of, and path to, the GenBank input file}
\item{bam.file}{a character vector that specifies the name of, and path to, the BAM input file}
\item{windowSize}{a numeric value that specifies window size in which the coverage is calculated}
\item{logScale}{a boolean that specifies if the coverage depth is to be log-transformed before visualizing it}
\item{threshold}{a numeric value that specifies the threshold for plotting coverage depth bars in red as opposed to the default black}
\item{syntenyLineType}{a numeric value of 1, 2 or 3 that specifies the line type for visualizing IR gene synteny; 1 = ribbon lines, 2 = solid lines, 3 = no line}
\item{relative}{a boolean that specifies whether the threshold is a relative value of the average coverage instead of an absolute value}
\item{textSize}{a numeric value that specifies the relative font size of the text element in the visualization}
\item{delete}{the decision to delete temporary files upon program execution}
\item{output}{a character vector that specifies the name of, and path to, the output file}
}

\examples{
gbkFile <- system.file("extdata", "NC_045072/NC_045072.gb", package="PACVr")
bamFile <- system.file("extdata", "NC_045072/NC_045072_PlastomeReadsOnly.sorted.bam", 
                       package="PACVr")
outFile <- paste(tempdir(), "/NC_045072__all_reads.pdf", sep="")
\donttest{
PACVr.complete(gbk.file=gbkFile, bam.file=bamFile, windowSize=250, 
               threshold=0.5, syntenyLineType=1, relative=TRUE, 
               textSize=0.5, delete=TRUE, output=outFile)
}
}
