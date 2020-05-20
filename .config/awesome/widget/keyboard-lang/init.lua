local awful = require('awful')
local wibox = require('wibox')
local awful = require('awful')
local gears = require('gears')
local naughty = require('naughty')

local watch = awful.widget.watch

local clickable_container = require('widget.clickable-container')
local dpi = require('beautiful').xresources.apply_dpi

local config_dir = gears.filesystem.get_configuration_dir()
local widget_icon_dir = config_dir .. 'widget/keyboard-lang/icons/'


local return_button = function()

    local lang_imagebox = wibox.widget {
        nil,
        {
            id = 'icon',
            image = widget_icon_dir .. 'key' .. '.svg',
            widget = wibox.widget.imagebox,
            resize = true
        },
        nil,
        expand = 'none',
        layout = wibox.layout.align.vertical
    }

    local language_text = wibox.widget {
        id = 'percent_text',
        text = 'us',
        font = '3270Medium Nerd Font 14',
        align = 'center',
        valign = 'center',
        visible = false,
        widget = wibox.widget.textbox
    }


    local lang_widget = wibox.widget {
        layout = wibox.layout.fixed.horizontal,
        spacing = dpi(0),
        lang_imagebox,
        language_text
    }


    local lang_button = wibox.widget {
        {
            lang_widget,
            margins = dpi(7),
            widget = wibox.container.margin
        },
        widget = clickable_container
    }

    local toggle_cmd = [[
    (setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap gr,us || setxkbmap us,gr
    ]]

        local check_status_cmd = [[bash -c "
    xkblayout-state print %s | tr -d ' '
    "]]

    lang_button:buttons(
        gears.table.join(
            awful.button(
                {},
                1,
                nil,
                function()
                    awful.spawn.easy_async_with_shell(toggle_cmd, function()
                        awful.spawn.easy_async_with_shell(check_status_cmd, function(out)
                            lang_widget.spacing = dpi(5)
                            language_text.visible = true
                            language_text:set_text(out)
                        end)
                    end)
                    collectgarbage('collect')
                end
            )
        )
    )

    -- Watch status if charging, discharging, fully-charged
    watch(check_status_cmd, 5, function(widget, stdout)

        lang_widget.spacing = dpi(5)
        language_text.visible = true
        language_text:set_text(stdout)

        collectgarbage('collect')
    end)

    return lang_button


end


return return_button
