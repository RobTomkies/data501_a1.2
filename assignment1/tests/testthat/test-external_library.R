test_that("mean_variety geomean works", {
  test_input <- c(1,2,3,5)

  route_numcount <- 1/length(test_input)
  correct_result <- prod(test_input) ^ route_numcount

  expect_identical(correct_result, mean_variety(test_input)$geometric_mean)
})

