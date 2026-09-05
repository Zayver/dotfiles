-- Extra plugins configs if apply
-- Gloview
hl.config({
    plugin = {
        gloview = {
            duration = 180
        }
    }
})
hl.bind("SUPER + TAB", hl.plugin.gloview.toggle)
hl.bind("SUPER + SHIFT + TAB", hl.plugin.gloview.desktop)
hl.bind("SUPER + CTRL + TAB", hl.plugin.gloview.allworkspaces)