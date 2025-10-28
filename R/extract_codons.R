#' Extract Codons
#'
#' @param sequence RNA string that you wish to extract codons from, char
#' @param start Starting point of codon extractio, default at position 1
#'
#' @returns substrings of three characters (one codon) in vector
#' @export
#'
#' @examples extract_codons("AUGGCUUAA")
extract_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  # Handle short sequences
  if (seq_length - start + 1 < 3) {
    return(character(0))
  }
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
