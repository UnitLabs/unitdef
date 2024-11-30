---@meta

---Returns true if player is in the given group.
---@param id string
---@return boolean ingroup
---
---@server
function PLAYER:IsInSteamGroup(id) end

---Returns player's group stats.
---@param id string
---@return table group
---
---@server
function PLAYER:GetSteamGroup(id) end
---Returns is player's groups are loaded.
---
---@return boolean ok
---
---@server
function PLAYER:HasSteamGroups() end

---Returns is the given group is player's primary group.
---@param id string
---@return boolean ok
---
---@server
function PLAYER:IsPlayersPrimarySteamGroup(id) end