fx_version 'cerulean'
games {'gta5'}

author 'GOM Modelling'
description 'Pegassi Infernus XS Pack'
version '1.0.0'

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'AUDIO_GAMEDATA' 'audioconfig/ta023l539_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/ta023l539_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_ta023l539'


files {
  'audioconfig/*.dat151.rel',
  'audioconfig/*.dat54.rel',
  'sfx/**/*.awc',
  'handling.meta',
  'vehicles.meta',
  'carcols.meta',
  'carvariations.meta',
}

client_script 'vehicle_names.lua'
lua54 'yes'