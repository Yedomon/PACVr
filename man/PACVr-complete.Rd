\name{PACVr.complete}
\alias{PACVr.complete}

\title{
Execute the complete PACVr pipeline via a single command
}


\description{
This function executes the complete \pkg{PACVr} pipeline.
}

\usage{
PACVr.complete(gbk.file,
                bam.file,
                windowSize=250,
                mosdepthCmd='mosdepth',
                threshold=25,
                delete=TRUE,
                output='./PACVr_output.pdf')
}


\arguments{
\item{gbk.file}{a character vector that specifies the name of, and path to, the GenBank input file}
\item{bam.file}{a character vector that specifies the name of, and path to, the BAM input file}
\item{windowSize}{a numeric value that specifies window size in which the coverage is calculated}
\item{mosdepthCmd}{a character vector that specifies the command to execute mosdepth on system}
\item{threshold}{a numeric value that specifies the threshold for plotting coverage at different color}
\item{delete}{the decision to delete temporary files upon program execution}
\item{output}{a character vector that specifies the name of, and path to, the output file}
}

\details{
This is the main function of \pkg{PACVr} to execute the full pipeline. It takes a Genbank file and a BAM file that are used to visualize plastome data in a circular way using the \pkg{RCircos} package. Those two input arguments are mandatory. The visualization contains gene names, gene locations and coverage data displayed as histrogram. The pipeline will produce a svg file format containing the circular visualization of the plastome data. Additionally, it will give the mosdepth output.
}

\value{ invisible NULL.
}

\references{
Gruenstaeudl M., Jenke N. (2019) PACVr: Plastome Assembly Coverage Visualization in R. R package version 0.7.5. Manuscript in prep.
}


\author{
  Michael Gruenstaeudl, Nils Jenke
  
  Maintainer: Michael Gruenstaeudl \email{m.gruenstaeudl@fu-berlin.de}
}


\examples{

#library(PACVr)

# MH161174
gbkFile <- system.file("extdata", "MH161174/MH161174.gb", package="PACVr")
bamFile <- system.file("extdata", "MH161174/MH161174_PlastomeReadsOnly.sorted.bam", 
                       package="PACVr")
#outFile <- paste(system.file("extdata", package="PACVr"), 
#                 "/testing/MH161174_AssemblyCoverage_viz.pdf", sep="")
outFile <- paste(getwd(), "/MH161174_AssemblyCoverage_viz.pdf", sep="")
\dontrun{
PACVr.complete(gbk.file=gbkFile, bam.file=bamFile, windowSize=250, 
                mosdepthCmd='mosdepth', threshold=15, delete=TRUE, output=outFile)
}
}