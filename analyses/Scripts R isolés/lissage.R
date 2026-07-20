library(raster)

# lire raster
r <- raster("C:/Users/xxx/Downloads/OCSTNS.tif")

# filtre médian 3x3
r_med <- focal(r,
               w = matrix(1, 3, 3),
               fun = median,
               na.rm = TRUE)

# export correct
writeRaster(r_med,
            filename = "C:/Users/xxx/Downloads/OCSTNS2.tif",
            format = "GTiff",
            overwrite = TRUE)
