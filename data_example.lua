local refine_screen_1 = {
	-- T1
	{"Hematite",478,576000,5.04,1},{"Iron",458,96000,7.85,1,10,40,90,95},
	{"Bauxite",479,576000,1.28,1},{"Aluminium",575,96000,2.7,1,10,40,90,95},
	{"Quartz",481,576000,2.65,1},{"Silicon",577,96000,2.33,1,10,40,90,95},
	{"Coal",480,576000,1.35,1},{"Carbon",576,96000,2.27,1,10,40,90,95},
	-- T2
	{"Limestone",2105,384000,2.711,1},{"Calcium",854,96000,1.55,1,10,40,90,95},
	{"Malachite",2104,384000,4,1},{"Copper",2093,96000,8.96,1,10,40,90,95},
	{"Natron",2106,384000,1.55,1},{"Sodium",1132,96000,0.97,1,10,40,90,95},
	{"Chromite",2103,384000,4.54,1},{"Chromium",2092,96000,7.19,1,10,40,90,95}
}

local refine_screen_2 = {
	-- T3
	{"Pyrite",2110,192000,5.01,1,10,20},{"Sulfur",1241,96000,1.82,1,10,20,90,95},
	{"Petalite",2108,192000,2.41,1,10,20},{"Lithium",2086,96000,0.53,1,10,20,90,95},
	{"Acanthite",2107,192000,7.2,1,10,20},{"Silver",2085,96000,10.49,1,10,20,90,95},
	{"Garnierite",2109,192000,2.6,1,10,20},{"Nickel",2096,96000,8.91,1,10,20,90,95},
	-- T4
	{"Gold Nuggets",2113,192000,19.3,1,10,20},{"Gold",2116,96000,19.3,1,10,20,90,95},
	{"Cryolite",2112,192000,2.95,1,10,20},{"Fluorine",2117,96000,1.7,1,10,20,90,95},
	{"Cobaltite",2111,192000,6.33,1,10,20},{"Cobalt",2115,96000,8.9,1,10,20,90,95},
	{"Kolbeckite",2114,192000,2.37,1,10,20},{"Scandium",2118,96000,2.98,1,10,20,90,95}
}

local refine_screen_3 = {
	-- T5
	{"Rhodonite",5203,192000,3.76,1,3,5},{"Manganese",5207,96000,7.21,1,3,5,80,95},
	{"Columbite",5204,192000,5.38,1,3,5},{"Niobium",5208,96000,8.57,1,3,5,80,95},
	{"Vanadinite",5205,192000,6.95,1,3,5},{"Vanadium",5209,96000,6,1,3,5,80,95},
	{"Ilmenite",5206,192000,4.55,1,3,5},{"Titanium",5210,96000,4.51,1,3,5,80,95},
	-- SIDES
	{"Catalysts",0,1,0,1},{"Gases",0,1,0,1},
	{"Catalyst 3",1226,12000,649.39,1,3,10,60,80},{"Hydrogen",555,384000,0.07,1,1,2,10,50},
	{"Catalyst 4",1227,12000,606.65,1,3,10,60,80},{"Oxygen",554,384000,1,1,1,2,10,50},
	{"Catalyst 5",1823,12000,657.68,1,3,10,60,80}
}

local alloy_screen = {
	{"Al-Fe Alloy",746,10000,7.5,1},{"Inconel",1587,6000,8.5,1},
	{"Silumin",459,10000,3,1},{"Red Gold",2484,12000,14.13,1},
	{"Steel",646,80000,8.05,1},{"Sc-Al Alloy",2672,12000,2.85,1},
	{"Culcium Reainforsed Copper",827,10000,8.1,1},{"Maraging Steel",2528,20000,8.23,1},
	{"Duralumin",2400,10000,2.8,1},{"Mangalloy",5292,6000,7.83,1},
	{"Stanless Steel",460,10000,7.75,1},{"Ti-Nb Supercond",5293,10000,10.1,1},
	{"Cu-Ag Alloy",1804,6000,9.2,1},{"reserve",0,1,0,1},
	{"Al-Li Alloy",1927,6000,2.5,1},{"reserve",0,1,0,1}
}

