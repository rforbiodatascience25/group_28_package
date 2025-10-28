test_that("DNA_creator returns correct output type and length", {
  # Test that output is a string
  result <- DNA_creator(10)
  expect_type(result, "character")

  # Test that output has correct length (number of characters)
  expect_equal(nchar(result), 10)

  # Test that output only contains valid DNA bases
  expect_true(all(strsplit(result, "")[[1]] %in% c("A", "T", "G", "C")))
})

test_that("DNA_creator handles edge cases", {
  # Zero-length DNA
  expect_equal(DNA_creator(0), "")

  # Length of 1 should still return one valid base
  one_base <- DNA_creator(1)
  expect_equal(nchar(one_base), 1)
  expect_true(one_base %in% c("A", "T", "G", "C"))
})
