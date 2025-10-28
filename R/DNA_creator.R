#' Randomized DNA Creator
#'
#' @param DNA_len The length of the wanted output DNA string
#'
#' @returns A DNA sequence of length DNA_len
#' @export
#'
#' @examples DNA_creator(5)
DNA_creator <- function(DNA_len){
  DNA_bases <- sample(c("A", "T", "G", "C"), size = DNA_len, replace = TRUE)
  DNA_string <- paste0(DNA_bases, collapse = "")
  return(DNA_string)
}
