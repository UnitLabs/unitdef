---@meta

---@return table players
---
---@shared
function player.GetAllCached() end
function player.GetHumansCached() end
function player.GetBotsCached() end

---Returns player's GEO data.
---@return table GEO
---
---@server
function PLAYER:GetGEO() end

---Returns player's country name.
---@return string countryName.
---
---@shared
function PLAYER:GetCountry() end

---Returns player's country's code.
---@return string countryCode
---
---@shared
function PLAYER:GetCountryCode() end