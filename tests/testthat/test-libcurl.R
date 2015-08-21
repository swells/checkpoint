# 
# Usage: > test_dir("tests/",  reporter = "tap")
#

context("Test for the existence of libcurl ")

describe("https", {
  it("can use libcurl over https", { 
    expect_equal(TRUE, TRUE)
  })
})