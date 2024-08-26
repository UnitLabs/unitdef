---@meta

---Quick server functions.
---
---@server
serverquicks = {}

---Stops server.
---@param sid? number
---
---@server
function serverquicks.Stop(sid) end

---Restart server.
---@param sid? number
---@param time? number
---@param reason? string
---
---@server
function serverquicks.Restart(sid, time, reason) end

---Cancels restart for server.
---@param sid? number
---
---@server
function serverquicks.CancelRestart(sid) end

---Kicks all players from server with given reason.
---@param reason? string
---
---@server
function serverquicks.KickAll(reason) end