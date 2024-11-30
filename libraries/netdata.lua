---@meta

---Returns all NET-datas in table.
---@return table
---
---@shared
function GetNetDataTable() end

---Sets NET-data to player.
---NOTE: You can't change NET-data for others on CLIENT!
---@param name string
---@param value? any
---
---@shared
function PLAYER:SetNetData(name, value) end
