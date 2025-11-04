fx_version 'cerulean'
games {'gta5'}

author 'MMT'
description 'MMT 512 Liberty Walk'
version '1.0.0'

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'

files {
  'handling.meta',
  'vehicles.meta',
  'carcols.meta',
  'carvariations.meta',
}

client_script 'vehicle_names.lua'
lua54 'yes'