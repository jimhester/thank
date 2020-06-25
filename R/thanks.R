#' Pick a random thank you gif and copy it to the clipboard
#' @export
you <- function() {
  row <- sample(NROW(thank::thanks), 1L)
  res <- sprintf("![%s](%s)", thank::thanks$text[row], thank::thanks$url[row])
  clipr::write_clip(res)
  message("thanks copied to clipboard")

  invisible(res)
}

#' A dataset of thank you gifs
#'
#' @name thanks
NULL
