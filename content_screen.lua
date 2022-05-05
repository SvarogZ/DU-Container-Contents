-------------------------
-- USER DEFINED DATA ----
-------------------------
local screen_data = {
-- Change data below to show on the screen
	-- T1
	{"Hematite",478,576000,5.04,1},{"Iron",458,96000,7.85,1,10,40,70,75},
	{"Bauxite",479,576000,1.28,1},{"Aluminium",575,96000,2.7,1,10,40,70,75},
	{"Quartz",481,576000,2.65,1},{"Silicon",577,96000,2.33,1,10,40,70,75},
	{"Coal",480,576000,1.35,1},{"Carbon",576,96000,2.27,1,10,40,70,75},
	-- T2
	{"Limestone",2105,384000,2.711,1},{"Calcium",854,96000,1.55,1,10,40,70,75},
	{"Malachite",2104,384000,4,1},{"Copper",2093,96000,8.96,1,10,40,70,75},
	{"Natron",2106,384000,1.55,1},{"Sodium",1132,96000,0.97,1,10,40,70,75},
	{"Chromite",2103,384000,4.54,1},{"Chromium",2092,96000,7.19,1,10,40,70,75}
-- Change data above to show on the screen
}

-- Screen settings
local turn_screen = true
local list_by_row = true
local col_number = 2
local row_number = 8
local bezel = 5
local font_name_for_name = "FiraMono"
local font_name_size = 30
local font_name_for_number = "FiraMono"
local font_number_size = 30
local percent_precision = 1 -- 0.01 / 0.1 / 1
local text_horizontal_shift = 5
local text_vertical_shift = 10
local bar_indicator_height = 10

-- Screen color settings
local font_color = "#000"
local screen_color = "#979A9A"
local row_color_1 = "#ECF0F1"
local row_color_2 = "#D0D3D4"

-- Level settings
local low_low_level = 10
local low_level = 40
local high_level = 100
local high_high_level = 100

-- Level color settings
local normal_level_color = "#229954"
local low_low_level_color = "#922B21"
local low_level_color = "#F1C40F"
local high_level_color = "#F1C40F"
local high_high_level_color = "#922B21"

-- Indicator settings
local indicatorSize = 10
local indicator_color = "#229954"

-------------------------
-- LIBRARIES ------------
-------------------------
local json = require "dkjson"

-------------------------
-- VARIABLES ------------
-------------------------
local screenWidth, screenHeight = getResolution()

local tableLayer = createLayer()

if turn_screen then
	local temp = screenWidth
	screenWidth = screenHeight
	screenHeight = temp
	setLayerRotation(tableLayer,math.pi/2)
	setLayerTranslation(tableLayer,screenHeight,0)
end

local cellWidth = (screenWidth - bezel) / col_number
local cellHeight = (screenHeight - bezel) / row_number

local fontForName = loadFont(font_name_for_name, font_name_size)
local fontForNumber = loadFont(font_name_for_number, font_number_size)

-------------------------
-- FUNCTIONS ------------
-------------------------
local function round(value, precision)
	if precision then return round(value / precision) * precision end
	return value >= 0 and math.floor(value+0.5) or math.ceil(value-0.5)
end

function hex2rgb(hex)
	local hex = hex:gsub("#","")
	if hex:len() == 3 then
		return (tonumber("0x"..hex:sub(1,1))*17)/255, (tonumber("0x"..hex:sub(2,2))*17)/255, (tonumber("0x"..hex:sub(3,3))*17)/255
	else
		return tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255
	end
end

