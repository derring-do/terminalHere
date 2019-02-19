#' Open RStudio Terminal in active file location
#'
#' @return
#' @import rstudioapi
#' @export
#'
#' @examples
terminalHere <- function() {
  termId <- terminalCreate(caption = dirname(getSourceEditorContext()$path), shellType = "win-git-bash")
  terminalSend(id = termId, text = paste("cd", dirname(getSourceEditorContext()$path), "\n"))
}

