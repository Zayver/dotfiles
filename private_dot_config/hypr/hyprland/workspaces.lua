hl.workspace_rule({workspace=1, monitor="DP-2", default=true})
for i = 2,5 do
    hl.workspace_rule({workspace=i, monitor="DP-2", persistent=true})
end

for i = 6,8 do
    hl.workspace_rule({workspace=i, monitor="DP-3", persistent=true})
end

for i = 9,10 do
    hl.workspace_rule({workspace=i, monitor="HDMI-A-1"})
end
