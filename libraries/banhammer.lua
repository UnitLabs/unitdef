---@meta

---UnitLabs' bans system
---
---@server
banhammer = {}

---Bans given SteamID.
---
---@param steamID string
---@param name string
---@param reason string
---@param adminSteamID string
---@param adminName string
---@param banLength number
---
---@server
function banhammer.Add(steamID, name, reason, adminSteamID, adminName, banLength) end

---Removes ban from the given SteamID.
---
---@param steamID string
---
---@server
function banhammer.Remove(steamID) end