---@meta

---Playertime library.
playertime = {}

---Returns full player profile
---@param sid string
---@return table playerProfile
---
---@server
function playertime.GetData(sid) end


---Returns player's played time.
---@param sid string
---@return number playedTime
---
---@server
function playertime.GetTotalTime(sid) end
function playertime.GetPlayedTime(...) end

---Returns player's first join date.
---@param sid string
---@return number firstJoin
---
---@server
function playertime.GetFirstJoin(sid) end

---Returns player's last visit date.
---@param sid string
---@return number lastVisit
---
---@server
function playertime.GetLastVisit(sid) end

---Returns and caches player's profile.
---@param sid string
---@return boolean cached
---
---@server
function playertime.FetchPlayerProfile(sid) end

---Returns full player's profile.
---@param sid string
---@return table playerProfile
---
---@server
---@async
function playertime.GetDataAsync(sid) end

---Returns player's played time.
---@param sid string
---@return number playedTime
---
---@server
---@async
function playertime.GetTotalTimeAsync(sid) end
function playertime.GetPlayedTimeAsync(...) end

---return player's first join date.
---@param sid string
---@return number firstJoin
---
---@server
---@async
function playertime.GetFirstJoinAsync(sid) end

---return player's last visit date.
---@param sid string
---@return number lastVisit
---
---@server
---@async
function playertime.GetLastVisitAsync(sid) end