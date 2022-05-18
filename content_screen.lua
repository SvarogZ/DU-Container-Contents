local TableClass = {}
function TableClass:new(backgroundColor,borderWidth,borderColor,borderSpacing,borderPadding,borderRadius)
	
	local privateObj = {
		backgroundColor = backgroundColor or {0,0,0,1},
		borderWidth = borderWidth or 1,
		borderColor = borderColor or {1,1,1,1},
		borderSpacing = borderSpacing or 5,
		borderPadding = borderPadding or 5,
		borderRadius = borderRadius or 0
	}
	
	function privateObj.getFormPattern(pattern,i)
		if pattern and #pattern > 0 and i and i > 0 then
			return pattern[(i-1) % #pattern + 1]
		end
		
		return nil
	end
	
	local publicObj = {}
	
	function publicObj:draw(layer, x, y, width, height, column, row, cellOddRow, cellEvenRow, data, columnPattern, textAlignPattern, rowPattern)
		local x = x + privateObj.borderSpacing
		local y = y + privateObj.borderSpacing
		local width = width - 2 * privateObj.borderSpacing
		local height = height - 2 * privateObj.borderSpacing
		
		setNextFillColor(layer, privateObj.backgroundColor[1], privateObj.backgroundColor[2], privateObj.backgroundColor[3], privateObj.backgroundColor[4])
		setNextStrokeColor(layer, privateObj.borderColor[1], privateObj.borderColor[2], privateObj.borderColor[3], privateObj.borderColor[4])
		setNextStrokeWidth(layer, privateObj.borderWidth)
				
		addBoxRounded(layer, x, y, width, height, privateObj.borderRadius)
		
		x = x + privateObj.borderPadding
		y = y + privateObj.borderPadding
		width = width - 2 * privateObj.borderPadding
		height = height - 2 * privateObj.borderPadding
		
		local cellWidth = width / column
		local cellHeight = height / row
		
		local heightUsed = 0
		for i = 0,row - 1 do
			local cellHeightPercent = privateObj.getFormPattern(rowPattern,i+1)
			local cellHeight = cellHeightPercent and height * cellHeightPercent / 100 or cellHeight
			
			local cell = cellOddRow
			if (i+1) % 2 == 0 then
				cell = cellEvenRow
			end			
			
			local widthUsed = 0
			for j = 0, column - 1 do
				local cellWidthPercent = privateObj.getFormPattern(columnPattern,j+1) 
				local cellWidth = cellWidthPercent and width * cellWidthPercent / 100 or cellWidth
				local textAlign = privateObj.getFormPattern(textAlignPattern,j+1) or 0
				
				local text = data and data[i+1] and data[i+1][j+1] or ""
				cell:draw(layer, x+widthUsed, y+heightUsed, cellWidth, cellHeight, "Cell - "..text, textAlign)
				widthUsed = widthUsed + cellWidth
			end
			heightUsed = heightUsed + cellHeight
		end
	end

	-- don't delete this
	self.__index = self
	return setmetatable(publicObj, self)
end

local CellClass = {}
function CellClass:new(font,fontColor,backgroundColor,borderWidth,borderColor,borderSpacing,borderPadding,borderRadius)
	
	local privateObj = {
		font = font,
		fontColor = fontColor or {1,1,1,1},
		backgroundColor = backgroundColor or {0,0,0,1},
		borderWidth = borderWidth or 1,
		borderColor = borderColor or {1,1,1,1},
		borderSpacing = borderSpacing or 5,
		borderPadding = borderPadding or 5,
		borderRadius = borderRadius or 0
	}
	
	function privateObj.getTextWrapped(font, text, maxWidth)
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
	
	local publicObj = {}
	
	function publicObj:draw(layer, x, y, width, height, text, textAlign)
		local x = x + privateObj.borderSpacing
		local y = y + privateObj.borderSpacing
		local width = width - 2 * privateObj.borderSpacing
		local height = height - 2 * privateObj.borderSpacing
		
		setNextFillColor(layer, privateObj.backgroundColor[1], privateObj.backgroundColor[2], privateObj.backgroundColor[3], privateObj.backgroundColor[4])
		setNextStrokeColor(layer, privateObj.borderColor[1], privateObj.borderColor[2], privateObj.borderColor[3], privateObj.borderColor[4])
		setNextStrokeWidth(layer, privateObj.borderWidth)
				
		addBoxRounded(layer, x, y, width, height, privateObj.borderRadius)
		
		local textLines = privateObj.getTextWrapped(privateObj.font, text, width-privateObj.borderPadding*2)
		local lineVerticalShift = (height)/(1+#textLines)
		
		local textX = x + privateObj.borderPadding + textAlign * (width - privateObj.borderPadding) / 2
		
		for i,textLine in ipairs(textLines) do
			setNextFillColor(layer, privateObj.fontColor[1], privateObj.fontColor[2], privateObj.fontColor[3], privateObj.fontColor[4])
			setNextTextAlign(layer, textAlign, 2)
			addText(layer, privateObj.font, textLine, textX, y+i*lineVerticalShift)
		end
	end

	-- don't delete this
	self.__index = self
	return setmetatable(publicObj, self)
end



local headingData = { {"#","ID","Name","Visit","Pre. visit","Visits"} }
local tableColumnWidthPattern = {5,15,30,20,20,10}
local tableRowHeightPattern = {8,12}
local textAlignColumnPattern = {1,0}


local col_number = 6
local row_number = 10
local font_name = "FiraMono"
local font_size = 10
local font_color = {1,0,0,1}
local table_color = {1,1,1,1}
local table_border_width = 10
local table_border_color = {0.1,0.7,0.5,1}
local table_border_spacing = 10
local table_border_padding = 20
local table_border_radius = 10
local cell_color_odd_row = {0,1,0,1}
local cell_color_even_row = {0.5,1,0.5,1}
local cell_border_width = 2
local cell_border_color = {0.5,0.5,0.5,1}
local cell_border_spacing = 10
local cell_border_padding = 10
local cell_border_radius = 5

local font = loadFont (font_name, font_size)

local tableT = TableClass:new(table_color,table_border_width,table_border_color,table_border_spacing,table_border_padding,table_border_radius)
local cellOddRow = CellClass:new(font,font_color,cell_color_odd_row,cell_border_width,cell_border_color,cell_border_spacing,cell_border_padding,cell_border_radius)
local cellEvenRow = CellClass:new(font,font_color,cell_color_even_row,cell_border_width,cell_border_color,cell_border_spacing,cell_border_padding,cell_border_radius)

local layer = createLayer()
local screenWidth, screenHeight = getResolution()

local data = {	{"1:1","1:2","1:3","1:4","1:5"},
				{"2:1","2:2","2:3","2:4","2:5"},
				{"3:1","3:2","3:3","3:4","3:5"},
				{"4:1","4:2","4:3","4:4","4:5"},
				{"5:1","5:2","5:3","5:4","5:5"}}

tableT:draw(layer, 0, 0, screenWidth, screenHeight, col_number, row_number, cellOddRow, cellEvenRow, data, tableColumnWidthPattern, textAlignColumnPattern, tableRowHeightPattern)
