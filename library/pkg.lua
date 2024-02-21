--- @meta

api.pkg = {}

--- @class Package
--- @field Name string
--- @field Version string
--- @field Description string
--- @field Architecture string
--- @field URL string
--- @field Licenses string[]
--- @field Groups string[]
--- @field Provides string[]
--- @field DependsOn string[]
--- @field OptionalDeps string[]
--- @field RequiredBy string[]
--- @field OptionalFor string[]
--- @field ConflictsWith string[]
--- @field Replaces string[]
--- @field InstalledSize string[]
--- @field Packager string
--- @field BuildDate string
--- @field InstallDate string
--- @field InstallReason string
--- @field InstallScript boolean
--- @field ValidatedBy string

--- @param name string
--- @return Package
function api.pkg.get(name) end