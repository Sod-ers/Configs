-- Source: https://gist.github.com/nilninull/64389dcbe7e43bed8df6c9aef914d58e

local function restart_mpv()
   mp.command("quit-watch-later")

   local cmds = {"run", "mpv"}

   -- local opts = mp.get_property_native("property-list")
   local opts = mp.get_property_native("options")

   mp.set_property("msg-level", "all=no")

   for _, o in ipairs(opts) do
      if (mp.get_property_bool("option-info/" .. o .. "/set-from-commandline")) then
	 table.insert(cmds, "--" .. o .. "=" .. mp.get_property(o))
      end
   end

   local plist = mp.get_property_native("playlist")

   for _, o in ipairs(plist) do
      table.insert(cmds, o.filename)
   end
   -- mp.command_native(cmds)
   mp.command_native_async(cmds)
end

mp.add_key_binding("r", "restart_mpv_0", restart_mpv)
mp.add_key_binding("R", "restart_mpv_1", restart_mpv)
mp.add_key_binding("Ctrl+R", "restart_mpv_2", restart_mpv)
mp.add_key_binding("Ctrl+r", "restart_mpv_2", restart_mpv)
