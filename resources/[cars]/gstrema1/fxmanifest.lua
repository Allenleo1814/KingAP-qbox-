fx_version 'cerulean'
games {'gta5'}

author 'GOM | Modeling'
description 'Annis Rema R'
version '1.0.0'

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file "AUDIO_SYNTHDATA" "audioconfig/nsr2teng_amp.dat"
data_file "AUDIO_GAMEDATA" "audioconfig/nsr2teng_game.dat"
data_file "AUDIO_SOUNDDATA" "audioconfig/nsr2teng_sounds.dat"
data_file "AUDIO_WAVEPACK" "sfx/dlc_nsr2teng"
data_file 'AUDIO_GAMEDATA' 'audioconfig/ta038sr20_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/ta038sr20_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_ta038sr20'


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