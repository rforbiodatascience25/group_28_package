#' Codon Substitution: Replace T with U
#'
#' @param codon_TU A character string or vector representing one or more DNA codons containing the base "T".
#'
#' @returns A character string or vector where all occurrences of "T" have been replaced with "U".
#' @export
#'
#' @examples
#' # Convert a single codon
#' codon_sub("ATG")
#'
#' # Convert a vector of codons
#' codon_sub(c("ATG", "TTA", "GTC"))
#'
#' # Output should replace all T's with U's
#' codon_sub("TTT")  # returns "UUU"
codon_sub <- function(codon_TU){
  codon_sub_T_to_U <- gsub("T", "U", codon_TU)
  return(codon_sub_T_to_U)
}
