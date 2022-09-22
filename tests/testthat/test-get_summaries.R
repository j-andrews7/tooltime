test_that("get_summaries works with entrez IDs", {
  expect_equal(get_summaries(1017), "This gene encodes a member of a family of serine/threonine protein kinases that participate in cell cycle regulation. The encoded protein is the catalytic subunit of the cyclin-dependent protein kinase complex, which regulates progression through the cell cycle. Activity of this protein is especially critical during the G1 to S phase transition. This protein associates with and regulated by other subunits of the complex including cyclin A or E, CDK inhibitor p21Cip1 (CDKN1A), and p27Kip1 (CDKN1B). Alternative splicing results in multiple transcript variants. [provided by RefSeq, Mar 2014].")
})

test_that("get_summaries works with gene symbols", {
  expect_equal(get_summaries("CDK2"), "This gene encodes a member of a family of serine/threonine protein kinases that participate in cell cycle regulation. The encoded protein is the catalytic subunit of the cyclin-dependent protein kinase complex, which regulates progression through the cell cycle. Activity of this protein is especially critical during the G1 to S phase transition. This protein associates with and regulated by other subunits of the complex including cyclin A or E, CDK inhibitor p21Cip1 (CDKN1A), and p27Kip1 (CDKN1B). Alternative splicing results in multiple transcript variants. [provided by RefSeq, Mar 2014].")
})

test_that("get_summaries works with ensembl IDs", {
  expect_equal(get_summaries("ENSG00000148795"), "This gene encodes a member of the cytochrome P450 superfamily of enzymes. The cytochrome P450 proteins are monooxygenases which catalyze many reactions involved in drug metabolism and synthesis of cholesterol, steroids and other lipids. This protein localizes to the endoplasmic reticulum. It has both 17alpha-hydroxylase and 17,20-lyase activities and is a key enzyme in the steroidogenic pathway that produces progestins, mineralocorticoids, glucocorticoids, androgens, and estrogens. Mutations in this gene are associated with isolated steroid-17 alpha-hydroxylase deficiency, 17-alpha-hydroxylase/17,20-lyase deficiency, pseudohermaphroditism, and adrenal hyperplasia. [provided by RefSeq, Jul 2008].")
})

test_that("get_summaries works with queries with no matches", {
  expect_equal(get_summaries("goobledegook"), NULL)
})
