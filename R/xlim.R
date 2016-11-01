##' set x axis limits for Tree panel
##'
##'
##' @title xlim_tree
##' @param xlim xlim
##' @return updated tree view
##' @export
##' @author guangchuang yu
xlim_tree <- function(xlim) {
    expand_xlim(xlim, panel='Tree')
}


##' expand x axis limits for specific panel
##'
##'
##' @title expand_xlim
##' @param xlim xlim
##' @param panel panel
##' @return updated tree view
##' @importFrom ggplot2 geom_blank
##' @export
##' @author guangchuang yu
expand_xlim <- function(xlim, panel) {
    dummy <- data.frame(x=xlim, .panel=panel)
    geom_blank(aes_(x=~x), dummy, inherit.aes = FALSE)
}
