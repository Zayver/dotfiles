hl.config({
    general={
        border_size = 1,
        gaps_in = 5,
        gaps_out = 10,
        col= {
            active_border = "rgb(689d6a)",
            inactive_border = "rgba(31313600)"
        },
        resize_on_border = true,
        no_focus_fallback = true,
        layout = "dwindle",
        allow_tearing = true
    },
    input={
        kb_layout = "latam",
        numlock_by_default = true
    },
    decoration = {
        rounding = 12,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow={
          enabled = true,
           range = 4,
           render_power = 3,
           color = "rgba(1a1a1aee)"
        },

        blur={
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696
        }
    },

    animations={
        enabled = true,
    },
    misc={
        vrr = 0,
        disable_hyprland_logo = true,
        on_focus_under_fullscreen = 2,
        middle_click_paste = false
    }
})

-- animations

-- bezier = myBezier, 0.05, 0.9, 0.1, 1.05,
-- animation = windows, 1, 7, myBezier,
-- animation = windowsOut, 1, 7, default, popin 80%,
-- animation = border, 1, 10, default,
-- animation = borderangle, 1, 8, default,
-- animation = fade, 1, 7, default,
-- animation = workspaces, 1, 6, default