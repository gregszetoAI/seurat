% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integration.R
\name{MapQuery}
\alias{MapQuery}
\title{Map query cells to a reference}
\usage{
MapQuery(
  anchorset,
  query,
  reference,
  refdata = NULL,
  new.reduction.name = paste0("ref.", reference.reduction),
  reference.reduction,
  reduction.model = NULL,
  transferdata.args = list(),
  integrateembeddings.args = list(),
  projectumap.args = list(),
  verbose = TRUE
)
}
\arguments{
\item{anchorset}{An AnchorSet object}

\item{query}{Query object used in anchorset construction}

\item{reference}{Reference object used in anchorset construction}

\item{refdata}{Data to transfer. This can be specified in one of two ways:
\itemize{
  \item{The reference data itself as either a vector where the names
  correspond to the reference cells, or a matrix, where the column names
  correspond to the reference cells.}
  \item{The name of the metadata field or assay from the reference object
  provided. This requires the reference parameter to be specified. If pulling
  assay data in this manner, it will pull the data from the data slot. To
  transfer data from other slots, please pull the data explicitly with
  \code{\link{GetAssayData}} and provide that matrix here.}
}}

\item{new.reduction.name}{Name for new integrated dimensional reduction.}

\item{reference.reduction}{Name of reduction to use from the reference for
neighbor finding}

\item{reduction.model}{\code{DimReduc} object that contains the umap model}

\item{transferdata.args}{A named list of additional arguments to
\code{\link{TransferData}}}

\item{integrateembeddings.args}{A named list of additional arguments to
\code{\link{IntegrateEmbeddings}}}

\item{projectumap.args}{A named list of additional arguments to
\code{\link{ProjectUMAP}}}

\item{verbose}{Print progress bars and output}
}
\value{
Returns a modified query Seurat object containing new Assays
corresponding to the features transferred and/or their corresponding prediction
scores from TransferData. An integrated reduction from IntegrateEmbeddings.
And an projected umap reduction of the query cells projected into the
reference umap.
}
\description{
This is a convenience wrapper function around the following three functions
that are often run together when mapping query data to a reference:
\code{\link{TransferData}}, \code{\link{IntegrateEmbeddings}},
\code{\link{ProjectUMAP}}.
}
