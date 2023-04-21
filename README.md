# connectivity
## Overview: 
This repository contains the function used to connectivity metrics, boxes to define regions, and indexes to define particles released in said boxes. These functions/indices helped obtain the results described in Gallagher et al., _in prep_. Everything included in this repository was designed for an R programming environment. 

## Details: 
#### Last Updated: April 2023
**connectivity.sh** - this file contains the function used to calculate the two connectivity indices described in the function, using the boxes and particle indices included here. See the function for a detailed description. Update: as of April 2022, this function is no longer in use but is kept in the repository for future use. 

**connectivity_boxes.RData** - This RData file contains a list of the 8 boxes used to define the regions described in Gallagher et al., _in prep_. Each item in the list of the longitude (column 1) and latitude (column 2) of the bounding box. The boxes are presented in the following order, as defined in the manuscript: 
  1. Weddell Sea
  2. Shetland Islands
  3. Elephant Islands
  4. North West Antarctic Peninsula (WAP)
  5. Adelie gap
  6. South WAP
  7. Adelaide Island
  8. Bellingshausen Sea

**startsice.RData** - This RData file contains a list of the 8 indices used to subset simulated krill trajectory data from the Regional Ocean Modeling System (ROMS) to determine which simulated krill in each release event were released in each of the 8 boxes described above. The indices are presented as a list of vectors, with one vector per box. The indices are written such that they must be applied once the position/trajectory data have been subset to a specific release event (as done in the connectivity function). Position/trajectory data are available here: https://www.usap-dc.org/view/dataset/601655. Update: as of April 2022, with the retirement of the connectivity function above, this index is also no longer in use.

**region_timeseries.sh** - This function (added in April 2022) converts trajectory data into a series of numberic identifers, which indicate the region in boxes that the particle was in at that time series. If a particle is outside of a defined region, it is given a 0. 
