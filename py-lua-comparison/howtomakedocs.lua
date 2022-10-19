--[=[
    This file demonstrates creating documentation for Lua functions & variables.
    These can then generate HTML files with ldoc/luadoc CLI.

    All documentation will display in IntelliSense on VSCode (so long as `---@meta` is used), and other IDE that support it.

    The diagnostic label below disables diagnostics in the Lua Language Server VSCode extension.
]=]

--- @diagnostic disable: unused-local, unused-function, unused-vararg

--- This function doesn't do anything special, it just returns the first value that is passed.
---
--- ```lua
--- print(myFunction(5)) --> 5
--- ```
--- @param x any
--- @return any
local function myFunction(x)
    return x
end

--- This value is required by problem analysis to be a number, otherwise a warning is generated.
--- @type number
local myVariable = 5

--- This is a custom identity class, it is not a value but a type definition, hence the prefix @class below.
---
--- In order to use classes, they must be defined in a file with a `---@meta` tag as it's first line.
--- @class identity
local identity = {}
--- @type string The identity's name.
identity.name = nil
--- @type number The age of the identity.
identity.age = nil
--- @type number The weight of the identity.
identity.weight = nil
--- @type string The height of the identity.
identity.height = '6\'2'

--- This function returns an `identity` class, but it's class can only be identified if you use the `---@return` tag.
--- @return identity
local function newIdentity()
    return {
        name = 'John Smith',
        age = 30,
        weight = "200lbs",
        height = '6\'2'
    }
end