function getTextWrapped(font, text, maxWidth)
	local out, line, lineW = {}, {}, 0
	for p in text:gmatch("([^\n]*)\n?") do
		out[#out+1] = {}
		for w in p:gmatch("%S+") do
			line = out[#out]
			local word = #line==0 and w or ' '..w
			local wordW, wordH = getTextBounds(font, word)
			if lineW + wordW < maxWidth then
				line[#line+1] = word
				lineW = lineW + wordW
			else
				out[#out] = table.concat(line)
				out[#out+1] = {w}
				lineW = getTextBounds(font, w)
				line = nil
			end
		end
		out[#out] = table.concat(out[#out])
		lineW = 0
	end
	return out
end

local function format_number(n)
	if not n then return end
	
	if n < 1000 then
		return math.floor(n + 0.5)
	elseif n < 1000000 then
		return math.floor(n/10 + 0.5)/100 .."k"
	else
		return math.floor(n/10000 + 0.5)/100 .."M"
	end
end

local function getColor(number, lll, ll, hl, hhl)
	if not number then return end

	local low_low_level = lll or low_low_level
	local low_level = ll or low_level
	local high_level = hl or high_level
	local high_high_level = hhl or high_high_level
	
	local r,g,b
	
	if number < low_low_level then
		r,g,b = hex2rgb(low_low_level_color)
	elseif number < low_level then
		r,g,b = hex2rgb(low_level_color)
	elseif number > high_high_level then
		r,g,b = hex2rgb(high_high_level_color)
	elseif number > high_level then
		r,g,b = hex2rgb(high_level_color)
	else
		r,g,b = hex2rgb(normal_level_color)
	end
	
	return {r,g,b}
end

local function sendToPB(screenData)
	local dataOutput = {}
	
	for i,item in ipairs(screenData) do
		if item[2] ~= 0 then
			dataOutput[i] = item[2]
		end
	end
	setOutput(json.encode(dataOutput))
end

local function processData(screenData, dataFromPB)
	local dataToShow = {}
	
	for i,item in ipairs(screenData) do
		local cell = {}
		cell.name = item[1]
		 
		if item[2] ~= 0 and dataFromPB then
			local mass = dataFromPB[tostring(item[2])]
			if mass then
				local number = mass / item[4]
				cell.number = format_number(number)
				local percent = round(number * item[5] / item[3] * 100, percent_precision)
				cell.percent = percent
				if percent > 100 then percent = 100 end
				cell.barColor = getColor(percent, item[6], item[7], item[8], item[9])
				if percent < 5 then percent = 5 end
				cell.barPercent = percent
			end
		end
		dataToShow[i] = cell
	end
	
	return dataToShow
end

local function drawCell(row ,col, data)
	local cellX = col * cellWidth + bezel
	local cellY = row * cellHeight + bezel
	
	if row % 2 > 0 then
		local r,g,b = hex2rgb(row_color_2)
		setNextFillColor (tableLayer, r, g, b, 1)
	end
	
	addBox(tableLayer, cellX, cellY, cellWidth-bezel, cellHeight-bezel)
	
	local name = data and data.name or nil
	
	if name then
		local rightShift = 0
		local number = data.number or nil
		
		if number then
			local percent = data.percent and data.percent .. "%" or "--%"
			local barPercent = data.barPercent or 0
			local barColor = data.barColor or {0,0,0}
			
			setNextFillColor (tableLayer, barColor[1], barColor[2], barColor[3], 1)
			addBox(tableLayer, cellX, cellY+cellHeight-bezel-bar_indicator_height, (cellWidth-bezel)*barPercent/100, bar_indicator_height)
		
			local numberW, _ = getTextBounds(fontForNumber, number)
			local percentW, _ = getTextBounds(fontForNumber, percent)
		
			rightShift = numberW
			if percentW > rightShift then rightShift = percentW end
			
			setNextTextAlign (tableLayer, 2, 1)
			addText(tableLayer, fontForNumber, number, cellX+cellWidth-text_horizontal_shift, cellY+text_vertical_shift)
			setNextTextAlign (tableLayer, 2, 4)
			addText(tableLayer, fontForNumber, percent, cellX+cellWidth-text_horizontal_shift, cellY+cellHeight-text_vertical_shift-bar_indicator_height)
		end
		
		local nameArray = getTextWrapped(fontForName,name,cellWidth-3*text_horizontal_shift-rightShift) or {"nil"}
		local lineVerticalShift = (cellHeight-bar_indicator_height)/(1+#nameArray)
		
		for i,nameLine in ipairs(nameArray) do
			setNextTextAlign (tableLayer, 0, 3)
			addText(tableLayer, fontForName, nameLine, cellX+text_horizontal_shift, cellY+i*lineVerticalShift)
		end
	end
end

-------------------------
-- CODE -----------------
-------------------------
sendToPB(screen_data)

local dataFromPB = json.decode(getInput())
local dataToShow = processData(screen_data, dataFromPB)
local blinkIndicator = dataFromPB and dataFromPB.blinkIndicator or false

local r,g,b = hex2rgb(screen_color)
setBackgroundColor (r, g, b)
r,g,b = hex2rgb(row_color_1)
setDefaultFillColor (tableLayer, 0, r, g, b, 1)--box
r,g,b = hex2rgb(font_color)
setDefaultFillColor (tableLayer, 7, r, g, b, 1)--text

for i = 0,row_number - 1 do
	for j = 0, col_number - 1 do
		if list_by_row then
			drawCell(i ,j, dataToShow[i * col_number + j + 1])
		else
			drawCell(i ,j, dataToShow[j * row_number + i + 1])
		end
	end
end

if blinkIndicator then
	local r,g,b = hex2rgb(indicator_color)
	setNextFillColor (tableLayer, r, g, b, 1)
	addBox(tableLayer, 0, 0, indicatorSize, indicatorSize)
end
