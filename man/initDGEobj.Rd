% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/init.R
\name{initDGEobj}
\alias{initDGEobj}
\title{Initialize with base data (counts, gene annotations, sample annotations)}
\usage{
initDGEobj(
  counts,
  rowData,
  colData,
  level,
  customAttr,
  allowShortSampleIDs = FALSE,
  DGEobjDef = .DGEobjDef
)
}
\arguments{
\item{counts}{A count matrix or dataframe with row and colnames}

\item{rowData}{Gene, isoform or exon level annotation. Rownames must match the rownames in count matrix}

\item{colData}{A dataframe describing the experiment design. Rownames much match the colnames(counts)}

\item{level}{One of "gene", "isoform", or "exon"}

\item{customAttr}{(optional) Named list of attributes}

\item{allowShortSampleIDs}{Using sequential integer rownames (even if typed as character) is discouraged and by default will abort the DGEobj creation. If you have a legitimate need to have short sample names composed of numeric characters, you can set this argument to TRUE (default = FALSE)}

\item{DGEobjDef}{An object definition. Defaults to the global DGEobj definition (.DGEobjDef) and you usually shouldn't change this unless you're customizing the object for new data types.}
}
\value{
A DGEobj
}
\description{
Initialize with base data (counts, gene annotations, sample annotations)
}
\examples{
\dontrun{
   # Initialize a DGEobj
   myDgeObj <- initDGEobj(counts = MyCounts,
                          rowData = MyGeneAnnotation,
                          colData = MyDesign,
                          level = "gene",
                          customAttr = list (Genome = "Mouse.B38",
                                             GeneModel = "Ensembl.R84"))
}

}