local electronics_screen_1 = {
	{"Basic Connector",752,4800,3.75,0.8},{"Basic Component",751,3000,2.25,0.5},
	{"Uncommon Connector",1543,3200,3.9,0.8},{"Uncommon Component",837,3000,2.34,0.5},
	{"Advanced Connector",2016,1600,4.18,0.8},{"Advanced Component",2464,3000,2.51,0.5},
	{"Basic Electronics",883,40000,5.22,4},{"Basic Power System",790,96000,60,9.2},
	{"Uncommon Electronics",882,24000,5.34,4},{"Uncommon Power System",1553,96000,62.4,9.2},
	{"Advanced Electronics",1253,8000,5.45,4},{"Advanced Power System",1554,20000,64.9,9.2},
	{"Rare Electronics",3213,2400,5.63,4},{"Rare Power System",2473,60000,78.31,9.2},
	{"Exotic Electronics",0,76800,0,4},{"Exotic Power System",5361,10000,82.87,9.2}
}

local electronics_screen_2 = {
	{"Adv Anti-Grav Core",4400,12000,117.05,20},{"Basic Anti-Matt Capsule",0,1,24,4.6},
	{"Rare Anti-Grav Core",2721,96000,123.22,22.5},{"Uncommon Anti-Matter Capsule",0,1,24.32,4.6},
	{"Exot Anti-Grav Core",0,1,133.06,25},{"Adv Anti-Matter Capsule",0,1,24.88,4.6},
	{"Adv Anti-Matter Core",2214,4000,107.08,21.5},{"Basic Ore Scanner L",5028,10000,320.29,471.5},
	{"Adv Quant Align Unit",1373,20000,35.78,25},{"Uncommon Ore Scanner L",5039,10000,333.7,473.9},
	{"Exot Quant Align Unit",5349,18000,43.24,30},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1}
}

local electronics_screen_3 = {
	{"Basic Core System XS",0,1,4.43,4.4},{"Basic Power Transf M",1497,4000,1020,196.4},
	{"Basic Core System S",0,1,23.57,23.6},{"Advanced Power Transf M",0,1,0,1},
	{"Uncommon Core System S",2385,600,28.08,27.2},{"Uncommon Power Transf S",0,1,0,1},
	{"Uncommon Core System M",0,1,28.08,135.75},{"Uncommon Power Transf M",0,1,0,1},
	{"Uncommon Core System L",3311,7000,737.1,728},{"Rare Power Transf M",0,1,0,1},
	{"Advanced Core System M",2854,1300,139.61,132.8},{"Rare Power Transf L",4473,20000,5570,1066.69},
	{"Rare Core System L",3249,7300,783.65,728},{"Rare Power Transf XL",2515,20000,30540,5857.09},
	{"Exotic Core System S",0,1,28.62,26.8},{"reserve",0,1,0,1}
}

local electronics_screen_4 = {
	{"Basic Processor",1499,30000,14.84,5},{"Basic Antenna XL",5111,28000,48430,7020.8},
	{"Uncommon Processor",0,192000,0,1},{"Uncommon Antenna XL",0,192000,0,1},
	{"Advanced Processor",4839,15000,16.25,5},{"Advanced Antenna XL",4848,28000,53090,7028.96},
	{"reserve",0,192000,0,1},{"Exotic Antenna XL",5377,28000,61580,7028.16},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1},
	{"reserve",0,192000,0,1},{"reserve",0,192000,0,1}
}

local metalwork_screen_1 = {
	{"Basic Screw",656,12000,8.05,1},{"Basic Pipe",664,10000,2.4,1},
	{"Uncommon Screw",1981,12000,7.9,1},{"Uncommon Pipe",3819,20000,2.32,1},
	{"Advanced Screw",3649,4000,8.14,1},{"Advanced Pipe",5805,6000,2.19,1},
	{"Basic Hydraulics",669,100000,28.95,10},{"Basic Magnets",1637,50000,63.3,7.36},
	{"Uncommon Hydraulics",3855,60000,28.35,10},{"Uncommon Magnets",1638,30000,62.1,7.36},
	{"Advanced Hydraulics",3863,40000,29.02,10},{"Advanced Magnets",1639,15000,63.89,7.36},
	{"Rare Hydraulics",0,192000,0,10},{"Rare Magnets",2556,7000,64.4,7.36},
	{"Exotic Hydraulics",0,192000,0,10},{"Exotic Magnets",0,192000,0,7.36}
}

