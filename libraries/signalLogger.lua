---@meta

---Library to log any information. Saves into MariaDB and/or prints info into console.
---
---@shared
signalLogger = {}

---Log Type Enum.
signalLogger.INFO	= 1
signalLogger.DEBUG	= 2
signalLogger.WARN	= 3
signalLogger.ERROR	= 4

---Contains all strings for loggers.
---@enum
signalLogger.Types = {
	[signalLogger.INFO]		= "INFO",
	[signalLogger.DEBUG]	= "DEBUG",
	[signalLogger.WARN]		= "WARN",
	[signalLogger.ERROR]	= "ERROR"
}

---Private table of all existing loggers.
__loggers = {}

---Registers/overrides logger.
---
---```
---local myLogger = signalLogger.Register("myLogger", { Color(255, 0, 0), "my", Color(255, 255, 255), "Logger" })
---```
---
---@param id string
---@param printName table
---@return logger
---
---@shared
function signalLogger.Register(id, printName) end

---Returns existing logger.
---
---@param id string
---@return logger
---
---@shared
function signalLogger.Get(id) end



---Logger to log information.
---
---@class logger
---
---@shared
local logger = {}

---Sets print name. See `signalLogger.Register`
---
---@param name table
---@returns boolean
---
---@shared
function logger:SetPrintName(name) end

---Enables saving to MariaDB.
---
---@param bSave boolean
---@returns boolean
---
---@server
function logger:EnableSaving(bSave) end

---Returns true if logger saves information into MariaDB.
---@returns boolean
---
---@server
function logger:GetSaving() end
function logger:IsSaving() end

---Enables printing into console.
---
---@shared
function logger:EnablePrinting(bPrint) end

---Returns true if printing is enabled.
---
---@returns boolean
---
---@shared
function logger:GetPrinting() end
function logger:IsPrinting() end

---Enables debugging. Debug*() disabled by default.
---
---@shared
function logger:EnableDebugging(bEnabled) end

---Returns true if debugging is enabled.
---
---@returns boolean
---
---@shared
function logger:GetDebugging() end
function logger:IsDebugging() end

---Returns logger's identifier.
---
---@returns string
---
---@shared
function logger:GetID() end

---Main logging function.
---
---@param type number
---@param ... any
---
---@internal
---@shared
function logger:Log(type, ...) end

---Main logging function, but uses `string.format`.
---
---```
---logger:Logf(signalLogger.INFO, "Hello, %s%s", "World", "!")
---```
---
---@param type number
---@param format string
---@param ... any
---
---@internal
---@shared
function logger:Logf(type, format, ...) end

---Logs INFO message.
---
---```
---logger:Info("Hello, ", "World!")
---```
---
---@param ... any
---
---@shared
function logger:Info(...) end

---Logs INFO format message.
---
---```
---logger:Infof("%s, %s!", "Hello", "World")
---```
---
---@param ... any
---
---@shared
function logger:Infof(...) end

---Logs DEBUG message.
---
---```
---logger:Debug("Hello, ", "World!")
---```
---
---@param ... any
---
---@shared
function logger:Debug(...) end

---Logs DEBUG format message.
---
---```
---logger:Debugf("%s, %s!", "Hello", "World")
---```
---
---@param ... any
---
---@shared
function logger:Debugf(...) end

---Logs WARN message.
---
---```
---logger:Warn("Hello, ", "World!")
---```
---
---@param ... any
---
---@shared
function logger:Warn(...) end

---Logs WARN format message.
---
---```
---logger:Warnf("%s, %s!", "Hello", "World")
---```
---
---@param ... any
---
---@shared
function logger:Warnf(...) end

---Logs ERROR message.
---
---```
---logger:Error("Hello, ", "World!")
---```
---
---@param ... any
---
---@shared
function logger:Error(...) end

---Logs ERROR format message.
---
---```
---logger:Errorf("%s, %s!", "Hello", "World")
---```
---
---@param ... any
---
---@shared
function logger:Errorf(...) end