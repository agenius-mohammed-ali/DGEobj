#' DGEobj Package Overview
#'
#' DGEobj is an S3 data class that provides a flexible container for Differential Gene
#' Expression (DGE) analysis results.  The DGEobj class is designed to be extensible
#' allowing definition of new data types as needed. A set of accessory functions to
#' deposit, query and retrieve subsets of a data workflow has been provided.  Attributes
#' are used to capture metadata such as species and gene model, including reproducibility
#' information such that a 3rd party can access a DGEobj history to see how each data
#' object was created or modified.
#'
#' Operationally, the DGEobj is styled after the RangedSummarizedExperiment (RSE).
#' The DGEobj has data slots for row (gene), col (samples), assays (anything with n-rows
#' by m-samples dimensions) and metadata (anything that can't be keyed to row, col or
#' assay).  The key motivations for creating the DGEobj data structure is that the RSE
#' only allows one data item each in the row and col slots and thus is unsuitable for
#' capturing the plethora of data objects created during a typical DGE workflow.   The
#' DGEobj data structure can hold any number of row and col data objects and thus is
#' engineered for capturing the multiple steps of a downstream analysis.
#'
#' Certain object types, primarily the count matrix and associated row and column info,
#' are defined as unique which means only one instance of that type may be added to
#' the DGEobj.
#'
#' When multiple objects of one type are included in a DGEobj (e.g. two different fits),
#' the concept of parent attributes is used to associate downstream data objects (e.g.
#' contrasts) with the appropriate data object they are derived from.
#'
#' @section More Information:
#' \code{browseVignettes(package = 'DGEobj')}
#'
#' @docType package
#' @name DGEobj-package

NULL


.onLoad <- function(libname, pkgname) {
}

.onAttach <- function(libname, pkgname) {
}
