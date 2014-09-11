# tests for initialize
context("MRAN snapshots")



test_that("snapshot functions return correct results", {
  
  ss <- getSnapshotUrl(returnUrl=FALSE)
  expect_is(ss, "character")
  expect_true(length(ss) >= 3)
  
  expect_true(all(sapply(ss, nchar) >= 10))
  
  dd <-  sapply(ss, function(x)substr(x, start = 1, stop = 10))
  expect_is(as.Date(dd), "Date")
  expect_true(all(diff(as.Date(dd)) >= 1))
  
  mm <- getSnapshotUrl(returnUrl = TRUE)
  expect_equal(paste0(mranUrl(), ss), mm)
  
})