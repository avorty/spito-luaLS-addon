--- @meta

api.fs = {}

--- check if a path exists
--- @param path string
--- @return boolean
function api.fs.pathExists(path) end

--- check if a file exists
--- @param path string
--- @param isDirectory boolean
--- @return boolean
function api.fs.fileExists(path, isDirectory) end

--- read a file
--- @param path string
--- @return string content
--- @return table|nil error
function api.fs.readFile(path) end

--- @class DirectoryEntry
--- @field IsDir boolean
--- @field Path string

--- read a directory
--- @param path string
--- @return DirectoryEntry[] content
--- @return table|nil error
function api.fs.readDir(path) end

-- check if file contains a string
--- @param fileContent string
--- @param content string
--- @return boolean
function api.fs.fileContains(fileContent, content) end

-- remove comments from file content
--- @param fileContent string
--- @param singleLineStart string
--- @param multiLineStart string
--- @param multiLineEnd string
--- @return string
function api.fs.removeComments(fileContent, singleLineStart, multiLineStart, multiLineEnd) end

--- find start index of specified string in file
--- @param regex string
--- @param fileContent string
--- @return number[]
--- @return table|nil error
function api.fs.find(regex, fileContent) end

--- find all indexes of specified string in file
--- @param regex string
--- @param fileContent string
--- @return number[][]
--- @return table|nil error
function api.fs.findAll(regex, fileContent) end

--- returns the lines of a file with are matching the given regex
--- @param regex string
--- @param fileContent string
--- @return string[] lines
--- @return table|nil error
function api.fs.getProperLines(regex, fileContent) end

--- create a file
--- @param path string
--- @param content string
--- @param optional boolean If true, the file won't be created if conflicting with other rules
--- @return table|nil error
function api.fs.createFile(path, content, optional) end

--- @class CreateConfigOptions
--- @field Optional boolean
--- @field Options string
--- @field ConfigType number

--- create a config file
--- @param path string
--- @param content string
--- @param options CreateConfigOptions
--- @return table|nil error
function api.fs.createConfig(path, content, options) end

--- update a config file
--- @param path string
--- @param content string
--- @param options CreateConfigOptions
--- @return table|nil error
function api.fs.updateConfig(path, content, options) end

--- @param received string
--- @param desired string
--- @param configType number
--- @return table|nil error
function api.fs.compareConfigs(received, desired, configType) end

--- @return number revertNumber
--- @return table|nil error
function api.fs.apply() end


api.fs.config = {}

--- @type number
api.fs.config.json = nil

--- @type number
api.fs.config.yaml = nil

--- @type number
api.fs.config.toml = nil