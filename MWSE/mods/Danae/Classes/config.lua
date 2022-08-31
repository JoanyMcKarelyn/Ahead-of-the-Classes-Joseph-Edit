local this = {}
this.configPath = "Ahead of the Classes"
this.defaultConfig = {modEnabled = true}
local inMemConfig = mwse.loadConfig(this.configPath, this.defaultConfig)
this.config = setmetatable({
    save = function() mwse.saveConfig(this.configPath, inMemConfig) end
}, {
    __index = function(_, key) return inMemConfig[key] end,
    __newindex = function(_, key, value) inMemConfig[key] = value end
})
-- code that's copied over from merlord's another mod

return this
