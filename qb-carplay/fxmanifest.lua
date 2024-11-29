fx_version 'adamant'
game 'gta5'

ui_page 'html/main.html'

files {
	'html/main.html',
	'html/app.js',
	'html/style.css',
	'html/jquery-3.4.1.min.js',
    'html/img/*.png',
    'html/img/*.jpg',
}

client_scripts{
    'config.lua',
    'client/client.lua',
}

server_scripts{
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server/server.lua',
}

shared_script {
    '@ox_lib/init.lua',
}

lua54 'yes'