#' Get refseq gene summaries for provided gene identifiers
#'
#' This function uses the [mygene::queryMany()] to retrieve gene summaries from
#' any number of provided gene identifiers using the mygene API.
#'
#' @param gene_ids A vector of gene identifiers. Entrez, ensembl, and gene symbols all supported.
#'
#' @returns A character vector of gene summaries the same length as `gene_ids`.
#'
#' @importFrom mygene queryMany query
#' @export
#'
#' @seealso [mygene::queryMany()]
#' @author Jared Andrews
#'
#' @examples
#' genes <- c(1017, 1018, "ENSG00000148795", "CDK2", "goobledegook")
#' get_summaries(genes)
get_summaries <- function(gene_ids) {
  # Set `fields = "all"` to get all the info available.
  if (length(gene_ids) > 1) {
    df <- queryMany(gene_ids, fields = c("summary"), size = 1, returnall = TRUE)
    out <- df$response$summary
  } else {
    df <- query(gene_ids, fields = c("summary"), size = 1)
    out <- df$hits$summary
  }

  return(out)
}
