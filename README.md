# DU-Container-Contents
Dual Universe script to display container contents

This script requires basic Lua knowledge to adjust.
The script works with container hubs only.
The script has an indicator to identify the working condition.

How to use

**1.** Copy-past "pb_content.lua" to the 'unit.start' of programming board

**2.** At the end of the script cut/delete next code and paste _stop()_ to the 'unit.stop', _update()_ to the 'unit.tick("update")'
```
-------------------------
-- FILTER UNIT STOP -----
-------------------------
stop()

-------------------------
-- FILTER UPDATE --------
-------------------------
update()
```

**3.** Connect core unit and up to 9 screens to the programming board. It's able to automatically identify them.

**4.** Copy-past "content_screen.lua." to all screens connected to the programming board.

**5.** Adjust your screens.
```
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
local percent_precision = 0 -- 0.01 / 0.1 / 0
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
local indicator_color = "#229954" --export
```

How to read the _screen_data_
```
-- 1:"name" (string), 2:hub_uid (number), 3:container_capacity (number), 4:item_mass (number), 5:ietm_volume (number)
-- optional: 6: low_low_level (number), 7: low_level (number), 8: high_level (number), 9: high_high_level (number)
```

1:"name" (string) - the name how to show on the screen

2:hub_uid (number) - you can see hub id in building mode

3:container_capacity (number) - set capacity, which will be interpreted as 100%. It can be container volume or not.

4:item_mass (number) - the mass of one item.

5:ietm_volume (number) - the volume of one item

6:low_low_level (number) - optional. Individual low-low level for this hub only in %

7:low_level (number) - optional. Individual low level for this hub only in %

8:high_level (number) - optional. Individual high level for this hub only in %

9:high_high_level (number) - optional. Individual high-high level for this hub only in %
