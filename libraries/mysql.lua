---@meta

---MariaDB manipulation library.
---
---@server

mysql = {}

---@deprecated
MySQL = mysql

---Connects to the database.
---
---@internal
---@server
function mysql.Connect() end

---Asks library to poll all queries in queue.
---
---@internal
---@server
function mysql.Poll() end

---Enqueues MariaDB query.
---
---```
---mysql.Query("SELECT * FROM table_name;", function(data, id, ...)
---	print("Data:", data, id, ...)
---	-- Data: table: 0x000000   4   "myData"
---end, function(err, id, ...)
---	print("Error:", err, id, ...)
---	-- Error: MariaDB error!   4   "myData"
---end, "myData")
---```
---
---@param query string
---@param onSuccess function | nil
---@param onError function | nil
---@param ... any | nil
---@return number QueryID
---
---@server
function mysql.Query(query, onSuccess, onError, ...) end

---Enqueues async MariaDB query.
---
---```
---coroutine.wrap(function()
---		local succeed, dataOrErr, id, myData = mysql.aQuery("SELECT * FROM table_name;", "myData")
---
---		print(succeed, dataOrErr, id, myData)
---		-- true, table: 0x000000, 4, "myData"
---end)()
---```
---
---@param query string
---@param ... any | nil
---@return boolean succeed, table|string dataOrErr, number queryID, any|nil ...
---
---@server
function mysql.aQuery(query, ...) end

---Makes synced MariaDB query.
---WARNING: May crash servers!
---
---```
---local succeed, dataOrErr = mysql.sQuery("SELECT * FROM table_name;")
---```
---
---@param query string
---@return boolean succeed, table|string dataOrErr
---
---@server
function mysql.sQuery(query) end

---Removes query from queue.
---
---@param queryID number
---@returns boolean succeed
---
---@server
function mysql.RemoveQuery(queryID) end