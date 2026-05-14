--[[

	This file is part of 'Masque: Squat', an add-on for World of Warcraft. For license information,
	please see the included License.txt file or visit https://github.com/dlecina/Masque_Squat.

	* File....: Locales.lua
	* Authors.: dlecina, csdw

]]

-- GLOBALS: GetLocale, setmetatable


local _, Core = ...

-- Locales
local L = {}
Core.Locale = setmetatable(L, {
    __index = function(self, key)
        self[key] = key          -- Cache the key so future lookups are direct
        return key
    end
})

local locale = GetLocale()

-- English (enUS/enGB) falls back to the metatable — nothing needed
if locale == "enUS" or locale == "enGB" then
    return
end

-- Translations
if locale == "frFR" then
    L["A larger version of Apathy inspired by Caith UI."] = "Une version plus grande de Apathy inspirée par Caith UI."

elseif locale == "itIT" then
    L["A larger version of Apathy inspired by Caith UI."] = "Una versione più grande di Apathy inspirata dalla UI di Caith."

-- Add more languages here as needed
-- elseif locale == "deDE" then
-- elseif locale == "esES" or locale == "esMX" then
-- elseif locale == "ruRU" then
end
