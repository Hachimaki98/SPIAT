# Function that converts a physical radius to a pixel radius for usage with other SPIAT functions
# This function created by Aaron Harris for usage in a forked version of SPIAT
# Note that this function assumes an MPP of 0.5 unless otherwise specified

#' @description Converts a physical (mm) radius to pixels for to support the usage of physical dimensions
#' for analysis
#' @param physical_radius The desired physical radius (in mm^2)
#' @param slide_mpp The MPP of the whole slide image (default is 0.5MPP)
#' @returns The radius in pixels
#' @export 


physical_to_pixel_radius <- function(physical_radius, slide_mpp=0.5) {
  micron_radius <- physical_radius * 1000
  pixel_radius <- micron_radius / slide_mpp
  
  
  return(pixel_radius)
  
}
  