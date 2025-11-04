fx_version 'cerulean'
games {'gta5'}

author 'MMT'
description 'MMT 512 Liberty Walk'
version '1.0.0'

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file "AUDIO_SYNTHDATA" "audioconfig/lg48lexlfa_amp.dat"
data_file "AUDIO_GAMEDATA" "audioconfig/lg48lexlfa_game.dat"
data_file "AUDIO_SOUNDDATA" "audioconfig/lg48lexlfa_sounds.dat"
data_file "AUDIO_WAVEPACK" "sfx/dlc_lg48lexlfa"

files {
  'handling.meta',
  'vehicles.meta',
  'carcols.meta',
  'carvariations.meta',
  "audioconfig/*.dat151.rel",
  "audioconfig/*.dat54.rel",
  "audioconfig/*.dat10.rel",
  "sfx/**/*.awc"
}

client_script 'vehicle_names.lua'
lua54 'yes'