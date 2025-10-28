test_that("extract_codons splits sequence into correct codons", {

  # Example input
  seq <- "ATGCGTAAATTT"

  # Expected output (vector of codons)
  expected_codons <- c("ATG", "CGT", "AAA", "TTT")

  # Test equality
  expect_equal(extract_codons(seq), expected_codons)

  # Test different starting frames
  expect_equal(extract_codons(seq, start = 2), c("TGC", "GTA", "AAT"))
  expect_equal(extract_codons(seq, start = 3), c("GCG", "TAA", "ATT"))

  # Edge case: sequence not divisible by 3
  seq2 <- "ATGCGTA"
  expect_equal(extract_codons(seq2), c("ATG", "CGT"))

  # Edge case: very short sequence
  expect_equal(extract_codons("AT"), character(0))
})

