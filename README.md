# DU-Container-Contents
Dual Universe script to display container contents

This script requires basic Lua knowledge to adjust.
The script works with container hubs only.
The script has an indicator to identify the working condition.

How to use

**1.** Copy-past "container-contents.lua" to the 'unit.start'

**2.** At the end of the script cut/delete next code and paste _stop()_ to the 'unit.stop', _update()_ to the 'unit.tick("update")'
```-------------------------
-- FILTER UNIT STOP -----
-------------------------
stop()

-------------------------
-- FILTER UPDATE --------
-------------------------
update()
```

**3.** Connect construction core and screens to the programming board. It's able to automatically identify them.

**4.** Adjust your screens.

Find next code in the 'unit.start'
```-- up to 9 screens
---[[
local dataToShow = {}
dataToShow[1] = refine_screen_1
dataToShow[2] = refine_screen_2
dataToShow[3] = refine_screen_3
dataToShow[4] = alloy_screen
--dataToShow[5] = metalwork_screen_1
--dataToShow[6] = metalwork_screen_2
--dataToShow[7] = metalwork_screen_3
--dataToShow[8] = metalwork_screen_4
--dataToShow[9] = metalwork_screen_5
--]]
```
Here you can activate up to 9 screens for this programming board.

You can use existing screens or create your own screen using the template below.
Each line codes one item to show. Up to 16 items can be shown with one screen.

```local template = {
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1}
}
```

Example:
```local refine_screen_1 = {
	-- T1
	{"Hematite",478,460800,5.04,1},{"Iron",458,76800,7.85,1,10,40,70,75},
	{"Bauxite",479,460800,1.28,1},{"Aluminium",575,76800,2.7,1,10,40,70,75},
	{"Quartz",481,460800,2.65,1},{"Silicon",577,76800,2.33,1,10,40,70,75},
	{"Coal",480,460800,1.35,1},{"Carbon",576,76800,2.27,1,10,40,70,75},
	-- T2
	{"Limestone",2105,307200,2.711,1},{"Calcium",854,76800,1.55,1,10,40,70,75},
	{"Malachite",2104,307200,4,1},{"Copper",2093,76800,8.96,1,10,40,70,75},
	{"Natron",2106,307200,1.55,1},{"Sodium",1132,76800,0.97,1,10,40,70,75},
	{"Chromite",2103,307200,4.54,1},{"Chromium",2092,76800,7.19,1,10,40,70,75}
}
```

How to read the line:
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


**5.** Adjust Lua parameters
```-------------------------
-- USER DEFINED DATA ----
-------------------------
local font_size = 5 --export
local font_color = "black" --export
local screen_color = "#979A9A" --export
local row_color_1 = "#ECF0F1" --export
local row_color_2 = "#D0D3D4" --export
local low_low_level = 10 --export
local low_low_level_color = "#922B21" --export
local low_level = 40 --export
local low_level_color = "#F1C40F" --export
local normal_level_color = "#229954" --export
local high_level = 100 --export
local high_level_color = "#F1C40F" --export
local high_high_level = 100 --export
local high_high_level_color = "#922B21" --export
local update_time = 1 --export
local indicator_color = "#229954" --export
```
