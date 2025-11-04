fx_version 'cerulean'
games {'gta5'}

author 'GOM'
description 'GOM Styling 2012 Camaro V3'
version '3.0.0'

data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.meta'
data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'AUDIO_GAMEDATA' 'audioconfig/aq2jzgterace_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/aq2jzgterace_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_aq2jzgterace'


files {
  'audioconfig/*.dat151.rel',
  'audioconfig/*.dat54.rel',
  'sfx/**/*.awc',
  'handling.meta',
  'vehiclelayouts.meta',
  'vehicles.meta',
  'carcols.meta',
  'carvariations.meta',
}

client_script 'vehicle_names.lua'
lua54 'yes'