local metalwork_screen_2 = {
	{"Basic Singularity Container",2629,4000,45.36,4},{"Basic Burner",1457,20000,50.2,10},
	{"Uncommon Singularity Container",2631,2400,44.88,4},{"Uncommon Burner",3935,40000,49.4,10},
	{"Advanced Singularity Container",2635,1600,46.22,4},{"Advanced Burner",5816,6000,48.5,10},
	{"Rare Singularity Container",2646,1600,46.58,4},{"Rare Burner",5817,10000,48.05,10},
	{"Exotic Singularity Container",0,1,0,1},{"Exotic Burner",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1}
}

local metalwork_screen_3 = {
	{"Basic Combustion Chamber L",0,1,9340,1374.4},{"Basic Ionic Chamber L",0,1,1620,1090.4},
	{"Uncommon Combustion Chamber L",3944,14000,9210,1383.2},{"Uncommon Ionic Chamber L",3885,11000,11010,1096.93},
	{"Advanced Combustion Chamber L",0,1,0,1},{"Advanced Ionic Chamber L",2028,11000,11370,1096.93},
	{"Rare Combustion Chamber L",5877,13800,9230,1383.2},{"Rare Ionic Chamber L",5876,11000,11350,1096.93},
	{"Exotic Combustion Chamber L",0,1,0,1},{"Exotic Ionic Chamber L",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"Uncommon Electric Engine XL",4591,24000,50800,6107.49}
}

local metalwork_screen_31 = {
	{"Basic Combustion Chamber XS",0,1,60.65,9.6},{"Uncommon Combustion Chamb XS",0,1,112.07,18.4},
	{"Basic Combustion Chamber S",0,1,319.35,49.6},{"Uncommon Combustion Chamber S",0,1,366.33,58.4},
	{"Basic Combustion Chamber M",0,1,1710,259.2},{"Uncommon Combustion Chamber M",0,1,1730,268},
	{"Basic Combustion Chamber L",0,1,9340,1374.4},{"Uncommon Combustion Chamber L",3944,14000,9210,1383.2},
	{"Advanced Combustion Chamber XS",0,1,163.51,27.2},{"reserve",0,1,0,1},
	{"Advanced Combustion Chamber S",0,1,369.5,58.4},{"reserve",0,1,0,1},
	{"Advanced Combustion Chamber M",0,1,1760,268},{"reserve",0,1,0,1},
	{"reserve",0,1,0,1},{"reserve",0,1,0,1}
}

local metalwork_screen_4 = {
	{"Basic Ionic Chamber XS",0,1,75.1,7.33},{"Uncommon Ionic Chamb XS",0,1,140.8,13.86},
	{"Basic Ionic Chamber S",0,1,391.6,38.24},{"Uncommon Ionic Chamber S",0,1,452.35,44.77},
	{"Basic Ionic Chamber M",0,1,2070,202.4},{"Uncommon Ionic Chamber M",0,1,2100,208.93},
	{"Basic Ionic Chamber L",0,1,1620,1090.4},{"Uncommon Ionic Chamber L",3885,11000,11010,1096.93},
	{"Basic Ionic Chamber XL",0,1,61230,6000.8},{"Uncommon Ionic Chamber XL",0,1,60120,6007.33},
	{"Advanced Ionic Chamber M",0,1,8640,208.93},{"Basic Electric Engine M",0,1,377.75,39.04},
	{"Advanced Ionic Chamber L",2028,11000,11370,1096.93},{"Basic Electric Engine S",0,1,1930,206.4},
	{"reserve",0,1,0,1},{"Uncommon Electric Engine XL",4591,12000,50800,6107.49}
}

