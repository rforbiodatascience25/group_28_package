#' Plot sequence base count
#'
#' @param sequence RNA string that you which to plot base frequencies of
#'
#' @returns a bar plot of frequencies of bases
#' @export
#'
#'@import ggplot2, stringr
#'
#' @examples plot_base_counts("AUGGCUUAA")
plot_base_counts <- function(sequence) {
  # Split sequence into individual characters to get unique characters
  unique_chars <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each unique character in the sequence
  counts <- sapply(unique_chars, function(ch) stringr::str_count(sequence, ch)) |>
    as.data.frame()

  # Name the count column and add a column with the character itself
  colnames(counts) <- "Count"
  counts[["Character"]] <- rownames(counts)

  # Create a bar plot of character frequencies
  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Character, y = Count, fill = Character)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the ggplot object
  return(plot)
}
