test_that("tosc_read returns and XML file", {
 
  basic <- system.file("extdata", "basic.touchosc", package = "toscr")
  res <- tosc_read(basic)
  expect_s3_class(res, "xml_document")

})
