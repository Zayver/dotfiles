function Merge(...)
    local result = {}

    for _, tbl in ipairs({...}) do
        for k, v in pairs(tbl) do
            result[k] = v
        end
    end

    return result
end