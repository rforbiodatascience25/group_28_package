test_that("codon_sub correctly replaces T with U", {
  # Single codon test
  expect_equal(codon_sub("ATG"), "AUG")

  # Vector of codons
  expect_equal(codon_sub(c("ATG", "TTA", "GTC")), c("AUG", "UUA", "GUC"))

  # All T's replaced
  expect_equal(codon_sub("TTT"), "UUU")

  # No T present: should remain unchanged
  expect_equal(codon_sub("AAC"), "AAC")

  # Lowercase input: should only replace uppercase T
  expect_equal(codon_sub("atgTtA"), "atgUtA")

  # Empty string should return empty string
  expect_equal(codon_sub(""), "")

  # Mixed input vector
  expect_equal(
    codon_sub(c("TTT", "ATC", "GGA")),
    c("UUU", "AUC", "GGA")
  )
})

