--- @meta

api.sys = {}

--- @class Distro
--- @field Name string
--- @field Version string

--- @return Distro
function api.sys.getDistro() end

--- @class Daemon
--- @field Name string
--- @field IsActive boolean
--- @field IsEnabled boolean
--- @field RunLevel string

--- @param daemonName string
--- @return Daemon
function api.sys.getDaemon(daemonName) end

--- @return string
--- @return table|nil error
function api.sys.getInitSystem() end