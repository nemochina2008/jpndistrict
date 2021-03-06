context("test-export.R")

d <- mesh_district(jis_code = 33101)
d2 <- mesh_district(jis_code = 14401)
d3 <- mesh_district(jis_code = "08")

test_that("mesh_district", {
  expect_is(
    d,
    c("sf", "data.frame")
  )
  expect_equal(
    dim(d),
    c(511L, 6L)
  )
  expect_equal(
    dim(d2),
    c(54L, 6L)
  )
  expect_named(
    d,
    c(
      "meshcode", "lng_center", "lat_center", "lng_error", "lat_error",
      "geometry"
    )
  )
  expect_equal(dim(d3), c(6247, 6))
})
