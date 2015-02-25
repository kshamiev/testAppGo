/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.21-log : Database - testappde
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`testappde` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `testappde`;

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `Order_Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Заказа',
  `User_Id` bigint(20) DEFAULT NULL COMMENT 'Id Пользователя',
  `OrderAmount` decimal(10,2) DEFAULT NULL COMMENT 'Количество заказов',
  PRIMARY KEY (`Order_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8 COMMENT='Продажи';

/*Data for the table `sales` */

insert  into `sales`(`Order_Id`,`User_Id`,`OrderAmount`) values (2001,1,'9199.06'),(2002,2,'325.30'),(2003,3,'4029.31'),(2004,4,'9170.67'),(2005,5,'3765.40'),(2006,6,'1314.99'),(2007,7,'5278.74'),(2008,8,'2448.73'),(2009,9,'6407.44'),(2010,10,'4691.02'),(2011,11,'4232.77'),(2012,12,'7090.78'),(2013,13,'2755.58'),(2014,14,'2505.58'),(2015,15,'4261.16'),(2016,16,'3789.04'),(2017,17,'6161.72'),(2018,18,'9441.47'),(2019,19,'8722.20'),(2020,20,'5286.60'),(2021,22,'266.39'),(2022,24,'5472.17'),(2023,28,'6561.67'),(2024,29,'6391.83'),(2025,30,'2274.15'),(2026,31,'2195.28'),(2027,32,'4153.93'),(2028,33,'4183.81'),(2029,34,'8457.25'),(2030,35,'9734.84'),(2031,36,'3302.46'),(2032,37,'7307.78'),(2033,38,'6631.53'),(2034,39,'1234.29'),(2035,40,'6276.88'),(2036,41,'7681.51'),(2037,42,'9576.92'),(2038,43,'4840.07'),(2039,44,'5469.59'),(2040,45,'2827.76'),(2041,46,'7730.02'),(2042,47,'166.81'),(2043,48,'7643.99'),(2044,49,'7719.52'),(2045,50,'5665.64'),(2046,51,'5169.64'),(2047,52,'8851.26'),(2048,54,'8747.38'),(2049,55,'7183.13'),(2050,56,'9673.52'),(2051,57,'6818.21'),(2052,58,'5070.49'),(2053,59,'4897.82'),(2054,60,'9277.65'),(2055,61,'1694.77'),(2056,62,'640.91'),(2057,63,'8120.24'),(2058,64,'8678.45'),(2059,65,'9031.54'),(2060,66,'9122.35'),(2061,67,'8517.14'),(2062,68,'5218.65'),(2063,69,'541.82'),(2064,70,'7053.16'),(2065,71,'3640.35'),(2066,72,'7042.28'),(2067,73,'4290.32'),(2068,75,'324.76'),(2069,76,'8752.83'),(2070,77,'2789.90'),(2071,78,'7690.99'),(2072,79,'85.24'),(2073,80,'7353.25'),(2074,81,'6510.51'),(2075,82,'492.81'),(2076,83,'2932.52'),(2077,84,'3184.19'),(2078,85,'7123.36'),(2079,86,'6064.24'),(2080,87,'8951.12'),(2081,88,'6562.86'),(2082,89,'5960.97'),(2083,90,'116.25'),(2084,91,'2698.34'),(2085,92,'3142.97'),(2086,93,'7619.84'),(2087,94,'8670.27'),(2088,95,'491.83'),(2089,96,'6448.36'),(2090,97,'766.29'),(2091,98,'4486.39'),(2092,99,'133.05'),(2093,100,'7206.10'),(2094,101,'5631.34'),(2095,102,'6538.42'),(2096,103,'5798.07'),(2097,104,'9375.08'),(2098,105,'9481.20'),(2099,106,'9280.76'),(2100,108,'7960.21'),(2101,109,'1958.75'),(2102,110,'5913.14'),(2103,111,'3689.43'),(2104,112,'707.75'),(2105,113,'2470.47'),(2106,114,'229.07'),(2107,115,'3733.95'),(2108,116,'7982.53'),(2109,117,'8710.80'),(2110,118,'9606.44'),(2111,119,'1899.77'),(2112,120,'679.54'),(2113,121,'7698.38'),(2114,122,'6453.27'),(2115,123,'9171.22'),(2116,124,'6496.28'),(2117,125,'4967.76'),(2118,126,'5349.97'),(2119,127,'1846.54'),(2120,128,'3182.81'),(2121,129,'374.42'),(2122,130,'2323.69'),(2123,131,'495.16'),(2124,132,'5504.76'),(2125,133,'6038.29'),(2126,134,'3677.19'),(2127,135,'271.09'),(2128,136,'323.86'),(2129,137,'806.04'),(2130,138,'3058.61'),(2131,139,'2874.94'),(2132,140,'5198.87'),(2133,141,'7369.55'),(2134,142,'1251.12'),(2135,143,'4146.95'),(2136,144,'6981.41'),(2137,145,'2466.17'),(2138,146,'1386.65'),(2139,147,'9534.75'),(2140,148,'3513.77'),(2141,149,'8964.59'),(2142,150,'4281.66'),(2143,151,'4514.54'),(2144,152,'9727.73'),(2145,153,'5095.00'),(2146,154,'6291.84'),(2147,155,'6174.19'),(2148,156,'1995.45'),(2149,157,'1454.67'),(2150,158,'1286.98'),(2151,159,'2070.89'),(2152,160,'6493.53'),(2153,161,'6254.95'),(2154,162,'1794.18'),(2155,163,'206.06'),(2156,164,'5647.75'),(2157,165,'7620.58'),(2158,166,'1159.66'),(2159,167,'2936.53'),(2160,169,'1203.70'),(2161,170,'7208.88'),(2162,171,'2433.31'),(2163,172,'539.91'),(2164,173,'5399.61'),(2165,174,'5378.32'),(2166,175,'692.76'),(2167,176,'7328.83'),(2168,177,'4565.89'),(2169,178,'842.97'),(2170,179,'517.18'),(2171,180,'56.98'),(2172,181,'8733.35'),(2173,182,'3495.80'),(2174,183,'1278.96'),(2175,184,'5907.42'),(2176,185,'5700.20'),(2177,186,'778.75'),(2178,188,'6793.15'),(2179,189,'1629.51'),(2180,190,'7768.09'),(2181,191,'3951.91'),(2182,192,'6455.29'),(2183,193,'420.72'),(2184,194,'2737.73'),(2185,195,'2426.50'),(2186,196,'3919.32'),(2187,197,'2317.09'),(2188,198,'9827.50'),(2189,199,'2186.21'),(2190,200,'1448.57'),(2191,201,'684.20'),(2192,202,'9075.28'),(2193,203,'3323.84'),(2194,204,'9393.32'),(2195,205,'6995.10'),(2196,206,'6795.55'),(2197,207,'2992.44'),(2198,208,'4575.54'),(2199,209,'3900.39'),(2200,210,'5775.33'),(2201,211,'7175.47'),(2202,212,'8551.36'),(2203,213,'1230.39'),(2204,214,'497.86'),(2205,215,'8798.16'),(2206,216,'2497.21'),(2207,217,'6091.57'),(2208,218,'2966.22'),(2209,219,'6556.40'),(2210,220,'3883.33'),(2211,221,'9747.47'),(2212,222,'7087.36'),(2213,223,'6194.37'),(2214,224,'9709.78'),(2215,225,'9965.78'),(2216,226,'699.59'),(2217,227,'3600.58'),(2218,228,'5904.14'),(2219,229,'8718.95'),(2220,230,'5882.35'),(2221,231,'3254.89'),(2222,232,'8627.42'),(2223,233,'3372.42'),(2224,234,'979.82'),(2225,235,'4781.87'),(2226,236,'969.90'),(2227,237,'503.87'),(2228,238,'9609.65'),(2229,239,'6536.64'),(2230,240,'3854.24'),(2231,241,'9661.30'),(2232,242,'6743.75'),(2233,243,'4734.88'),(2234,244,'3443.14'),(2235,245,'3011.08'),(2236,246,'4725.97'),(2237,247,'4596.59'),(2238,248,'8805.06'),(2239,249,'235.54'),(2240,250,'4762.53'),(2241,251,'3106.01'),(2242,252,'1242.45'),(2243,253,'6894.23'),(2244,254,'743.79'),(2245,255,'3036.29'),(2246,256,'2950.06'),(2247,257,'5641.43'),(2248,258,'9356.98'),(2249,259,'9860.59'),(2250,260,'1232.01'),(2251,261,'6578.28'),(2252,262,'9195.36'),(2253,263,'6241.98'),(2254,264,'3623.83'),(2255,265,'9393.20'),(2256,266,'6094.52'),(2257,267,'2292.99'),(2258,269,'3181.38'),(2259,270,'9027.94'),(2260,271,'5595.58'),(2261,272,'894.05'),(2262,273,'7683.50'),(2263,274,'5735.37'),(2264,275,'5626.33'),(2265,276,'925.57'),(2266,277,'7748.85'),(2267,278,'5967.55'),(2268,279,'6591.21'),(2269,280,'5053.37'),(2270,281,'5493.25'),(2271,282,'2306.11'),(2272,283,'5050.82'),(2273,284,'8335.75'),(2274,285,'6526.30'),(2275,286,'7624.27'),(2276,287,'8542.42'),(2277,288,'9839.32'),(2278,289,'3569.34'),(2279,290,'8328.75'),(2280,291,'935.70'),(2281,292,'9692.26'),(2282,293,'5654.20'),(2283,294,'9194.24'),(2284,295,'9008.57'),(2285,296,'7460.15'),(2286,297,'275.05'),(2287,298,'8994.80'),(2288,299,'4148.85'),(2289,300,'3759.86'),(2290,301,'6352.73'),(2291,302,'484.08'),(2292,303,'3362.22'),(2293,304,'5358.84'),(2294,305,'6707.54'),(2295,306,'7461.20'),(2296,307,'7183.38'),(2297,308,'3533.28'),(2298,309,'6116.27'),(2299,310,'9981.51'),(2300,311,'1558.73'),(2301,312,'7849.13'),(2302,313,'4569.44'),(2303,314,'9299.83'),(2304,315,'2790.82'),(2305,316,'6054.59'),(2306,317,'1900.52'),(2307,318,'1338.83'),(2308,319,'992.57'),(2309,320,'946.38'),(2310,321,'1754.17'),(2311,322,'5931.71'),(2312,323,'4396.05'),(2313,324,'4185.13'),(2314,325,'7737.51'),(2315,326,'6132.13'),(2316,327,'7448.12'),(2317,328,'8844.23'),(2318,329,'1876.80'),(2319,330,'2851.29'),(2320,331,'8626.05'),(2321,332,'4576.39'),(2322,333,'7003.78'),(2323,334,'1289.73'),(2324,335,'5437.31'),(2325,336,'3317.36'),(2326,337,'274.86'),(2327,338,'1422.23'),(2328,339,'6286.58'),(2329,340,'7166.19'),(2330,341,'6971.23'),(2331,342,'3357.58'),(2332,343,'5874.19'),(2333,344,'9298.21'),(2334,345,'8868.49'),(2335,346,'6447.82'),(2336,347,'5633.62'),(2337,348,'8824.64'),(2338,349,'7222.34'),(2339,350,'9637.79'),(2340,351,'6521.94'),(2341,352,'3696.34'),(2342,353,'8915.87'),(2343,354,'3490.34'),(2344,355,'704.07'),(2345,356,'3049.36'),(2346,357,'3134.56'),(2347,358,'6524.73'),(2348,359,'3219.97'),(2349,360,'6525.66'),(2350,361,'2968.41'),(2351,362,'5265.06'),(2352,363,'7420.07'),(2353,364,'1305.18'),(2354,365,'4265.68'),(2355,366,'7412.85'),(2356,367,'4267.20'),(2357,368,'9097.48'),(2358,369,'2685.79'),(2359,370,'6136.52'),(2360,371,'2625.22'),(2361,372,'4716.56'),(2362,373,'5707.11'),(2363,374,'4385.90'),(2364,375,'4808.16'),(2365,376,'883.08'),(2366,377,'9990.94'),(2367,378,'7305.46'),(2368,379,'6554.47'),(2369,380,'855.96'),(2370,381,'4616.40'),(2371,382,'514.13'),(2372,383,'8721.46'),(2373,384,'2064.92'),(2374,385,'4160.21'),(2375,386,'4606.27'),(2376,387,'550.73'),(2377,388,'8934.85'),(2378,389,'3022.04'),(2379,390,'8305.65'),(2380,391,'2462.12'),(2381,392,'7393.67'),(2382,393,'9581.97'),(2383,394,'5728.84'),(2384,395,'9898.31'),(2385,396,'2305.04'),(2386,397,'1830.26'),(2387,398,'2236.19'),(2388,399,'5690.16'),(2389,400,'1742.22'),(2390,401,'1640.63'),(2391,402,'2976.48'),(2392,403,'9960.52'),(2393,404,'873.16'),(2394,405,'4484.23'),(2395,406,'9801.68'),(2396,407,'5555.71'),(2397,408,'8373.51'),(2398,409,'5200.44'),(2399,410,'881.64'),(2400,411,'8806.90'),(2401,412,'1389.58'),(2402,413,'527.18'),(2403,414,'8467.19'),(2404,415,'754.40'),(2405,416,'8370.41'),(2406,417,'9588.88'),(2407,418,'2833.15'),(2408,419,'5399.11'),(2409,420,'8496.12'),(2410,421,'6283.25'),(2411,422,'5927.91'),(2412,423,'789.79'),(2413,424,'6165.23'),(2414,425,'8456.76'),(2415,426,'3788.13'),(2416,427,'3570.36'),(2417,428,'6487.41'),(2418,429,'1725.98'),(2419,430,'9167.64'),(2420,432,'660.30'),(2421,433,'5798.55'),(2422,434,'7011.85'),(2423,435,'7663.61'),(2424,436,'7282.49'),(2425,437,'3421.64'),(2426,438,'5260.71'),(2427,439,'6038.63'),(2428,440,'4411.02'),(2429,441,'3939.21'),(2430,442,'6463.01'),(2431,443,'497.40'),(2432,444,'3097.96'),(2433,445,'3997.62'),(2434,446,'694.22'),(2435,447,'1478.22'),(2436,448,'5308.45'),(2437,449,'2107.59'),(2438,450,'4612.58'),(2439,451,'6740.15'),(2440,452,'9862.99'),(2441,453,'9094.51'),(2442,454,'5883.60'),(2443,455,'2134.44'),(2444,456,'3021.42'),(2445,457,'8703.76'),(2446,458,'4454.57'),(2447,459,'6161.55'),(2448,460,'7444.03'),(2449,461,'8735.50'),(2450,462,'1345.42'),(2451,463,'520.58'),(2452,464,'8566.65'),(2453,465,'1271.51'),(2454,466,'657.58'),(2455,467,'9473.40'),(2456,468,'5394.27'),(2457,469,'8551.13'),(2458,470,'6572.82'),(2459,471,'7210.75'),(2460,472,'6335.26'),(2461,473,'44.08'),(2462,474,'1214.61'),(2463,475,'5940.81'),(2464,476,'6060.20'),(2465,477,'2478.59'),(2466,478,'4212.33'),(2467,479,'3625.89'),(2468,480,'5492.48'),(2469,481,'6584.71'),(2470,482,'6446.10'),(2471,483,'2476.40'),(2472,484,'3043.68'),(2473,485,'7789.19'),(2474,486,'9814.92'),(2475,487,'5707.03'),(2476,488,'9090.41'),(2477,489,'8330.93'),(2478,490,'4383.42'),(2479,491,'6924.33'),(2480,492,'1471.39'),(2481,493,'6583.94'),(2482,494,'8505.54'),(2483,495,'2775.90'),(2484,496,'8362.88'),(2485,497,'3486.68'),(2486,498,'2344.76'),(2487,499,'1263.79'),(2488,500,'9284.64'),(2489,501,'2631.83'),(2490,502,'5305.25'),(2491,503,'8630.76'),(2492,504,'7238.04'),(2493,505,'297.94'),(2494,506,'9775.59'),(2495,507,'7984.11'),(2496,508,'593.76'),(2497,509,'9016.50'),(2498,510,'3301.23'),(2499,511,'9456.62'),(2500,512,'7379.43'),(2501,513,'8527.30'),(2502,514,'498.20'),(2503,515,'6909.11'),(2504,516,'3050.94'),(2505,517,'4527.39'),(2506,518,'3484.10'),(2507,519,'3838.33'),(2508,520,'8739.36'),(2509,521,'2181.83'),(2510,522,'4691.06'),(2511,523,'6909.80'),(2512,524,'475.81'),(2513,525,'1649.65'),(2514,526,'6820.82'),(2515,527,'9155.17'),(2516,528,'5313.36'),(2517,529,'9101.30'),(2518,530,'9566.43'),(2519,531,'528.24'),(2520,532,'3941.91'),(2521,533,'8124.85'),(2522,534,'8798.49'),(2523,535,'9617.91'),(2524,536,'1694.07'),(2525,537,'9616.63'),(2526,539,'3000.95'),(2527,540,'6154.84'),(2528,541,'1771.36'),(2529,542,'392.26'),(2530,543,'6647.24'),(2531,544,'2059.43'),(2532,545,'355.42'),(2533,546,'5598.79'),(2534,547,'6927.72'),(2535,548,'7842.24'),(2536,549,'8428.01'),(2537,550,'8613.35'),(2538,551,'7782.70'),(2539,552,'3073.44'),(2540,553,'2019.13'),(2541,554,'875.32'),(2542,555,'8319.21'),(2543,556,'8970.11'),(2544,557,'9892.90'),(2545,558,'2554.18'),(2546,559,'3092.19'),(2547,560,'7798.43'),(2548,561,'9715.57'),(2549,562,'5182.56'),(2550,563,'6766.09'),(2551,564,'8282.78'),(2552,565,'1115.62'),(2553,566,'729.76'),(2554,567,'301.95'),(2555,568,'9320.47'),(2556,569,'5696.49'),(2557,570,'521.04'),(2558,571,'5515.75'),(2559,572,'6015.64'),(2560,573,'3530.93'),(2561,574,'9607.75'),(2562,575,'7445.94'),(2563,576,'8406.48'),(2564,577,'9694.55'),(2565,578,'3253.33'),(2566,579,'7182.98'),(2567,580,'6154.90'),(2568,581,'9225.58'),(2569,582,'7663.19'),(2570,583,'639.21'),(2571,584,'206.46'),(2572,585,'9114.70'),(2573,586,'4954.10'),(2574,587,'7426.39'),(2575,588,'2269.65'),(2576,589,'9069.08'),(2577,590,'8536.48'),(2578,591,'5475.14'),(2579,592,'1766.25'),(2580,593,'2405.83'),(2581,594,'6730.42'),(2582,595,'6434.59'),(2583,597,'1981.69'),(2584,598,'604.68'),(2585,599,'7078.31'),(2586,600,'3577.54'),(2587,601,'6652.77'),(2588,602,'2531.21'),(2589,603,'2697.73'),(2590,604,'5895.05'),(2591,605,'1382.03'),(2592,606,'9225.02'),(2593,607,'1978.99'),(2594,608,'2219.90'),(2595,609,'5162.53'),(2596,610,'9152.94'),(2597,611,'277.11'),(2598,612,'3926.74'),(2599,613,'8802.35'),(2600,614,'2231.53'),(2601,615,'4750.59'),(2602,616,'7058.37'),(2603,617,'1040.08'),(2604,618,'4025.29'),(2605,619,'7006.21'),(2606,620,'2955.20'),(2607,621,'3757.37'),(2608,622,'9921.23'),(2609,623,'8334.05'),(2610,624,'1906.55'),(2611,625,'4530.60'),(2612,626,'6933.34'),(2613,627,'1074.91'),(2614,628,'4574.54'),(2615,629,'9647.95'),(2616,630,'4516.15'),(2617,631,'3636.91'),(2618,632,'4636.09'),(2619,633,'2269.71'),(2620,634,'7440.30'),(2621,635,'392.37'),(2622,636,'9640.96'),(2623,637,'7027.67'),(2624,638,'6215.49'),(2625,639,'9994.43'),(2626,640,'1325.67'),(2627,641,'6645.07'),(2628,642,'9248.34'),(2629,643,'6306.50'),(2630,644,'3787.46'),(2631,645,'17.80'),(2632,646,'8726.61'),(2633,647,'3579.64'),(2634,648,'1718.41'),(2635,649,'7853.10'),(2636,650,'4110.26'),(2637,651,'6992.01'),(2638,652,'2629.27'),(2639,653,'2170.31'),(2640,654,'2963.73'),(2641,655,'8307.74'),(2642,656,'2647.51'),(2643,657,'8314.34'),(2644,658,'3629.15'),(2645,659,'3202.75'),(2646,660,'5126.30'),(2647,661,'6023.26'),(2648,662,'4737.41'),(2649,663,'5617.26'),(2650,664,'3874.05'),(2651,665,'2518.50'),(2652,666,'970.33'),(2653,667,'7296.16'),(2654,668,'3569.81'),(2655,669,'5960.56'),(2656,670,'9093.38'),(2657,671,'7585.22'),(2658,672,'645.96'),(2659,673,'474.16'),(2660,674,'432.91'),(2661,675,'742.05'),(2662,676,'2411.54'),(2663,677,'9831.55'),(2664,678,'1923.12'),(2665,679,'120.96'),(2666,680,'4835.42'),(2667,681,'3814.25'),(2668,682,'4564.97'),(2669,683,'1382.10'),(2670,684,'3215.59'),(2671,685,'1931.66'),(2672,686,'11.54'),(2673,687,'4262.73'),(2674,688,'1279.01'),(2675,689,'3606.85'),(2676,690,'4197.22'),(2677,691,'165.56'),(2678,692,'8236.12'),(2679,693,'683.95'),(2680,694,'8711.40'),(2681,695,'1505.13'),(2682,696,'1391.44'),(2683,697,'2441.81'),(2684,698,'8034.74'),(2685,699,'2848.25'),(2686,700,'137.04'),(2687,701,'2140.44'),(2688,702,'291.08'),(2689,703,'5034.07'),(2690,704,'4297.14'),(2691,705,'6383.46'),(2692,706,'9025.91'),(2693,707,'5979.17'),(2694,708,'2818.12'),(2695,709,'6153.09'),(2696,710,'2311.09'),(2697,711,'3096.17'),(2698,712,'8547.61'),(2699,713,'3449.51'),(2700,714,'1604.74'),(2701,715,'7675.15'),(2702,716,'3561.56'),(2703,717,'4782.33'),(2704,718,'3226.99'),(2705,719,'1787.94'),(2706,720,'9258.75'),(2707,721,'929.93'),(2708,722,'6873.38'),(2709,723,'1577.13'),(2710,724,'7265.52'),(2711,725,'1596.19'),(2712,726,'6184.41'),(2713,727,'6133.45'),(2714,728,'2114.04'),(2715,729,'2169.84'),(2716,730,'4507.10'),(2717,731,'6025.98'),(2718,732,'6608.60'),(2719,733,'4965.04'),(2720,734,'4999.43'),(2721,735,'102.02'),(2722,736,'5511.81'),(2723,737,'7252.98'),(2724,738,'9729.47'),(2725,739,'6888.40'),(2726,740,'5253.62'),(2727,741,'5602.88'),(2728,742,'2253.55'),(2729,743,'4459.10'),(2730,744,'5534.84'),(2731,745,'4296.89'),(2732,746,'4879.96'),(2733,747,'1509.13'),(2734,748,'2905.75'),(2735,749,'1.38'),(2736,750,'1289.62'),(2737,751,'6443.98'),(2738,752,'8351.06'),(2739,753,'2423.32'),(2740,754,'7063.46'),(2741,755,'8047.31'),(2742,756,'9046.16'),(2743,757,'1088.89'),(2744,758,'8305.95'),(2745,759,'8263.08'),(2746,760,'6397.54'),(2747,761,'7198.47'),(2748,762,'6799.74'),(2749,763,'2403.30'),(2750,764,'1617.28'),(2751,765,'876.48'),(2752,766,'9530.56'),(2753,767,'5023.36'),(2754,768,'6525.11'),(2755,769,'7555.48'),(2756,770,'8202.07'),(2757,771,'8343.91'),(2758,772,'7113.34'),(2759,773,'534.98'),(2760,774,'1334.86'),(2761,775,'5069.39'),(2762,776,'1342.35'),(2763,777,'1503.57'),(2764,778,'3490.79'),(2765,779,'2943.26'),(2766,780,'4243.94'),(2767,781,'2389.92'),(2768,782,'9217.77'),(2769,783,'8919.08'),(2770,784,'6942.08'),(2771,785,'7953.19'),(2772,786,'8939.70'),(2773,787,'838.95'),(2774,788,'7375.62'),(2775,789,'4361.27'),(2776,790,'9679.51'),(2777,791,'5313.70'),(2778,792,'7530.01'),(2779,793,'1708.92'),(2780,794,'5954.57'),(2781,795,'4646.12'),(2782,796,'5366.85'),(2783,797,'2895.92'),(2784,798,'8379.05'),(2785,799,'3207.50'),(2786,801,'900.36'),(2787,802,'4879.29'),(2788,803,'1695.36'),(2789,804,'3838.94'),(2790,805,'4108.62'),(2791,806,'9026.27'),(2792,807,'2805.49'),(2793,808,'6948.63'),(2794,809,'6326.71'),(2795,810,'787.65'),(2796,811,'4958.13'),(2797,812,'2427.67'),(2798,813,'7263.99'),(2799,814,'9036.92'),(2800,815,'3392.62'),(2801,816,'9852.36'),(2802,817,'9083.95'),(2803,818,'5862.68'),(2804,819,'2061.53'),(2805,820,'2719.61'),(2806,821,'7413.45'),(2807,822,'8908.43'),(2808,823,'2301.81'),(2809,824,'4783.73'),(2810,825,'7013.25'),(2811,826,'715.04'),(2812,827,'2535.44'),(2813,828,'532.10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `User_Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `Name` varchar(250) DEFAULT NULL COMMENT 'Фио',
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=829 DEFAULT CHARSET=utf8 COMMENT='Пользователи';

/*Data for the table `users` */

insert  into `users`(`User_Id`,`Name`) values (1,'Петр - DE'),(2,'Симеон - DE'),(3,'Константин - DE'),(4,'Алексей - DE'),(5,'Андрей - DE'),(6,'Василий - DE'),(7,'Мустафа - DE'),(8,'Эрик - DE'),(9,'Рональд - DE'),(10,'Адольф - DE'),(11,'Луций - DE'),(12,'Борис - DE'),(13,'Пафнутий - DE'),(14,'Тор - DE'),(15,'Моисей - DE'),(16,'Давид - DE'),(17,'Один - DE'),(18,'Мракос - DE'),(19,'Полиграф - DE'),(20,'Аид - DE'),(22,'Язи - DE'),(24,'Аарон - DE'),(28,'Абрам - DE'),(29,'Аваз - DE'),(30,'Аввакум - DE'),(31,'Август - DE'),(32,'Августа - DE'),(33,'Авдей - DE'),(34,'Авраам - DE'),(35,'Аврора - DE'),(36,'Автандил - DE'),(37,'Агап - DE'),(38,'Агата - DE'),(39,'Агафон - DE'),(40,'Агафья - DE'),(41,'Аггей - DE'),(42,'Аглая - DE'),(43,'Агнесса - DE'),(44,'Агния - DE'),(45,'Агриппина - DE'),(46,'Агунда - DE'),(47,'Ада - DE'),(48,'Адам - DE'),(49,'Аделина - DE'),(50,'Адель - DE'),(51,'Адиля - DE'),(52,'Адис - DE'),(54,'Адриан - DE'),(55,'Адриана - DE'),(56,'Аза - DE'),(57,'Азалия - DE'),(58,'Азарий - DE'),(59,'Азат - DE'),(60,'Азиза - DE'),(61,'Аида - DE'),(62,'Айгуль - DE'),(63,'Айжан - DE'),(64,'Айрат - DE'),(65,'Акакий - DE'),(66,'Аким - DE'),(67,'Аксинья - DE'),(68,'Акулина - DE'),(69,'Алан - DE'),(70,'Алана - DE'),(71,'Алевтина - DE'),(72,'Александр - DE'),(73,'Александра - DE'),(75,'Алена - DE'),(76,'Али - DE'),(77,'Алико - DE'),(78,'Алина - DE'),(79,'Алиса - DE'),(80,'Алихан - DE'),(81,'Алия - DE'),(82,'Алла - DE'),(83,'Алоиз - DE'),(84,'Алсу - DE'),(85,'Альберт - DE'),(86,'Альберта - DE'),(87,'Альбина - DE'),(88,'Альвина - DE'),(89,'Альжбета - DE'),(90,'Альфия - DE'),(91,'Альфред - DE'),(92,'Альфреда - DE'),(93,'Амадей - DE'),(94,'Амадеус - DE'),(95,'Амаль - DE'),(96,'Амаяк - DE'),(97,'Амвросий - DE'),(98,'Амелия - DE'),(99,'Амина - DE'),(100,'Анастасия - DE'),(101,'Анатолий - DE'),(102,'Анвар - DE'),(103,'Ангел - DE'),(104,'Ангелина - DE'),(105,'Андоим - DE'),(106,'Андре - DE'),(108,'Анеля - DE'),(109,'Анжела - DE'),(110,'Аникита - DE'),(111,'Анисья - DE'),(112,'Анита - DE'),(113,'Анна - DE'),(114,'Антон - DE'),(115,'Антонина - DE'),(116,'Ануфрий - DE'),(117,'Ануш - DE'),(118,'Анфиса - DE'),(119,'Аполлинарий - DE'),(120,'Аполлинария - DE'),(121,'Арам - DE'),(122,'Ариадна - DE'),(123,'Ариана - DE'),(124,'Арий - DE'),(125,'Арина - DE'),(126,'Аристарх - DE'),(127,'Аркадий - DE'),(128,'Арман - DE'),(129,'Армен - DE'),(130,'Арно - DE'),(131,'Арнольд - DE'),(132,'Арсений - DE'),(133,'Арслан - DE'),(134,'Артем - DE'),(135,'Артемий - DE'),(136,'Артур - DE'),(137,'Архелия - DE'),(138,'Архип - DE'),(139,'Асия - DE'),(140,'Аскольд - DE'),(141,'Ассоль - DE'),(142,'Астра - DE'),(143,'Астрид - DE'),(144,'Ася - DE'),(145,'Аурелия - DE'),(146,'Афанасий - DE'),(147,'Афанасия - DE'),(148,'Ахмет - DE'),(149,'Ашот - DE'),(150,'Аэлита - DE'),(151,'Беатриса - DE'),(152,'Бежен - DE'),(153,'Белла - DE'),(154,'Бенедикт - DE'),(155,'Бенедикта - DE'),(156,'Берек - DE'),(157,'Береслава - DE'),(158,'Бернар - DE'),(159,'Берта - DE'),(160,'Биргит - DE'),(161,'Бирута - DE'),(162,'Богдан - DE'),(163,'Богдана - DE'),(164,'Боголюб - DE'),(165,'Божена - DE'),(166,'Болеслав - DE'),(167,'Бонифаций - DE'),(169,'Борислав - DE'),(170,'Борислава - DE'),(171,'Боян - DE'),(172,'Бронислав - DE'),(173,'Бронислава - DE'),(174,'Бруно - DE'),(175,'Булат - DE'),(176,'Вадим - DE'),(177,'Валентин - DE'),(178,'Валентина - DE'),(179,'Валерий - DE'),(180,'Валерия - DE'),(181,'Вальтер - DE'),(182,'Ванда - DE'),(183,'Варвара - DE'),(184,'Вардан - DE'),(185,'Варлаам - DE'),(186,'Варфоломей - DE'),(188,'Василина - DE'),(189,'Василиса - DE'),(190,'Вацлав - DE'),(191,'Велизар - DE'),(192,'Велор - DE'),(193,'Венедикт - DE'),(194,'Венера - DE'),(195,'Вениамин - DE'),(196,'Вера - DE'),(197,'Вероника - DE'),(198,'Веселина - DE'),(199,'Весна - DE'),(200,'Веста - DE'),(201,'Вета - DE'),(202,'Вида - DE'),(203,'Викентий - DE'),(204,'Виктор - DE'),(205,'Виктория - DE'),(206,'Вилен - DE'),(207,'Вилли - DE'),(208,'Вилора - DE'),(209,'Вильгельм - DE'),(210,'Виолетта - DE'),(211,'Виргиния - DE'),(212,'Виринея - DE'),(213,'Виссарион - DE'),(214,'Виталий - DE'),(215,'Виталия - DE'),(216,'Витаутас - DE'),(217,'Витольд - DE'),(218,'Владимир - DE'),(219,'Владислав - DE'),(220,'Владислава - DE'),(221,'Владлен - DE'),(222,'Владлена - DE'),(223,'Влас - DE'),(224,'Володар - DE'),(225,'Вольдемар - DE'),(226,'Всеволод - DE'),(227,'Вячеслав - DE'),(228,'Габриэлла - DE'),(229,'Гавриил - DE'),(230,'Галактион - DE'),(231,'Галина - DE'),(232,'Гарри - DE'),(233,'Гастон - DE'),(234,'Гаянэ - DE'),(235,'Гаяс - DE'),(236,'Гевор - DE'),(237,'Геворг - DE'),(238,'Гелена - DE'),(239,'Гелла - DE'),(240,'Геннадий - DE'),(241,'Генриетта - DE'),(242,'Генрих - DE'),(243,'Георгий - DE'),(244,'Георгина - DE'),(245,'Гера - DE'),(246,'Геральд - DE'),(247,'Герасим - DE'),(248,'Герман - DE'),(249,'Гертруда - DE'),(250,'Глафира - DE'),(251,'Глеб - DE'),(252,'Глория - DE'),(253,'Гордей - DE'),(254,'Гордон - DE'),(255,'Горислав - DE'),(256,'Гортензия - DE'),(257,'Градимир - DE'),(258,'Гражина - DE'),(259,'Грета - DE'),(260,'Григорий - DE'),(261,'Гузель - DE'),(262,'Гулия - DE'),(263,'Гульмира - DE'),(264,'Гульназ - DE'),(265,'Гульнара - DE'),(266,'Гурий - DE'),(267,'Густав - DE'),(269,'Дайна - DE'),(270,'Далия - DE'),(271,'Дамир - DE'),(272,'Дамира - DE'),(273,'Дана - DE'),(274,'Даниил - DE'),(275,'Даниэла - DE'),(276,'Данияр - DE'),(277,'Данута - DE'),(278,'Дарина - DE'),(279,'Дарья - DE'),(280,'Дебора - DE'),(281,'Демид - DE'),(282,'Демьян - DE'),(283,'Денис - DE'),(284,'Джамал - DE'),(285,'Джамиля - DE'),(286,'Джемма - DE'),(287,'Джереми - DE'),(288,'Джордан - DE'),(289,'Джулия - DE'),(290,'Джульетта - DE'),(291,'Диана - DE'),(292,'Дилара - DE'),(293,'Диля - DE'),(294,'Дина - DE'),(295,'Динара - DE'),(296,'Динасий - DE'),(297,'Диодора - DE'),(298,'Дионисия - DE'),(299,'Дмитрий - DE'),(300,'Добрыня - DE'),(301,'Доля - DE'),(302,'Доминика - DE'),(303,'Дональд - DE'),(304,'Донат - DE'),(305,'Донатос - DE'),(306,'Дора - DE'),(307,'Дорофей - DE'),(308,'Ева - DE'),(309,'Евангелина - DE'),(310,'Евгений - DE'),(311,'Евгения - DE'),(312,'Евграф - DE'),(313,'Евдоким - DE'),(314,'Евдокия - DE'),(315,'Евсей - DE'),(316,'Евстафий - DE'),(317,'Егор - DE'),(318,'Екатерина - DE'),(319,'Елена - DE'),(320,'Елизавета - DE'),(321,'Елизар - DE'),(322,'Елисей - DE'),(323,'Емельян - DE'),(324,'Еремей - DE'),(325,'Ермолай - DE'),(326,'Ерофей - DE'),(327,'Есения - DE'),(328,'Ефим - DE'),(329,'Ефимий - DE'),(330,'Ефимия - DE'),(331,'Ефрем - DE'),(332,'Жан - DE'),(333,'Жанна - DE'),(334,'Жасмин - DE'),(335,'Ждан - DE'),(336,'Жозефина - DE'),(337,'Жорж - DE'),(338,'Забава - DE'),(339,'Заира - DE'),(340,'Замира - DE'),(341,'Зара - DE'),(342,'Зарема - DE'),(343,'Зарина - DE'),(344,'Заур - DE'),(345,'Захар - DE'),(346,'Захария - DE'),(347,'Земфира - DE'),(348,'Зигмунд - DE'),(349,'Зинаида - DE'),(350,'Зиновий - DE'),(351,'Зита - DE'),(352,'Злата - DE'),(353,'Зоя - DE'),(354,'Зульфия - DE'),(355,'Зухра - DE'),(356,'Ибрагим - DE'),(357,'Иван - DE'),(358,'Иванна - DE'),(359,'Иветта - DE'),(360,'Ивона - DE'),(361,'Игнат - DE'),(362,'Игорь - DE'),(363,'Ида - DE'),(364,'Иероним - DE'),(365,'Изабелла - DE'),(366,'Измаил - DE'),(367,'Изольда - DE'),(368,'Израиль - DE'),(369,'Изяслав - DE'),(370,'Илария - DE'),(371,'Илзе - DE'),(372,'Илиан - DE'),(373,'Илиана - DE'),(374,'Илларион - DE'),(375,'Илона - DE'),(376,'Ильхам - DE'),(377,'Илья - DE'),(378,'Ильяс - DE'),(379,'Инара - DE'),(380,'Инга - DE'),(381,'Инесса - DE'),(382,'Инна - DE'),(383,'Иннокентий - DE'),(384,'Иоанна - DE'),(385,'Иоланта - DE'),(386,'Ион - DE'),(387,'Ионос - DE'),(388,'Иосиф - DE'),(389,'Ипполит - DE'),(390,'Ираида - DE'),(391,'Ираклий - DE'),(392,'Ирена - DE'),(393,'Иржи - DE'),(394,'Ирина - DE'),(395,'Ирма - DE'),(396,'Исаак - DE'),(397,'Исай - DE'),(398,'Исидор - DE'),(399,'Исидора - DE'),(400,'Искандер - DE'),(401,'Июлия - DE'),(402,'Ия - DE'),(403,'Казимир - DE'),(404,'Калерия - DE'),(405,'Камилла - DE'),(406,'Камиль - DE'),(407,'Капитолина - DE'),(408,'Карен - DE'),(409,'Карим - DE'),(410,'Карима - DE'),(411,'Карина - DE'),(412,'Карл - DE'),(413,'Каролина - DE'),(414,'Катарина - DE'),(415,'Ким - DE'),(416,'Кира - DE'),(417,'Кирилл - DE'),(418,'Кирилла - DE'),(419,'Клавдий - DE'),(420,'Клавдия - DE'),(421,'Клара - DE'),(422,'Кларисса - DE'),(423,'Клаус - DE'),(424,'Клемент - DE'),(425,'Клим - DE'),(426,'Климентина - DE'),(427,'Клод - DE'),(428,'Кондрат - DE'),(429,'Конкордий - DE'),(430,'Конрад - DE'),(432,'Констанция - DE'),(433,'Кора - DE'),(434,'Корней - DE'),(435,'Корнилий - DE'),(436,'Кристина - DE'),(437,'Ксанф - DE'),(438,'Ксения - DE'),(439,'Кузьма - DE'),(440,'Лаврентий - DE'),(441,'Лада - DE'),(442,'Лазарь - DE'),(443,'Лайма - DE'),(444,'Лана - DE'),(445,'Лариса - DE'),(446,'Лаура - DE'),(447,'Лев - DE'),(448,'Леван - DE'),(449,'Левон - DE'),(450,'Лейла - DE'),(451,'Лейсан - DE'),(452,'Ленар - DE'),(453,'Леокадия - DE'),(454,'Леон - DE'),(455,'Леонард - DE'),(456,'Леонид - DE'),(457,'Леонида - DE'),(458,'Леонтий - DE'),(459,'Леопольд - DE'),(460,'Леся - DE'),(461,'Лиана - DE'),(462,'Лидия - DE'),(463,'Лилиана - DE'),(464,'Лилия - DE'),(465,'Лина - DE'),(466,'Линда - DE'),(467,'Лия - DE'),(468,'Лола - DE'),(469,'Лолита - DE'),(470,'Луиза - DE'),(471,'Лука - DE'),(472,'Лукерья - DE'),(473,'Лукьян - DE'),(474,'Любим - DE'),(475,'Любовь - DE'),(476,'Любомила - DE'),(477,'Любомир - DE'),(478,'Людвиг - DE'),(479,'Людмила - DE'),(480,'Люсьен - DE'),(481,'Люция - DE'),(482,'Магда - DE'),(483,'Магдалина - DE'),(484,'Мадина - DE'),(485,'Мадлен - DE'),(486,'Май - DE'),(487,'Майя - DE'),(488,'Макар - DE'),(489,'Максим - DE'),(490,'Максимилиан - DE'),(491,'Максуд - DE'),(492,'Малика - DE'),(493,'Мальвина - DE'),(494,'Мансур - DE'),(495,'Мануил - DE'),(496,'Марат - DE'),(497,'Маргарита - DE'),(498,'Мариан - DE'),(499,'Марианна - DE'),(500,'Марика - DE'),(501,'Марина - DE'),(502,'Мария - DE'),(503,'Марк - DE'),(504,'Марселина - DE'),(505,'Марсель - DE'),(506,'Марта - DE'),(507,'Мартин - DE'),(508,'Марфа - DE'),(509,'Марьям - DE'),(510,'Матвей - DE'),(511,'Матильда - DE'),(512,'Махмуд - DE'),(513,'Мелания - DE'),(514,'Мелисса - DE'),(515,'Мераб - DE'),(516,'Мефодий - DE'),(517,'Мечеслав - DE'),(518,'Мила - DE'),(519,'Милада - DE'),(520,'Милан - DE'),(521,'Милана - DE'),(522,'Милена - DE'),(523,'Милица - DE'),(524,'Милолика - DE'),(525,'Милослава - DE'),(526,'Мира - DE'),(527,'Мирдза - DE'),(528,'Мирон - DE'),(529,'Мирослав - DE'),(530,'Мирослава - DE'),(531,'Мирра - DE'),(532,'Митрофан - DE'),(533,'Михаил - DE'),(534,'Михайлина - DE'),(535,'Михаэла - DE'),(536,'Мичлов - DE'),(537,'Модест - DE'),(539,'Моника - DE'),(540,'Мстислав - DE'),(541,'Муза - DE'),(542,'Мурат - DE'),(543,'Муслим - DE'),(544,'Надежда - DE'),(545,'Назар - DE'),(546,'Назарий - DE'),(547,'Назира - DE'),(548,'Наиль - DE'),(549,'Наиля - DE'),(550,'Нана - DE'),(551,'Наталья - DE'),(552,'Натан - DE'),(553,'Нателла - DE'),(554,'Наум - DE'),(555,'Нелли - DE'),(556,'Неонила - DE'),(557,'Нестор - DE'),(558,'Ника - DE'),(559,'Никанор - DE'),(560,'Никита - DE'),(561,'Никифор - DE'),(562,'Никодим - DE'),(563,'Николай - DE'),(564,'Николь - DE'),(565,'Никон - DE'),(566,'Нильс - DE'),(567,'Нина - DE'),(568,'Нинель - DE'),(569,'Нисон - DE'),(570,'Нифонт - DE'),(571,'Нонна - DE'),(572,'Нора - DE'),(573,'Норманн - DE'),(574,'Овидий - DE'),(575,'Одетта - DE'),(576,'Оксана - DE'),(577,'Олан - DE'),(578,'Олег - DE'),(579,'Олесь - DE'),(580,'Олеся - DE'),(581,'Оливия - DE'),(582,'Ольга - DE'),(583,'Онисим - DE'),(584,'Орест - DE'),(585,'Осип - DE'),(586,'Оскар - DE'),(587,'Остап - DE'),(588,'Офелия - DE'),(589,'Павел - DE'),(590,'Павла - DE'),(591,'Памела - DE'),(592,'Панкрат - DE'),(593,'Парамон - DE'),(594,'Патриция - DE'),(595,'Пелагея - DE'),(597,'Пимен - DE'),(598,'Платон - DE'),(599,'Полина - DE'),(600,'Порфирий - DE'),(601,'Потап - DE'),(602,'Прасковья - DE'),(603,'Прокофий - DE'),(604,'Прохор - DE'),(605,'Равиль - DE'),(606,'Рада - DE'),(607,'Радий - DE'),(608,'Радмила - DE'),(609,'Радосвета - DE'),(610,'Раис - DE'),(611,'Раиса - DE'),(612,'Раймонд - DE'),(613,'Рамиз - DE'),(614,'Рамиль - DE'),(615,'Расим - DE'),(616,'Ратибор - DE'),(617,'Ратмир - DE'),(618,'Рафаил - DE'),(619,'Рафик - DE'),(620,'Рашид - DE'),(621,'Ревекка - DE'),(622,'Регина - DE'),(623,'Рем - DE'),(624,'Рема - DE'),(625,'Рената - DE'),(626,'Ренольд - DE'),(627,'Римма - DE'),(628,'Ринат - DE'),(629,'Рифат - DE'),(630,'Рихард - DE'),(631,'Ричард - DE'),(632,'Роберт - DE'),(633,'Роберта - DE'),(634,'Родион - DE'),(635,'Роза - DE'),(636,'Роксана - DE'),(637,'Ролан - DE'),(638,'Роман - DE'),(639,'Ростислав - DE'),(640,'Ростислава - DE'),(641,'Рубен - DE'),(642,'Рудольф - DE'),(643,'Рузанна - DE'),(644,'Рузиля - DE'),(645,'Румия - DE'),(646,'Руслан - DE'),(647,'Руслана - DE'),(648,'Рустам - DE'),(649,'Руфина - DE'),(650,'Рушан - DE'),(651,'Сабина - DE'),(652,'Сабир - DE'),(653,'Сабрина - DE'),(654,'Савва - DE'),(655,'Савелий - DE'),(656,'Саида - DE'),(657,'Саломея - DE'),(658,'Самсон - DE'),(659,'Самуил - DE'),(660,'Сандра - DE'),(661,'Сания - DE'),(662,'Санта - DE'),(663,'Сарра - DE'),(664,'Светлана - DE'),(665,'Святослав - DE'),(666,'Севастьян - DE'),(667,'Северин - DE'),(668,'Северина - DE'),(669,'Селена - DE'),(670,'Семен - DE'),(671,'Серафим - DE'),(672,'Серафима - DE'),(673,'Сергей - DE'),(674,'Сильва - DE'),(675,'Сима - DE'),(676,'Симона - DE'),(677,'Снежана - DE'),(678,'Созия - DE'),(679,'Сократ - DE'),(680,'Соломон - DE'),(681,'Софья - DE'),(682,'Спартак - DE'),(683,'Стакрат - DE'),(684,'Станимир - DE'),(685,'Станислав - DE'),(686,'Станислава - DE'),(687,'Стелла - DE'),(688,'Степан - DE'),(689,'Стефания - DE'),(690,'Стивен - DE'),(691,'Стоян - DE'),(692,'Султан - DE'),(693,'Сусанна - DE'),(694,'Таира - DE'),(695,'Таис - DE'),(696,'Таисия - DE'),(697,'Тала - DE'),(698,'Талик - DE'),(699,'Тамаз - DE'),(700,'Тамара - DE'),(701,'Тарас - DE'),(702,'Татьяна - DE'),(703,'Тельман - DE'),(704,'Теодор - DE'),(705,'Теодора - DE'),(706,'Тереза - DE'),(707,'Терентий - DE'),(708,'Тибор - DE'),(709,'Тигран - DE'),(710,'Тигрий - DE'),(711,'Тимофей - DE'),(712,'Тимур - DE'),(713,'Тина - DE'),(714,'Тит - DE'),(715,'Тихон - DE'),(716,'Томас - DE'),(717,'Томила - DE'),(718,'Трифон - DE'),(719,'Трофим - DE'),(720,'Ульманас - DE'),(721,'Ульяна - DE'),(722,'Урсула - DE'),(723,'Устин - DE'),(724,'Устина - DE'),(725,'Фаддей - DE'),(726,'Фаиза - DE'),(727,'Фаина - DE'),(728,'Фанис - DE'),(729,'Фания - DE'),(730,'Фаня - DE'),(731,'Фарид - DE'),(732,'Фарида - DE'),(733,'Фархад - DE'),(734,'Фатима - DE'),(735,'Фая - DE'),(736,'Федор - DE'),(737,'Федот - DE'),(738,'Фекла - DE'),(739,'Феликс - DE'),(740,'Фелиция - DE'),(741,'Феодосий - DE'),(742,'Фердинанд - DE'),(743,'Феруза - DE'),(744,'Фидель - DE'),(745,'Филимон - DE'),(746,'Филипп - DE'),(747,'Флора - DE'),(748,'Флорентий - DE'),(749,'Фома - DE'),(750,'Франсуаза - DE'),(751,'Франц - DE'),(752,'Фредерика - DE'),(753,'Фрида - DE'),(754,'Фридрих - DE'),(755,'Фуад - DE'),(756,'Харита - DE'),(757,'Харитон - DE'),(758,'Хильда - DE'),(759,'Христиан - DE'),(760,'Христина - DE'),(761,'Христос - DE'),(762,'Христофор - DE'),(763,'Христя - DE'),(764,'Цветана - DE'),(765,'Цезарь - DE'),(766,'Цецилия - DE'),(767,'Чеслав - DE'),(768,'Чеслава - DE'),(769,'Чингиз - DE'),(770,'Чулпан - DE'),(771,'Шакира - DE'),(772,'Шамиль - DE'),(773,'Шарлотта - DE'),(774,'Шерлок - DE'),(775,'Эвелина - DE'),(776,'Эдвард - DE'),(777,'Эдгар - DE'),(778,'Эдда - DE'),(779,'Эдита - DE'),(780,'Эдмунд - DE'),(781,'Эдуард - DE'),(782,'Элеонора - DE'),(783,'Элиза - DE'),(784,'Элина - DE'),(785,'Элла - DE'),(786,'Эллада - DE'),(787,'Элоиза - DE'),(788,'Эльвира - DE'),(789,'Эльга - DE'),(790,'Эльдар - DE'),(791,'Эльза - DE'),(792,'Эльмира - DE'),(793,'Эля - DE'),(794,'Эмилия - DE'),(795,'Эмиль - DE'),(796,'Эмин - DE'),(797,'Эмма - DE'),(798,'Эммануил - DE'),(799,'Эраст - DE'),(801,'Эрика - DE'),(802,'Эрнест - DE'),(803,'Эрнестина - DE'),(804,'Эсмеральда - DE'),(805,'Этери - DE'),(806,'Юзефа - DE'),(807,'Юлиан - DE'),(808,'Юлий - DE'),(809,'Юлия - DE'),(810,'Юна - DE'),(811,'Юния - DE'),(812,'Юнона - DE'),(813,'Юрий - DE'),(814,'Юханна - DE'),(815,'Юхим - DE'),(816,'Ядвига - DE'),(817,'Яким - DE'),(818,'Яков - DE'),(819,'Ян - DE'),(820,'Яна - DE'),(821,'Янита - DE'),(822,'Янка - DE'),(823,'Януарий - DE'),(824,'Ярина - DE'),(825,'Яромир - DE'),(826,'Ярослав - DE'),(827,'Ярослава - DE'),(828,'Ясон - DE');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
