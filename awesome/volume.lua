local wibox = require("wibox")
local awful = require("awful")

volume_widget = wibox.widget.textbox()
volume_widget:set_align("right")

function update_volume(widget)
    local fd = io.popen("amixer sget Master")
    local status = fd:read("*all")
    fd:close()

    local volume = tonumber(string.match(status, "(%d?%d?%d)%%")) / 100
    local volume = string.match(status, "(%d?%d?%d)%%")
    volume = string.format("% 3d", volume)

    status = string.match(status, "%[(o[^%]]*)%]")

    if string.find(status, "on", 1, true) then
        -- For the volume numbers
        volume = volume .. "%"
    else
        -- For the mute button
        volume = volume .. "M"

    end
    widget:set_markup(volume)
end

update_volume(volume_widget)

dbus.request_name("session", "com.ch1p.avm")
dbus.add_match("session", "interface='com.ch1p.avm',member='valueChanged'")
dbus.connect_signal("com.ch1p.avm", function()
    update_volume(volume_widget)
end
)
