---@meta

---Converts decimal to Color.
---@param decimal number
---@return Color
---
---@shared
function DecimalToColor(decimal) end

---Converts Color to decimal.
---@param r number|Color
---@param g? number
---@param b? number
---@param a? number
---@return number decimal
---
---@shared
function ColorToDecimal(r, g, b, a) end

---Compares Colors (COLOR:Lerp).
---@param col1 Color
---@param col2 Color
---@param frac number
---@return Color comparedColor
---
---@shared
---@deprecated
function CompareColors(col1, col2, frac) end

---Compares Color to another.
---@param col Color
---@param frac number
---@return Color comparedColor
---
---@shared
---@diagnostic disable-next-line: inject-field
function Color:Compare(col, frac) end

---Converts HEX to Color.
---@param hex string
---@return Color
---
---@shared
function HEXToColor(hex) end

---Converts Color to string hex.
---@return string hex
---
---@shared
---@diagnostic disable-next-line: inject-field
function Color:ToHex() end

---Converts Color to decimal.
---@return number decimal
---
---@shared
---@diagnostic disable-next-line: inject-field
function Color:ToDecimal() end