#include <revolution/AX.h>

u16 __AXCompressorTable[] ALIGN(32) = {
    32611, 32455, 32299, 32145, 31991, 31838, 31685, 31534, 31383, 31233, 31083,
    30934, 30786, 30639, 30492, 30347, 30201, 30057, 29913, 29770, 29627, 29486,
    29344, 29204, 29064, 28925, 28787, 28649, 28512, 28375, 28240, 28104, 27970,
    27836, 27703, 27570, 27438, 27307, 27176, 27046, 26917, 26788, 26660, 26532,
    26405, 26279, 26153, 26028, 25903, 25780, 25656, 25533, 25411, 25290, 25169,
    25048, 24928, 24809, 24690, 24572, 24454, 24337, 24221, 24105, 23990, 23875,
    23761, 23647, 23534, 23421, 23309, 23197, 23086, 22976, 22866, 22757, 22648,
    22539, 22431, 22324, 22217, 22111, 22005, 21900, 21795, 21691, 21587, 21484,
    21381, 21278, 21177, 21075, 20974, 20874, 20774, 20675, 31158, 31024, 30890,
    30757, 30624, 30492, 30361, 30230, 30100, 29970, 29841, 29713, 29585, 29457,
    29330, 29204, 29078, 28953, 28828, 28704, 28580, 28457, 28335, 28213, 28091,
    27970, 27849, 27730, 27610, 27491, 27373, 27255, 27137, 27020, 26904, 26788,
    26673, 26558, 26443, 26329, 26216, 26103, 25991, 25879, 25767, 25656, 25546,
    25436, 25326, 25217, 25108, 25000, 24892, 24785, 24678, 24572, 24466, 24361,
    24256, 24151, 24047, 23944, 23841, 23738, 23636, 23534, 23432, 23331, 23231,
    23131, 23031, 22932, 22833, 22735, 22637, 22539, 22442, 22346, 22249, 22153,
    22058, 21963, 21868, 21774, 21680, 21587, 21494, 21401, 21309, 21217, 21126,
    21035, 20944, 20854, 20764, 20675, 29770, 29656, 29542, 29429, 29316, 29204,
    29092, 28981, 28870, 28759, 28649, 28539, 28430, 28321, 28213, 28104, 27997,
    27890, 27783, 27676, 27570, 27465, 27360, 27255, 27150, 27046, 26943, 26840,
    26737, 26634, 26532, 26431, 26329, 26229, 26128, 26028, 25928, 25829, 25730,
    25632, 25533, 25436, 25338, 25241, 25144, 25048, 24952, 24857, 24761, 24667,
    24572, 24478, 24384, 24291, 24198, 24105, 24013, 23921, 23829, 23738, 23647,
    23556, 23466, 23376, 23287, 23197, 23109, 23020, 22932, 22844, 22757, 22669,
    22583, 22496, 22410, 22324, 22239, 22153, 22069, 21984, 21900, 21816, 21732,
    21649, 21566, 21484, 21401, 21319, 21238, 21156, 21075, 20995, 20914, 20834,
    20754, 20675, 28444, 28348, 28253, 28158, 28064, 27970, 27876, 27783, 27690,
    27597, 27504, 27412, 27320, 27229, 27137, 27046, 26956, 26865, 26775, 26685,
    26596, 26507, 26418, 26329, 26241, 26153, 26066, 25978, 25891, 25804, 25718,
    25632, 25546, 25460, 25375, 25290, 25205, 25120, 25036, 24952, 24868, 24785,
    24702, 24619, 24537, 24454, 24372, 24291, 24209, 24128, 24047, 23967, 23886,
    23806, 23726, 23647, 23568, 23489, 23410, 23331, 23253, 23175, 23098, 23020,
    22943, 22866, 22789, 22713, 22637, 22561, 22485, 22410, 22335, 22260, 22185,
    22111, 22037, 21963, 21889, 21816, 21743, 21670, 21597, 21525, 21453, 21381,
    21309, 21238, 21166, 21095, 21025, 20954, 20884, 20814, 20744, 20675, 27176,
    27098, 27020, 26943, 26865, 26788, 26711, 26634, 26558, 26481, 26405, 26329,
    26254, 26178, 26103, 26028, 25953, 25879, 25804, 25730, 25656, 25582, 25509,
    25436, 25362, 25290, 25217, 25144, 25072, 25000, 24928, 24857, 24785, 24714,
    24643, 24572, 24501, 24431, 24361, 24291, 24221, 24151, 24082, 24013, 23944,
    23875, 23806, 23738, 23670, 23602, 23534, 23466, 23399, 23331, 23264, 23197,
    23131, 23064, 22998, 22932, 22866, 22800, 22735, 22669, 22604, 22539, 22475,
    22410, 22346, 22281, 22217, 22153, 22090, 22026, 21963, 21900, 21837, 21774,
    21712, 21649, 21587, 21525, 21463, 21401, 21340, 21278, 21217, 21156, 21095,
    21035, 20974, 20914, 20854, 20794, 20734, 20675, 25966, 25903, 25841, 25780,
    25718, 25656, 25595, 25533, 25472, 25411, 25350, 25290, 25229, 25169, 25108,
    25048, 24988, 24928, 24868, 24809, 24749, 24690, 24631, 24572, 24513, 24454,
    24396, 24337, 24279, 24221, 24163, 24105, 24047, 23990, 23932, 23875, 23818,
    23761, 23704, 23647, 23590, 23534, 23477, 23421, 23365, 23309, 23253, 23197,
    23142, 23086, 23031, 22976, 22921, 22866, 22811, 22757, 22702, 22648, 22593,
    22539, 22485, 22431, 22378, 22324, 22271, 22217, 22164, 22111, 22058, 22005,
    21952, 21900, 21847, 21795, 21743, 21691, 21639, 21587, 21535, 21484, 21432,
    21381, 21330, 21278, 21227, 21177, 21126, 21075, 21025, 20974, 20924, 20874,
    20824, 20774, 20724, 20675, 24809, 24761, 24714, 24667, 24619, 24572, 24525,
    24478, 24431, 24384, 24337, 24291, 24244, 24198, 24151, 24105, 24059, 24013,
    23967, 23921, 23875, 23829, 23783, 23738, 23692, 23647, 23602, 23556, 23511,
    23466, 23421, 23376, 23331, 23287, 23242, 23197, 23153, 23109, 23064, 23020,
    22976, 22932, 22888, 22844, 22800, 22757, 22713, 22669, 22626, 22583, 22539,
    22496, 22453, 22410, 22367, 22324, 22281, 22239, 22196, 22153, 22111, 22069,
    22026, 21984, 21942, 21900, 21858, 21816, 21774, 21732, 21691, 21649, 21608,
    21566, 21525, 21484, 21442, 21401, 21360, 21319, 21278, 21238, 21197, 21156,
    21116, 21075, 21035, 20995, 20954, 20914, 20874, 20834, 20794, 20754, 20714,
    20675, 23704, 23670, 23636, 23602, 23568, 23534, 23500, 23466, 23432, 23399,
    23365, 23331, 23298, 23264, 23231, 23197, 23164, 23131, 23098, 23064, 23031,
    22998, 22965, 22932, 22899, 22866, 22833, 22800, 22768, 22735, 22702, 22669,
    22637, 22604, 22572, 22539, 22507, 22475, 22442, 22410, 22378, 22346, 22313,
    22281, 22249, 22217, 22185, 22153, 22122, 22090, 22058, 22026, 21995, 21963,
    21931, 21900, 21868, 21837, 21805, 21774, 21743, 21712, 21680, 21649, 21618,
    21587, 21556, 21525, 21494, 21463, 21432, 21401, 21371, 21340, 21309, 21278,
    21248, 21217, 21187, 21156, 21126, 21095, 21065, 21035, 21005, 20974, 20944,
    20914, 20884, 20854, 20824, 20794, 20764, 20734, 20704, 20675, 22648, 22626,
    22604, 22583, 22561, 22539, 22518, 22496, 22475, 22453, 22431, 22410, 22388,
    22367, 22346, 22324, 22303, 22281, 22260, 22239, 22217, 22196, 22175, 22153,
    22132, 22111, 22090, 22069, 22047, 22026, 22005, 21984, 21963, 21942, 21921,
    21900, 21879, 21858, 21837, 21816, 21795, 21774, 21753, 21732, 21712, 21691,
    21670, 21649, 21628, 21608, 21587, 21566, 21545, 21525, 21504, 21484, 21463,
    21442, 21422, 21401, 21381, 21360, 21340, 21319, 21299, 21278, 21258, 21238,
    21217, 21197, 21177, 21156, 21136, 21116, 21095, 21075, 21055, 21035, 21015,
    20995, 20974, 20954, 20934, 20914, 20894, 20874, 20854, 20834, 20814, 20794,
    20774, 20754, 20734, 20714, 20695, 20675, 21639, 21628, 21618, 21608, 21597,
    21587, 21577, 21566, 21556, 21545, 21535, 21525, 21515, 21504, 21494, 21484,
    21473, 21463, 21453, 21442, 21432, 21422, 21412, 21401, 21391, 21381, 21371,
    21360, 21350, 21340, 21330, 21319, 21309, 21299, 21289, 21278, 21268, 21258,
    21248, 21238, 21227, 21217, 21207, 21197, 21187, 21177, 21166, 21156, 21146,
    21136, 21126, 21116, 21106, 21095, 21085, 21075, 21065, 21055, 21045, 21035,
    21025, 21015, 21005, 20995, 20984, 20974, 20964, 20954, 20944, 20934, 20924,
    20914, 20904, 20894, 20884, 20874, 20864, 20854, 20844, 20834, 20824, 20814,
    20804, 20794, 20784, 20774, 20764, 20754, 20744, 20734, 20724, 20714, 20704,
    20695, 20685, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675, 20675,
    31308, 31323, 31338, 31353, 31368, 31383, 31398, 31413, 31428, 31443, 31458,
    31473, 31488, 31504, 31519, 31534, 31549, 31564, 31579, 31594, 31609, 31625,
    31640, 31655, 31670, 31685, 31701, 31716, 31731, 31746, 31761, 31777, 31792,
    31807, 31822, 31838, 31853, 31868, 31884, 31899, 31914, 31930, 31945, 31960,
    31975, 31991, 32006, 32022, 32037, 32052, 32068, 32083, 32098, 32114, 32129,
    32145, 32160, 32176, 32191, 32206, 32222, 32237, 32253, 32268, 32284, 32299,
    32315, 32330, 32346, 32361, 32377, 32392, 32408, 32423, 32439, 32455, 32470,
    32486, 32501, 32517, 32532, 32548, 32564, 32579, 32595, 32611, 32626, 32642,
    32658, 32673, 32689, 32705, 32720, 32736, 32752, 32768, 29899, 29913, 29927,
    29942, 29956, 29970, 29985, 29999, 30014, 30028, 30042, 30057, 30071, 30086,
    30100, 30114, 30129, 30143, 30158, 30172, 30187, 30201, 30216, 30230, 30245,
    30259, 30274, 30288, 30303, 30317, 30332, 30346, 30361, 30376, 30390, 30405,
    30419, 30434, 30449, 30463, 30478, 30492, 30507, 30522, 30536, 30551, 30566,
    30580, 30595, 30610, 30624, 30639, 30654, 30668, 30683, 30698, 30713, 30727,
    30742, 30757, 30772, 30786, 30801, 30816, 30831, 30846, 30860, 30875, 30890,
    30905, 30920, 30934, 30949, 30964, 30979, 30994, 31009, 31024, 31038, 31053,
    31068, 31083, 31098, 31113, 31128, 31143, 31158, 31173, 31188, 31203, 31218,
    31233, 31248, 31263, 31278, 31293, 28553, 28567, 28580, 28594, 28608, 28621,
    28635, 28649, 28663, 28676, 28690, 28704, 28718, 28731, 28745, 28759, 28773,
    28787, 28800, 28814, 28828, 28842, 28856, 28870, 28884, 28897, 28911, 28925,
    28939, 28953, 28967, 28981, 28995, 29008, 29022, 29036, 29050, 29064, 29078,
    29092, 29106, 29120, 29134, 29148, 29162, 29176, 29190, 29204, 29218, 29232,
    29246, 29260, 29274, 29288, 29302, 29316, 29330, 29344, 29358, 29373, 29387,
    29401, 29415, 29429, 29443, 29457, 29471, 29485, 29500, 29514, 29528, 29542,
    29556, 29570, 29585, 29599, 29613, 29627, 29641, 29656, 29670, 29684, 29698,
    29713, 29727, 29741, 29755, 29770, 29784, 29798, 29813, 29827, 29841, 29856,
    29870, 29884, 27268, 27281, 27294, 27307, 27320, 27333, 27346, 27359, 27373,
    27386, 27399, 27412, 27425, 27438, 27451, 27465, 27478, 27491, 27504, 27517,
    27531, 27544, 27557, 27570, 27583, 27597, 27610, 27623, 27636, 27650, 27663,
    27676, 27690, 27703, 27716, 27729, 27743, 27756, 27769, 27783, 27796, 27809,
    27823, 27836, 27849, 27863, 27876, 27890, 27903, 27916, 27930, 27943, 27956,
    27970, 27983, 27997, 28010, 28024, 28037, 28051, 28064, 28077, 28091, 28104,
    28118, 28131, 28145, 28158, 28172, 28185, 28199, 28212, 28226, 28240, 28253,
    28267, 28280, 28294, 28307, 28321, 28335, 28348, 28362, 28375, 28389, 28403,
    28416, 28430, 28443, 28457, 28471, 28484, 28498, 28512, 28525, 28539, 26040,
    26053, 26065, 26078, 26090, 26103, 26116, 26128, 26141, 26153, 26166, 26178,
    26191, 26203, 26216, 26229, 26241, 26254, 26266, 26279, 26291, 26304, 26317,
    26329, 26342, 26355, 26367, 26380, 26393, 26405, 26418, 26431, 26443, 26456,
    26469, 26481, 26494, 26507, 26520, 26532, 26545, 26558, 26570, 26583, 26596,
    26609, 26621, 26634, 26647, 26660, 26673, 26685, 26698, 26711, 26724, 26737,
    26749, 26762, 26775, 26788, 26801, 26814, 26827, 26839, 26852, 26865, 26878,
    26891, 26904, 26917, 26930, 26943, 26956, 26969, 26981, 26994, 27007, 27020,
    27033, 27046, 27059, 27072, 27085, 27098, 27111, 27124, 27137, 27150, 27163,
    27176, 27189, 27202, 27215, 27229, 27242, 27255, 24868, 24880, 24892, 24904,
    24916, 24928, 24940, 24952, 24964, 24976, 24988, 25000, 25012, 25024, 25036,
    25048, 25060, 25072, 25084, 25096, 25108, 25120, 25132, 25144, 25156, 25168,
    25181, 25193, 25205, 25217, 25229, 25241, 25253, 25265, 25277, 25289, 25302,
    25314, 25326, 25338, 25350, 25362, 25375, 25387, 25399, 25411, 25423, 25435,
    25448, 25460, 25472, 25484, 25497, 25509, 25521, 25533, 25546, 25558, 25570,
    25582, 25595, 25607, 25619, 25631, 25644, 25656, 25668, 25681, 25693, 25705,
    25718, 25730, 25742, 25755, 25767, 25779, 25792, 25804, 25817, 25829, 25841,
    25854, 25866, 25879, 25891, 25903, 25916, 25928, 25941, 25953, 25966, 25978,
    25991, 26003, 26015, 26028, 23749, 23761, 23772, 23783, 23795, 23806, 23818,
    23829, 23840, 23852, 23863, 23875, 23886, 23898, 23909, 23921, 23932, 23944,
    23955, 23967, 23978, 23990, 24001, 24013, 24024, 24036, 24047, 24059, 24070,
    24082, 24093, 24105, 24117, 24128, 24140, 24151, 24163, 24174, 24186, 24198,
    24209, 24221, 24233, 24244, 24256, 24267, 24279, 24291, 24302, 24314, 24326,
    24337, 24349, 24361, 24372, 24384, 24396, 24407, 24419, 24431, 24443, 24454,
    24466, 24478, 24490, 24501, 24513, 24525, 24537, 24548, 24560, 24572, 24584,
    24596, 24607, 24619, 24631, 24643, 24655, 24666, 24678, 24690, 24702, 24714,
    24726, 24738, 24749, 24761, 24773, 24785, 24797, 24809, 24821, 24833, 24845,
    24857, 22680, 22691, 22702, 22713, 22724, 22735, 22746, 22757, 22767, 22778,
    22789, 22800, 22811, 22822, 22833, 22844, 22855, 22866, 22877, 22888, 22899,
    22910, 22921, 22932, 22943, 22954, 22965, 22976, 22987, 22998, 23009, 23020,
    23031, 23042, 23053, 23064, 23075, 23086, 23097, 23109, 23120, 23131, 23142,
    23153, 23164, 23175, 23186, 23197, 23209, 23220, 23231, 23242, 23253, 23264,
    23275, 23287, 23298, 23309, 23320, 23331, 23343, 23354, 23365, 23376, 23387,
    23399, 23410, 23421, 23432, 23444, 23455, 23466, 23477, 23489, 23500, 23511,
    23522, 23534, 23545, 23556, 23568, 23579, 23590, 23602, 23613, 23624, 23636,
    23647, 23658, 23670, 23681, 23692, 23704, 23715, 23726, 23738, 21659, 21670,
    21680, 21691, 21701, 21711, 21722, 21732, 21743, 21753, 21764, 21774, 21785,
    21795, 21805, 21816, 21826, 21837, 21847, 21858, 21868, 21879, 21889, 21900,
    21910, 21921, 21931, 21942, 21952, 21963, 21973, 21984, 21995, 22005, 22016,
    22026, 22037, 22047, 22058, 22069, 22079, 22090, 22100, 22111, 22122, 22132,
    22143, 22153, 22164, 22175, 22185, 22196, 22207, 22217, 22228, 22239, 22249,
    22260, 22271, 22281, 22292, 22303, 22313, 22324, 22335, 22345, 22356, 22367,
    22378, 22388, 22399, 22410, 22421, 22431, 22442, 22453, 22464, 22474, 22485,
    22496, 22507, 22518, 22528, 22539, 22550, 22561, 22572, 22583, 22593, 22604,
    22615, 22626, 22637, 22648, 22659, 22669, 20685, 20695, 20704, 20714, 20724,
    20734, 20744, 20754, 20764, 20774, 20784, 20794, 20804, 20814, 20824, 20834,
    20844, 20854, 20864, 20874, 20884, 20894, 20904, 20914, 20924, 20934, 20944,
    20954, 20964, 20974, 20984, 20995, 21005, 21015, 21025, 21035, 21045, 21055,
    21065, 21075, 21085, 21095, 21106, 21116, 21126, 21136, 21146, 21156, 21166,
    21177, 21187, 21197, 21207, 21217, 21227, 21238, 21248, 21258, 21268, 21278,
    21289, 21299, 21309, 21319, 21330, 21340, 21350, 21360, 21370, 21381, 21391,
    21401, 21412, 21422, 21432, 21442, 21453, 21463, 21473, 21484, 21494, 21504,
    21515, 21525, 21535, 21545, 21556, 21566, 21577, 21587, 21597, 21608, 21618,
    21628, 21639, 21649};
