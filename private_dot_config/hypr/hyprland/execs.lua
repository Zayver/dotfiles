hl.on("hyprland.start", function ()
	-- Clipboard
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Cursor
    hl.exec_cmd("hyprctl setcursor HyprBibataModernClassicSVG 24")

    -- KDEConnect
    hl.exec_cmd("uwsm app -- kdeconnectd")
    hl.exec_cmd("uwsm app -- kdeconnect-indicator")

    -- XDG_MENU
    hl.exec_cmd("kbuildsycoca6")

    -- Shell
    hl.exec_cmd("noctalia")
end)