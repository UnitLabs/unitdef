---@meta

SERVERID = 0
LOCALPLAYER = Player(1)
PLAYER = setmetatable({}, {})

---Prints message to all clients.
---@param ... any
---
---@server
function ChatPrint(...) end

---Returns true if module in lua/bin exists. Checks server os automaticly.
---@param module string
---@deprecated
---@see util.IsBinaryModuleInstalled
---
---@shared
function IsValidModule(module) end

---@enum HOOK_PRIORITY
---@type table
PRE_HOOK			= { -2 }
PRE_HOOK_RETURN		= { -1 }
NORMAL_HOOK			= { 0 }
POST_HOOK_RETURN	= { 1 }
POST_HOOK			= { 2 }

hook = hook or {}

---Add a hook to be called upon the given event occurring.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/hook.Add)
---@param eventName string The event to hook on to. This can be any GM_Hooks hook, gameevent after using gameevent.Listen, or custom hook run with hook.Call or hook.Run.
---@param identifier any The unique identifier, usually a string. This can be used elsewhere in the code to replace or remove the hook. The identifier **should** be unique so that you do not accidentally override some other mods hook, unless that's what you are trying to do.
---
---The identifier can be either a string, or a table/object with an IsValid function defined such as an Entity or Panel. numbers and booleans, for example, are not allowed.
---
---If the identifier is a table/object, it will be inserted in front of the other arguments in the callback and the hook will be called as long as it's valid. However, if IsValid( identifier ) returns false when **any** eventName hook is called, the hook will be removed.
---@param func function The function to be called, arguments given to it depend on the identifier used.
---Returning any value besides nil from the hook's function will stop other hooks of the same event down the loop from being executed. Only return a value when absolutely necessary and when you know what you are doing.
---
---@param priority? HOOK_PRIORITY
---
---@shared
function hook.Add(eventName, identifier, func, priority) end