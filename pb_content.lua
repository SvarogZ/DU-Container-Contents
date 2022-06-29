local update_time = 1 --export
local hubMass = 55.8
local screens = {}
local core = nil
local blinkIndicator = false

local function initiateSlots()
	for _, slot in pairs(unit) do
		if type(slot) == "table" and type(slot.export) == "table" and slot.getClass then
			local elementClass = slot.getClass():lower()
			if elementClass:find("coreunit") then
				core = slot
			elseif elementClass == "screenunit" then
				table.insert(screens,slot)
			end
		end
	end
	
	if not core then
		error("Core is not connected!")
	end
    
	if #screens < 1 then
		error("No screen connected!")
	end
	
	table.sort(screens, function (a, b) return (a.getLocalId() < b.getLocalId()) end)
end

local function getDataFromScreens()
	local dataFormScreens = {}
	
	for i,screen in ipairs(screens) do
		dataFormScreens[i] = json.decode(screen.getScriptOutput())
	end
	
	return dataFormScreens
end

initiateSlots()

local dataFormScreens = getDataFromScreens()

function update()
	if blinkIndicator then blinkIndicator = false else blinkIndicator = true end
	
	for i,screen in ipairs(screens) do
		if dataFormScreens[i] then
			local dataToSend = {}
			dataToSend.blinkIndicator = blinkIndicator

			for _,id in pairs(dataFormScreens[i]) do
				dataToSend[id] = core.getElementMassById(id) - hubMass
			end

			screen.setScriptInput(json.encode(dataToSend))
		end 
	end
end

function stop()
	for i,screen in ipairs(screens) do
		screen.setScriptInput("")
	end
end

-------------------------
-- UPDATE TIMER ------
-------------------------
unit.setTimer("update", update_time)


-------------------------
-- FILTER UPDATE --------
-------------------------
update()

-------------------------
-- FILTER STOP ----------
-------------------------
stop()
