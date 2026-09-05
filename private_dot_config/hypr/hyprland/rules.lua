local general = {
    "^(Open File)(.*)$",
    "^(Select a File)(.*)$",
    "^(Choose wallpaper)(.*)$",
    "^(Open Folder)(.*)$",
    "^(Save As)(.*)$",
    "^(Library)(.*)$",
    "^(File Upload)(.*)$"
}

for _, val in ipairs(general) do
    hl.window_rule({
        match={
            title = val
        },
        center=true
    })
end

hl.window_rule({
    match={
        class = "(gpu-screen-recorder-gtk)"
    },
    workspace = "recorder"
})

-- noctalia stuff
hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

