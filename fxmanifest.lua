name "md-vape"
author "Mustache_dom"
description "Vape by Mustache_dom"
fx_version "cerulean"
game "gta5"
version '2.0.0'

client_scripts {
	'client/**.lua',
}

server_scripts {
    'server/**.lua'
}

shared_scripts {
    'shared/**.lua',
    '@ox_lib/init.lua',
}

lua54 'yes'


