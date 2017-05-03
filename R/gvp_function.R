raster_to_low_res_grid <- function(raster_high_res, raster_low_res, method = "aggregate", out = "data.frame", ...) {
  require(raster)
  if (class(raster_high_res) == "character") raster_high_res <- raster(raster_high_res) # So you can pass in paths.
  if (method == "aggregate") {
    f <- res(raster_low_res)[1] / res(raster_high_res)[1] # Factor of scaling.
    y <- aggregate(raster_high_res, fact = f, progress = 'text',...)
    return(y)
  }
  
}