local metalwork_screen_5 = {
	{"Basic Mobile Panel XS",0,1,20,9.6},{"Uncommon Mobile Panel XS",0,1,0,1},
	{"Basic Mobile Panel S",0,1,103,49.6},{"Uncommon Mobile Panel S",0,1,0,1},
	{"Basic Mobile Panel M",1030,5000,536,259.2},{"Uncommon Mobile Panel M",0,1,0,1},
	{"Basic Mobile Panel L",798,8000,2830,1374.4},{"Uncommon Mobile Panel L",0,1,0,1},
	{"Basic Mobile Panel XL",0,1,15160,7420.8},{"Uncommon Mobile Panel XL",4213,15000,14780,7429.6},
	{"Advanced Mobile Panel XS",0,1,0,1},{"Advanced Mobile Panel L",3228,14000,2750,1383.2},
	{"Advanced Mobile Panel s",0,1,0,1},{"Advanced Mobile Panel XL",4212,15000,14530,7429.6},
	{"Advanced Mobile Panel M",0,1,0,1},{"reserve",0,1,0,1}
}

local metalwork_screen_6 = {
	{"Basic Standard Frame XS",0,1,0,1},{"Advanced Standard Frame XS",1924,40,3.85,2},
	{"Basic Standard Frame S",0,1,0,1},{"Advanced Standard Frame S",0,1,0,1},
	{"Basic Standard Frame M",0,1,0,1},{"Advanced Standard Frame M",2847,300,138.25,74},
	{"Basic Standard Frame L",898,2000,1080,515},{"Advanced Standard Frame L",0,1,0,1},
	{"Uncommon Standard Frame XS",0,1,0,1},{"Advanced Standard Frame XL",0,1,0,1},
	{"Uncommon Standard Frame S",2395,220,22.12,11},{"Rare Standard Frame S",0,1,0,1},
	{"Uncommon Standard Frame M",0,1,0,1},{"Rare Standard Frame M",0,1,0,1},
	{"Uncommon Standard Frame L",3258,5000,1030,515},{"Rare Standard Frame L",3227,2000,1050,515}
}

local metalwork_screen_7 = {
	{"Basic Reinforced Frame XS",0,1,0,1},{"Uncommon Reinforced Frame XS",0,1,0,1},
	{"Basic Reinforced Frame S",0,1,0,1},{"Uncommon Reinforced Frame S",0,1,0,1},
	{"Basic Reinforced Frame M",964,300,476.56,74},{"Uncommon Reinforced Frame M",0,1,0,1},
	{"Basic Reinforced Frame L",713,5000,3320,515},{"Uncommon Reinforced Frame L",3977,10000,3230,515},
	{"Basic Reinforced Frame XL",5119,10000,23200,3602},{"Uncommon Reinforced Frame XL",4196,14000,22620,3602},
	{"Advanced Reinforced Frame XS",0,1,0,1},{"Advanced Reinforced Frame L",2235,5000,3440,515},
	{"Advanced Reinforced Frame S",0,1,0,1},{"Advanced Reinforced Frame XL",4188,14000,24060,3602},
	{"Advanced Reinforced Frame M",0,1,0,1},{"reserve",0,1,0,1}
}

local metalwork_screen_8 = {
	{"Rare Reinforced Frame XS",0,1,0,1},{"Exotic Reinforced Frame XS",0,1,0,1},
	{"Rare Reinforced Frame S",0,1,0,1},{"Exotic Reinforced Frame S",0,1,0,1},
	{"Rare Reinforced Frame M",0,1,0,1},{"Exotic Reinforced Frame M",0,1,0,1},
	{"Rare Reinforced Frame L",4492,2000,3370,515},{"Exotic Reinforced Frame L",0,1,0,1},
	{"Rare Reinforced Frame XL",2730,14000,23540,3602},{"Exotic Reinforced Frame XL",0,1,0,1},
	{"Exotic Standard Frame XS",0,1,0,1},{"Exotic Standard Frame L",0,1,0,1},
	{"Exotic Standard Frame S",0,1,0,1},{"Exotic Standard Frame M",0,1,0,1},
	{"reserve ",0,1,0,1},{"reserve ",0,1,0,1}
}

local chemical_screen_1 = {
	-- T1
	{"Polycarbonate Plactic",607,12000,1.4,1},{"Glass",1119,2000,2.5,1},
	{"Polycalcite Plactic",850,6000,1.5,1},{"Advanced Glass",1122,2000,2.6,1},
	{"Polysulfite Plactic",1245,4000,1.6,1},{"Ag-Li Reinforsed Glass",2076,2000,2.8,1},
	{"Fluoropolymer ",3131,4000,1.65,1},{"Basic Anti-Matter Capsule",2178,2000,24,4.6},
	{"Vanamer",5310,4000,1.57,1},{"Uncommon Anti-Matter Capsule",2179,2000,24.32,4.6},
	{"Basic LED",1138,2500,1.25,1},{"Advanced Anti-Matter Capsule",2180,2000,24.88,4.6},
	{"Uncommon LED",1139,500,1.27,1},{"reserve",0,76800,0,1},
	{"Advanced LED",1291,500,1.32,1},{"reserve",0,76800,0,1}
}

