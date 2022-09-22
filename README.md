
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tooltime

<!-- badges: start -->
<!-- badges: end -->

This a toy example R package for a seminar.

## Installation

You can install the development version of tooltime like so:

``` r
library(devtools)
devtools::install_github("j-andrews7/tooltime)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tooltime)

# Almost any type of gene identifier will work. Only the top hit for each query will be returned.
genes <- c(1017, "ENSG00000148795", "CDK2", "goobledegook")

summaries <- get_summaries(genes)
#> Finished

summaries
#> [1] "This gene encodes a member of a family of serine/threonine protein kinases that participate in cell cycle regulation. The encoded protein is the catalytic subunit of the cyclin-dependent protein kinase complex, which regulates progression through the cell cycle. Activity of this protein is especially critical during the G1 to S phase transition. This protein associates with and regulated by other subunits of the complex including cyclin A or E, CDK inhibitor p21Cip1 (CDKN1A), and p27Kip1 (CDKN1B). Alternative splicing results in multiple transcript variants. [provided by RefSeq, Mar 2014]."                                                                                                            
#> [2] "This gene encodes a member of the cytochrome P450 superfamily of enzymes. The cytochrome P450 proteins are monooxygenases which catalyze many reactions involved in drug metabolism and synthesis of cholesterol, steroids and other lipids. This protein localizes to the endoplasmic reticulum. It has both 17alpha-hydroxylase and 17,20-lyase activities and is a key enzyme in the steroidogenic pathway that produces progestins, mineralocorticoids, glucocorticoids, androgens, and estrogens. Mutations in this gene are associated with isolated steroid-17 alpha-hydroxylase deficiency, 17-alpha-hydroxylase/17,20-lyase deficiency, pseudohermaphroditism, and adrenal hyperplasia. [provided by RefSeq, Jul 2008]."
#> [3] "This gene encodes a member of a family of serine/threonine protein kinases that participate in cell cycle regulation. The encoded protein is the catalytic subunit of the cyclin-dependent protein kinase complex, which regulates progression through the cell cycle. Activity of this protein is especially critical during the G1 to S phase transition. This protein associates with and regulated by other subunits of the complex including cyclin A or E, CDK inhibitor p21Cip1 (CDKN1A), and p27Kip1 (CDKN1B). Alternative splicing results in multiple transcript variants. [provided by RefSeq, Mar 2014]."                                                                                                            
#> [4] NA
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks.

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.
