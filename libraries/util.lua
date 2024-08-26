---@meta

util = util or {}

---Calls function on `GM:Initialize`.
---@param func function
---@param priority? boolean
---
---@shared
function util.OnInitialize(func, priority) end
function util.OnInitialise(func, priority) end

---Calls function in the upcoming tick.
---@param func function
---
---@shared
function util.NextTick(func) end
function util.NextThink(func) end

---Calls function on `GM:InitPostEntity`.
---@param func function
---@param priority? boolean
---
---@shared
function util.OnInitPostEntity(func, priority) end
function util.OnEntityInitialize(func, priority) end
function util.OnEntityInitialise(func, priority) end

---Calls function on the first frame.
---Useful to create/render materials(RTs), setup fonts, check settings, etc.
---@param func function
---@param priority? boolean
---
---@shared
function util.OnFirstFrame(func, priority) end

---Returns player's spawn time (CurTime())
---@return number spawnTime
---
---@shared
function PLAYER:GetSpawnTime() end