-- QT stuff
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")


-- Dolphin fix
hl.env("XDG_MENU_PREFIX", "plasma-")

-- Xcursor
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")

hl.env("GTK_THEME", "Adwaita:dark")