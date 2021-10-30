local filesystem = require('gears.filesystem')

local config_dir = filesystem.get_configuration_dir()
local bin_dir = config_dir .. 'binaries/'


return {

	-- The default applications in keybindings and widgets
	default = {
		terminal 			= 'urxvt',                                  -- Terminal Emulator
		text_editor 		= 'subl',                                   -- GUI Text Editor
		web_browser 		= 'firefox',                                -- Web browser
		file_manager 		= 'thunar',                                 -- GUI File manager
		network_manager 	= 'urxvt -e sudo wifi-menu',				-- Network manager
		bluetooth_manager 	= 'blueman-manager',						-- Bluetooth manager
		power_manager 		= 'xfce4-power-manager',					-- Power manager
		package_manager 	= 'urxvt',									-- GUI Package manager
		lock 				= 'awesome-client "_G.show_lockscreen()"',  -- Lockscreen
		quake 				= 'st',             						-- Quake-like Terminal
		rofiglobal			= 'rofi -dpi ' .. screen.primary.dpi ..
							  ' -show "Global Search" -modi "Global Search":' .. config_dir ..
							  '/configuration/rofi/sidebar/rofi-spotlight.sh' ..
							  ' -theme ' .. config_dir ..
							  '/configuration/rofi/sidebar/rofi.rasi', 	-- Rofi Web Search
		rofiappmenu 		= 'rofi -dpi ' .. screen.primary.dpi ..
							  ' -show drun -theme ' .. config_dir ..
							  '/configuration/rofi/appmenu/rofi.rasi'   -- Application Menu

		-- You can add more default applications here
	},

	-- List of apps to start once on start-up

	run_on_start_up = {

		'picom -b --experimental-backends --dbus --config ' ..
		config_dir .. '/configuration/picom.conf',     												-- Compositor
		'blueman-applet',                                                                           -- Bluetooth tray icon
		'mpd',                                                                                      -- Music Server
		'thunar --daemon',
		'xrdb $HOME/.Xresources',
		'xidlehook --not-when-fullscreen --not-when-audio --timer 600 '..
		' "awesome-client \'_G.show_lockscreen()\'" ""'  											-- Auto lock timer
		-- You can add more start-up applications here

	},

	-- List of binaries that will execute a certain task

	bins = {
		full_screenshot = bin_dir .. 'snap full',              					                    -- Full Screenshot
		area_screenshot = bin_dir .. 'snap area'			                                        -- Area Selected Screenshot
	}
}
