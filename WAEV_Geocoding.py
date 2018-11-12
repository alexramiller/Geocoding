### Basic code for geocoding within ArcMap (for replicability - doesn't produce report)

import arcpy

#Set workspace location
arcpy.env.workspace = "C:/Users/aramille/Documents/ArcGIS/Geocoding"

#Set geocoding variables
address_table = "addresses_tt_editExcel.csv"
address_locator = "USA"
address_fields = "Address addr1plain"
geocode_result = "geocode_result.shp"

#Run geocoding
arcpy.GeocodeAddresses_geocoding(address_table, address_locator, address_fields, geocode_result)