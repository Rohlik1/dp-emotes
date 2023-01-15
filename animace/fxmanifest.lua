fx_version 'bodacious'
game 'gta5'

lua54 'yes'

shared_scripts {
	'@es_extended/imports.lua'
}

client_scripts {
	'NativeUI.lua',
	'Config.lua',
	'Client/*.lua'
}

server_scripts {
	'Config.lua',
	'@oxmysql/lib/MySQL.lua',
	'Server/*.lua'
}