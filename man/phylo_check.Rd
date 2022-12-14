% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phylo_check.R
\name{phylo_check}
\alias{phylo_check}
\title{Check phylogeny tip names}
\usage{
phylo_check(tree = NULL, list = NULL, out = "full_table", sort = "presence")
}
\arguments{
\item{tree}{\code{phylo}. A phylo object containing the phylogeny.}

\item{list}{\code{character}. A vector of taxon names. Binomials can be
separated with either a space or an underscore. The names should not contain
any other punctuation.}

\item{out}{\code{character}. Determine whether to return either a
\code{dataframe} describing which taxa are included or not included in the
tree ("full_table", the default), the same table but with taxa included in
both the tree and the list removed ("diff_table"), the counts of taxa
included and not included in the tree ("counts"), or the phylogeny trimmed to
only include taxa in the provided list ("tree").}

\item{sort}{\code{character}. If out = "full_table" or out = "diff_table",
sort the names by presence in the tree ("presence", the default), or
alphabetically ("az").}
}
\value{
If out = "full_table", a \code{dataframe} describing whether taxon
names are present in the list and/or the tree. If out = "diff_table", a
\code{dataframe} describing which taxon names are present in the list or the
tree, but not both. If out = "counts", a summary table containing the number
of taxa in the list but not the tree, in the tree but not the list, and in
both. If out = "tree", a phylo object consisting of the input phylogeny
trimmed to only include the tips present in the list.
}
\description{
A function to check the list of tip names in a phylogeny against a vector of
taxon names, and if desired, to trim the phylogeny to only include taxon
names within the vector.
}
\details{
Phylogenies can be read into R from .txt or .tree files containing
the Newick formatted tree using \code{\link[ape:read.tree]{ape::read.tree()}}, and can be saved as
files using \code{\link[ape:write.tree]{ape::write.tree()}}. When out = "tree", tips are trimmed using
\code{\link[ape:drop.tip]{ape::drop.tip()}}; if your tree is not ultrametric (i.e. the tip dates are
not all the same), we recommend using \code{\link[paleotree:fixRootTime]{paleotree::fixRootTime()}} to readjust
your branch lengths following pruning.
}
\section{Developer(s)}{

Bethany Allen
}

\section{Reviewer(s)}{

William Gearty & Pedro Godoy
}

\examples{
# track user par
oldpar <- par(no.readonly = TRUE)
#Read in example tree of ceratopsians from paleotree
library(paleotree)
data(RaiaCopesRule)
#Set smaller margins for plotting
par(mar = rep(0.5, 4))
plot(ceratopsianTreeRaia)

#Specify list of names
dinosaurs <- c("Nasutoceratops_titusi", "Diabloceratops_eatoni",
"Zuniceratops_christopheri", "Psittacosaurus_major",
"Psittacosaurus_sinensis", "Avaceratops_lammersi",
"Xenoceratops_foremostensis", "Leptoceratops_gracilis",
"Triceratops_horridus", "Triceratops_prorsus")

#Table of taxon names in list, tree or both
ex1 <- phylo_check(tree = ceratopsianTreeRaia, list = dinosaurs)

#Counts of taxa in list, tree or both
ex2 <- phylo_check(tree = ceratopsianTreeRaia, list = dinosaurs,
                   out = "counts")

#Trim tree to tips in the list
my_ceratopsians <- phylo_check(tree = ceratopsianTreeRaia, list = dinosaurs,
out = "tree")
plot(my_ceratopsians)
# reset user par
par(oldpar)
}
