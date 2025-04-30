fx_version 'cerulean'
game 'gta5'
Lua 54 'on'

author 'FirePager Developer'
description 'Fire Department Pager System (Motorola Style)'
version '2.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}
