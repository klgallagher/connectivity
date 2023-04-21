#!/bin/sh

#  region_timeseries.sh
#  
#
#  Created by Katherine Hudson on 4/13/23.
#

track2regions <- function(lon, lat, boxes){
    #lon/lat are ROMS particle trajectory matrices
    #boxes is a list of X/Y matrices defining regions of interest
  reg <- matrix(0, nrow = nrow(lon), ncol = ncol(lon))
  for(x in 1:nrow(lon)){
    LON <- lon[x,]
    LAT <- lat[x,]
    
    for(y in 1:length(boxes)){
      i <- point.in.polygon(point.x = LON, point.y = LAT, pol.x = boxes[[y]][,1], pol.y = boxes[[y]][,2])
      ind <- which(i != 0)
      
      if(length(ind) != 0){
        reg[x,ind] <- y
      }
    } #end y
    
    reg[x,] <- replace(reg[x,], is.na(LON), NA)
    
    print(x)
    
  } #end x
  return(reg)
}

