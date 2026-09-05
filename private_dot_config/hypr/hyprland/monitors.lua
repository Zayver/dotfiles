
TV = {
    output = "HDMI-A-1",
    mode = "preferred",
    position = "auto-up"
}

Samsung = {
    output="DP-2",
    mode="1920x1080@240",
    position="auto-left",
    scale=1,
    bitdepth=10
}

Lg = {
    output="DP-3",
    mode="1920x1080@144",
    position="auto-right",
    scale=1,
    bitdepth=10
}

hl.monitor(TV)
hl.monitor(Samsung)
hl.monitor(Lg)
