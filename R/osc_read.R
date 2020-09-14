#' Read a touchOSC layout file
#'
#' @param tosc a file with the extension .touchosc
#' @return an xml2 object
#' @export
#' 
#' @examples
#' basic <- system.file("extdata", "basic.touchosc", package = "toscr")
#' x <- tosc_read(basic)
#' xml2::xml_find_all(x, ".//control")
tosc_read <- function(tosc) {
  tmp <- tempfile(
    pattern = "tosc", 
    fileext = tools::file_path_sans_ext(basename(tosc))
  )
  dir.create(tmp)
  zip::unzip(tosc, files = "index.xml", exdir = tmp)
  xml2::read_xml(file.path(tmp, "index.xml"))
}
