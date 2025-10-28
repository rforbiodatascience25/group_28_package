

#' RNA to amino acid translator
#'
#' @param codons a list of aminao RNA codons.
#'
#'
#' @returns a concatenated string of the amino acids names abbreviations.
#' @export
#'
#' @examples
#' Amino_acids <- RNA_to_aa_trans(c("UUU","ACC"))
#' Amino_acids
#'
RNA_to_aa_trans <- function(codons){
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}
