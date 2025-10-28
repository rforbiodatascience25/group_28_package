# tests/testthat/test-RNA_to_aa_trans.R

test_that("example from docs works", {
  expect_equal(RNA_to_aa_trans(c("UUU", "ACC")), "FT")
})

test_that("order is preserved", {
  expect_equal(RNA_to_aa_trans(c("ACC", "UUU")), "TF")
})

test_that("empty input returns empty string", {
  expect_equal(RNA_to_aa_trans(character(0)), "")
})

test_that("unknown codon becomes 'NA' in output", {
  expect_equal(RNA_to_aa_trans("XXX"), "NA")
})
