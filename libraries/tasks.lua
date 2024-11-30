---@meta

---Tasks library.
---
---@shared
tasks = {}

---Create tasks whick you need to call manually.
---```
---local T = tasks.New(function()
---	print("a")
---	self:Yield()
---	print("b")
---end)
---
---T:Tick()
---```
---
---@param func function
---@param ... any
---
---@return task task
---@shared
function tasks.New(func, ...) end
function tasks.Once(func, ...) end

---Creates task which calls automaticly.
---```
---tasks.Create(function(self, ply)
---	for _ = 1, math.random(3, 6) do
---		if not IsValid(ply) then break end
---
---		local snd = string.format("misc/happy_birthday_tf_%02d.wav", math.random(1, 29))
---		ply:EmitSound(snd, 100, 100, 0.5)
---
---		self:WaitRandom(2, 3)
---	end
---end, ply)
---```
---
---@param func any
---@param ... unknown
---
---@return task task
---@shared
function tasks.Create(func, ...) end

---Dumps all tasks into console.
---You can use `unt_dump_tasks_cl` or `unt_dump_tasks_sv` console commands.
---
---@shared
function tasks.Dump() end

---Ticks all `tasks.Create` tasks.
---
---@shared
function tasks.Tick() end

---Removes task created by `tasks.Create`.
---@param id number
---
---@shared
function tasks.Remove(id) end

---Returns task created by `tasks.Create`.
---@param id number
---
---@return task task
---@shared
function tasks.Get(id) end

---Returns all tasks created by `tasks.Create`.
---
---@return table tasks
---@shared
function tasks.GetAll() end


---Task.
---@class task
---
---@shared
local TASK = {}

---Returns task's coroutine.
---
---@return thread coroutine
---@shared
function TASK:GetCO() end
function TASK:CO() end

---Returns task's ID.
---
---@return number id
---@shared
function TASK:GetID() end
function TASK:ID() end

---Returns task's args.
---
---@return table arts
---@shared
function TASK:GetArgs() end
function TASK:Args() end

---Returns task's coroutine status.
---
---@return string Status
---@shared
function TASK:GetStatus() end
function TASK:Status() end

---Returns tick when the task was created.
---
---@return number tick
---@shared
function TASK:GetCreationTick() end
function TASK:CreationTick() end

---Returns `debug.getinfo()` table of task's function.
---
---@return table info
---@shared
function TASK:GetInfo() end
function TASK:Info() end

---Returns if task's coroutine status is "running".
---
---@return boolean running
---@shared
function TASK:IsRunning() end
function TASK:Running() end

---Returns if task's coroutine status is "suspended".
---
---@return boolean suspended
---@shared
function TASK:IsSuspended() end
function TASK:Suspended() end

---Returns if task's coroutine status is "dead".
---
---@return boolean dead
---@shared
function TASK:IsDead() end
function TASK:Dead() end

---Debug function. Print args into console with additional information.
---
---@param ... any
---@shared
function TASK:Debug(...) end

---Removes task from auto-tick.
---Only have effect with `tasks.Create`.
---Arguments will be passed to `TASK:OnEnd()`.
---
---@param ... any
---@shared
function TASK:Remove(...) end

---Ticks task.
---Arguments will be passed to `TASK:Yield()`.
---
---@param ... any
function TASK:Tick(...) end

---Returns number of ticks the tasks was called.
---
---@return number ticks
---@shared
function TASK:GetTicks() end
function TASK:Ticks() end

---Yields task's coroutine.
---Arguments will be passed to `TASK:OnYield()`
---
---@param ... any
---@shared
function TASK:Yield(...) end

---Suspends task until N tick.
---```
---TASK:WaitUntil(CurTime() + 5)
---```
---
---@param n any
---@param ... unknown
---@shared
function TASK:WaitUntil(n, ...) end

---Waits N seconds.
---Arguments are passed to `TASK:Yield()`.
---
---@param n number
---@param ... any
---@shared
function TASK:Wait(n, ...) end

---Suspends task for `math.Rand(min, max)` amount of seconds.
---Arguments are passed to `TASK:Yield()`.
---
---@param min number
---@param max number
---@param ... any
---@shared
function TASK:WaitRandom(min, max, ...) end

---Suspends task for N amount of ticks.
---Arguments are passed to `TASK:Yield()`.
---
---@param n number
---@param ... any
---@shared
function TASK:WaitTicks(n, ...) end

---Suspends task for `math.Rand(min, max)` amount of ticks.
---Arguments are passed to `TASK:Yield()`.
---
---@param min number
---@param max number
---@param ... any
---@shared
function TASK:WaitTicksRandom(min, max, ...) end

---Suspends task until the given task ends.
---Arguments are passed to `TASK:Yield()`.
---
---@param task task
---@param ... any
---@shared
function TASK:WaitForTask(task, ...) end

---Pauses task with auto-tick.
---Only works with `tasks.Create`.
---NOTE: `TASK:Tick()` WILL tick tasks.
---
---@shared
function TASK:Pause() end

---Unpauses task with auto-tick.
---Only works with `tasks.Create`.
---
---@shared
function TASK:UnPause() end
function TASK:Unpause() end
function TASK:Resume() end

---Returns if task is paused.
---Only works with `tasks.Create`.
---
---@return boolean paused
---@shared
function TASK:IsPaused() end
function TASK:Paused() end

---Called when task is ticked using `TASK:Tick()`.
---Arguments are passed from `TASK:Tick()`.
---
---@param ... any
---@shared
function TASK:OnTick(...) end

---Called on task yield.
---Arguments are passed from `TASK:Yield()`.
---
---@param ... any
---@shared
function TASK:OnYield(...) end

---Called on task creation.
---Arguments are passed from `tasks.New`, `tasks.Once` or `tasks.Create`
---
---@param ... any
---@shared
function TASK:OnStart(...) end

---Called on task end.
---Arguments are passed from `TASK:Remove()`.
---
---@param ... any
---@shared
function TASK:OnEnd(...) end