local input_3d_screen_1 = {
	-- Glass --------------------------------- Electronic
	{"Basic LED",0,1,1.25,1},{"Basic Electronics",0,1,5.22,4},
	{"Uncommon LED",0,1,1.27,1},{"Uncommon Electronics",0,1,5.34,4},
	{"Advanced LED",0,1,1.32,1},{"Advanced Electronics",0,1,5.45,4},
	-- Chemical--------------------------------- Metalwork
	{"Polycarbonate Plastic",0,1,1.4,1},{"Basic Screw",0,1,8.05,1},
	{"Polycalcite Plastic",0,1,1.5,1},{"Uncommon Screw",0,1,7.9,1},
	-- Chemical--------------------------------- reserve
	{"Polysulfide Plastic",0,1,1.6,1},{"reserve",0,1,0,1},
	-- Chemical--------------------------------- Refine
	{"Fluoropolymer",0,1,1.65,1},{"Carbon Pure",0,1,2.27,1},
	{"Vanamer",0,1,1.57,1},{"reserve",0,1,0,1}
}

local output_3d_screen_1 = {
	{"Basic Fixation",1772,800,1.12,1},{"Basic Injector",1426,10000,20.3,10},
	{"Uncommon Fixation",1773,400,1.16,1},{"Uncommon Injector",3965,20000,20.5,10},
	{"Advanced Fixation",1774,1,400.21,1},{"Advanced Injector",0,1,20.3,10},
	{"Basic Quantum Core",1344,23000,10.72,5},{"Rare Injector",5831,3000,20.63,10},
	{"Uncommon Quantum Core",1345,23000,11.04,5},{"Exotic Injector",0,1,0,10},
	{"Advanced Quantum Core",1346,24000,11.24,5},{"reserve",0,1,0,1},
	{"Rare Quantum Core",5241,5000,11.66,5},{"reserve",0,1,0,1},
	{"Exotic Quantum Core",5242,5000,11.85,5},{"Carbon fiber",0,1,1.5,1}
}

local output_3d_screen_2 = {
	{"Basic Screen XS",0,1,0,1},{"Basic Screen L",0,1,0,1},
	{"Basic Screen S",0,1,0,1},{"Basic Screen XL",0,1,0,1},
	{"Basic Screen M",0,1,115.19,139.2},{"reserve",0,1,0,1},
	{"Uncommon Screen XS",1168,1000,7.29,8.8},{"Advanced Screen XS",1285,1000,10.73,12.8},
	{"Uncommon Screen S",0,1,0,1},{"Advanced Screen S",0,1,0,1},
	{"Uncommon Screen M",0,1,0,1},{"Advanced Screen M",0,1,0,1},
	{"Uncommon Screen L",0,1,0,1},{"Advanced Screen L",0,1,0,1},
	{"Uncommon Screen XL",0,1,3860,4424.8},{"Advanced Screen XL",0,1,0,1}
}

local output_3d_screen_3 = {
	{"Basic casing XS",0,1,1.4,2},{"Rare Casing XS",0,1,1.52,2},
	{"Basic casing S",0,1,7.7,11},{"Rare Casing S",0,1,8.57,11},
	{"Basic casing M",0,1,0,1},{"Exotic casing S",0,1,8.29,11},
	{"Uncommon Casing XS",1062,1000,1.45,2},{"Advanced casing XS",1309,1000,1.5,2},
	{"Uncommon Casing S",2358,1000,8.05,11},{"Advanced casing S",0,1,8.4,11},
	{"Uncommon Casing M",0,1,54.25,74},{"Advanced casing M",0,1,56.7,74},
	{"Uncommon Casing L",0,1,0,1},{"Advanced casing L",0,1,394.8,515},
	{"Uncommon Casing XL",0,1,2640,3602},{"Advanced casing XL",0,1,2760,3602}
}
