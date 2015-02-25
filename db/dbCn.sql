/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.21-log : Database - testappcn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`testappcn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `testappcn`;

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `Order_Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id Заказа',
  `User_Id` bigint(20) DEFAULT NULL COMMENT 'Id Пользователя',
  `OrderAmount` decimal(10,2) DEFAULT NULL COMMENT 'Количество заказов',
  PRIMARY KEY (`Order_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8 COMMENT='Продажи';

/*Data for the table `sales` */

insert  into `sales`(`Order_Id`,`User_Id`,`OrderAmount`) values (4001,1,'9199.06'),(4002,2,'325.30'),(4003,3,'4029.31'),(4004,4,'9170.67'),(4005,5,'3765.40'),(4006,6,'1314.99'),(4007,7,'5278.74'),(4008,8,'2448.73'),(4009,9,'6407.44'),(4010,10,'4691.02'),(4011,11,'4232.77'),(4012,12,'7090.78'),(4013,13,'2755.58'),(4014,14,'2505.58'),(4015,15,'4261.16'),(4016,16,'3789.04'),(4017,17,'6161.72'),(4018,18,'9441.47'),(4019,19,'8722.20'),(4020,20,'5286.60'),(4021,22,'266.39'),(4022,24,'5472.17'),(4023,28,'6561.67'),(4024,29,'6391.83'),(4025,30,'2274.15'),(4026,31,'2195.28'),(4027,32,'4153.93'),(4028,33,'4183.81'),(4029,34,'8457.25'),(4030,35,'9734.84'),(4031,36,'3302.46'),(4032,37,'7307.78'),(4033,38,'6631.53'),(4034,39,'1234.29'),(4035,40,'6276.88'),(4036,41,'7681.51'),(4037,42,'9576.92'),(4038,43,'4840.07'),(4039,44,'5469.59'),(4040,45,'2827.76'),(4041,46,'7730.02'),(4042,47,'166.81'),(4043,48,'7643.99'),(4044,49,'7719.52'),(4045,50,'5665.64'),(4046,51,'5169.64'),(4047,52,'8851.26'),(4048,54,'8747.38'),(4049,55,'7183.13'),(4050,56,'9673.52'),(4051,57,'6818.21'),(4052,58,'5070.49'),(4053,59,'4897.82'),(4054,60,'9277.65'),(4055,61,'1694.77'),(4056,62,'640.91'),(4057,63,'8120.24'),(4058,64,'8678.45'),(4059,65,'9031.54'),(4060,66,'9122.35'),(4061,67,'8517.14'),(4062,68,'5218.65'),(4063,69,'541.82'),(4064,70,'7053.16'),(4065,71,'3640.35'),(4066,72,'7042.28'),(4067,73,'4290.32'),(4068,75,'324.76'),(4069,76,'8752.83'),(4070,77,'2789.90'),(4071,78,'7690.99'),(4072,79,'85.24'),(4073,80,'7353.25'),(4074,81,'6510.51'),(4075,82,'492.81'),(4076,83,'2932.52'),(4077,84,'3184.19'),(4078,85,'7123.36'),(4079,86,'6064.24'),(4080,87,'8951.12'),(4081,88,'6562.86'),(4082,89,'5960.97'),(4083,90,'116.25'),(4084,91,'2698.34'),(4085,92,'3142.97'),(4086,93,'7619.84'),(4087,94,'8670.27'),(4088,95,'491.83'),(4089,96,'6448.36'),(4090,97,'766.29'),(4091,98,'4486.39'),(4092,99,'133.05'),(4093,100,'7206.10'),(4094,101,'5631.34'),(4095,102,'6538.42'),(4096,103,'5798.07'),(4097,104,'9375.08'),(4098,105,'9481.20'),(4099,106,'9280.76'),(4100,108,'7960.21'),(4101,109,'1958.75'),(4102,110,'5913.14'),(4103,111,'3689.43'),(4104,112,'707.75'),(4105,113,'2470.47'),(4106,114,'229.07'),(4107,115,'3733.95'),(4108,116,'7982.53'),(4109,117,'8710.80'),(4110,118,'9606.44'),(4111,119,'1899.77'),(4112,120,'679.54'),(4113,121,'7698.38'),(4114,122,'6453.27'),(4115,123,'9171.22'),(4116,124,'6496.28'),(4117,125,'4967.76'),(4118,126,'5349.97'),(4119,127,'1846.54'),(4120,128,'3182.81'),(4121,129,'374.42'),(4122,130,'2323.69'),(4123,131,'495.16'),(4124,132,'5504.76'),(4125,133,'6038.29'),(4126,134,'3677.19'),(4127,135,'271.09'),(4128,136,'323.86'),(4129,137,'806.04'),(4130,138,'3058.61'),(4131,139,'2874.94'),(4132,140,'5198.87'),(4133,141,'7369.55'),(4134,142,'1251.12'),(4135,143,'4146.95'),(4136,144,'6981.41'),(4137,145,'2466.17'),(4138,146,'1386.65'),(4139,147,'9534.75'),(4140,148,'3513.77'),(4141,149,'8964.59'),(4142,150,'4281.66'),(4143,151,'4514.54'),(4144,152,'9727.73'),(4145,153,'5095.00'),(4146,154,'6291.84'),(4147,155,'6174.19'),(4148,156,'1995.45'),(4149,157,'1454.67'),(4150,158,'1286.98'),(4151,159,'2070.89'),(4152,160,'6493.53'),(4153,161,'6254.95'),(4154,162,'1794.18'),(4155,163,'206.06'),(4156,164,'5647.75'),(4157,165,'7620.58'),(4158,166,'1159.66'),(4159,167,'2936.53'),(4160,169,'1203.70'),(4161,170,'7208.88'),(4162,171,'2433.31'),(4163,172,'539.91'),(4164,173,'5399.61'),(4165,174,'5378.32'),(4166,175,'692.76'),(4167,176,'7328.83'),(4168,177,'4565.89'),(4169,178,'842.97'),(4170,179,'517.18'),(4171,180,'56.98'),(4172,181,'8733.35'),(4173,182,'3495.80'),(4174,183,'1278.96'),(4175,184,'5907.42'),(4176,185,'5700.20'),(4177,186,'778.75'),(4178,188,'6793.15'),(4179,189,'1629.51'),(4180,190,'7768.09'),(4181,191,'3951.91'),(4182,192,'6455.29'),(4183,193,'420.72'),(4184,194,'2737.73'),(4185,195,'2426.50'),(4186,196,'3919.32'),(4187,197,'2317.09'),(4188,198,'9827.50'),(4189,199,'2186.21'),(4190,200,'1448.57'),(4191,201,'684.20'),(4192,202,'9075.28'),(4193,203,'3323.84'),(4194,204,'9393.32'),(4195,205,'6995.10'),(4196,206,'6795.55'),(4197,207,'2992.44'),(4198,208,'4575.54'),(4199,209,'3900.39'),(4200,210,'5775.33'),(4201,211,'7175.47'),(4202,212,'8551.36'),(4203,213,'1230.39'),(4204,214,'497.86'),(4205,215,'8798.16'),(4206,216,'2497.21'),(4207,217,'6091.57'),(4208,218,'2966.22'),(4209,219,'6556.40'),(4210,220,'3883.33'),(4211,221,'9747.47'),(4212,222,'7087.36'),(4213,223,'6194.37'),(4214,224,'9709.78'),(4215,225,'9965.78'),(4216,226,'699.59'),(4217,227,'3600.58'),(4218,228,'5904.14'),(4219,229,'8718.95'),(4220,230,'5882.35'),(4221,231,'3254.89'),(4222,232,'8627.42'),(4223,233,'3372.42'),(4224,234,'979.82'),(4225,235,'4781.87'),(4226,236,'969.90'),(4227,237,'503.87'),(4228,238,'9609.65'),(4229,239,'6536.64'),(4230,240,'3854.24'),(4231,241,'9661.30'),(4232,242,'6743.75'),(4233,243,'4734.88'),(4234,244,'3443.14'),(4235,245,'3011.08'),(4236,246,'4725.97'),(4237,247,'4596.59'),(4238,248,'8805.06'),(4239,249,'235.54'),(4240,250,'4762.53'),(4241,251,'3106.01'),(4242,252,'1242.45'),(4243,253,'6894.23'),(4244,254,'743.79'),(4245,255,'3036.29'),(4246,256,'2950.06'),(4247,257,'5641.43'),(4248,258,'9356.98'),(4249,259,'9860.59'),(4250,260,'1232.01'),(4251,261,'6578.28'),(4252,262,'9195.36'),(4253,263,'6241.98'),(4254,264,'3623.83'),(4255,265,'9393.20'),(4256,266,'6094.52'),(4257,267,'2292.99'),(4258,269,'3181.38'),(4259,270,'9027.94'),(4260,271,'5595.58'),(4261,272,'894.05'),(4262,273,'7683.50'),(4263,274,'5735.37'),(4264,275,'5626.33'),(4265,276,'925.57'),(4266,277,'7748.85'),(4267,278,'5967.55'),(4268,279,'6591.21'),(4269,280,'5053.37'),(4270,281,'5493.25'),(4271,282,'2306.11'),(4272,283,'5050.82'),(4273,284,'8335.75'),(4274,285,'6526.30'),(4275,286,'7624.27'),(4276,287,'8542.42'),(4277,288,'9839.32'),(4278,289,'3569.34'),(4279,290,'8328.75'),(4280,291,'935.70'),(4281,292,'9692.26'),(4282,293,'5654.20'),(4283,294,'9194.24'),(4284,295,'9008.57'),(4285,296,'7460.15'),(4286,297,'275.05'),(4287,298,'8994.80'),(4288,299,'4148.85'),(4289,300,'3759.86'),(4290,301,'6352.73'),(4291,302,'484.08'),(4292,303,'3362.22'),(4293,304,'5358.84'),(4294,305,'6707.54'),(4295,306,'7461.20'),(4296,307,'7183.38'),(4297,308,'3533.28'),(4298,309,'6116.27'),(4299,310,'9981.51'),(4300,311,'1558.73'),(4301,312,'7849.13'),(4302,313,'4569.44'),(4303,314,'9299.83'),(4304,315,'2790.82'),(4305,316,'6054.59'),(4306,317,'1900.52'),(4307,318,'1338.83'),(4308,319,'992.57'),(4309,320,'946.38'),(4310,321,'1754.17'),(4311,322,'5931.71'),(4312,323,'4396.05'),(4313,324,'4185.13'),(4314,325,'7737.51'),(4315,326,'6132.13'),(4316,327,'7448.12'),(4317,328,'8844.23'),(4318,329,'1876.80'),(4319,330,'2851.29'),(4320,331,'8626.05'),(4321,332,'4576.39'),(4322,333,'7003.78'),(4323,334,'1289.73'),(4324,335,'5437.31'),(4325,336,'3317.36'),(4326,337,'274.86'),(4327,338,'1422.23'),(4328,339,'6286.58'),(4329,340,'7166.19'),(4330,341,'6971.23'),(4331,342,'3357.58'),(4332,343,'5874.19'),(4333,344,'9298.21'),(4334,345,'8868.49'),(4335,346,'6447.82'),(4336,347,'5633.62'),(4337,348,'8824.64'),(4338,349,'7222.34'),(4339,350,'9637.79'),(4340,351,'6521.94'),(4341,352,'3696.34'),(4342,353,'8915.87'),(4343,354,'3490.34'),(4344,355,'704.07'),(4345,356,'3049.36'),(4346,357,'3134.56'),(4347,358,'6524.73'),(4348,359,'3219.97'),(4349,360,'6525.66'),(4350,361,'2968.41'),(4351,362,'5265.06'),(4352,363,'7420.07'),(4353,364,'1305.18'),(4354,365,'4265.68'),(4355,366,'7412.85'),(4356,367,'4267.20'),(4357,368,'9097.48'),(4358,369,'2685.79'),(4359,370,'6136.52'),(4360,371,'2625.22'),(4361,372,'4716.56'),(4362,373,'5707.11'),(4363,374,'4385.90'),(4364,375,'4808.16'),(4365,376,'883.08'),(4366,377,'9990.94'),(4367,378,'7305.46'),(4368,379,'6554.47'),(4369,380,'855.96'),(4370,381,'4616.40'),(4371,382,'514.13'),(4372,383,'8721.46'),(4373,384,'2064.92'),(4374,385,'4160.21'),(4375,386,'4606.27'),(4376,387,'550.73'),(4377,388,'8934.85'),(4378,389,'3022.04'),(4379,390,'8305.65'),(4380,391,'2462.12'),(4381,392,'7393.67'),(4382,393,'9581.97'),(4383,394,'5728.84'),(4384,395,'9898.31'),(4385,396,'2305.04'),(4386,397,'1830.26'),(4387,398,'2236.19'),(4388,399,'5690.16'),(4389,400,'1742.22'),(4390,401,'1640.63'),(4391,402,'2976.48'),(4392,403,'9960.52'),(4393,404,'873.16'),(4394,405,'4484.23'),(4395,406,'9801.68'),(4396,407,'5555.71'),(4397,408,'8373.51'),(4398,409,'5200.44'),(4399,410,'881.64'),(4400,411,'8806.90'),(4401,412,'1389.58'),(4402,413,'527.18'),(4403,414,'8467.19'),(4404,415,'754.40'),(4405,416,'8370.41'),(4406,417,'9588.88'),(4407,418,'2833.15'),(4408,419,'5399.11'),(4409,420,'8496.12'),(4410,421,'6283.25'),(4411,422,'5927.91'),(4412,423,'789.79'),(4413,424,'6165.23'),(4414,425,'8456.76'),(4415,426,'3788.13'),(4416,427,'3570.36'),(4417,428,'6487.41'),(4418,429,'1725.98'),(4419,430,'9167.64'),(4420,432,'660.30'),(4421,433,'5798.55'),(4422,434,'7011.85'),(4423,435,'7663.61'),(4424,436,'7282.49'),(4425,437,'3421.64'),(4426,438,'5260.71'),(4427,439,'6038.63'),(4428,440,'4411.02'),(4429,441,'3939.21'),(4430,442,'6463.01'),(4431,443,'497.40'),(4432,444,'3097.96'),(4433,445,'3997.62'),(4434,446,'694.22'),(4435,447,'1478.22'),(4436,448,'5308.45'),(4437,449,'2107.59'),(4438,450,'4612.58'),(4439,451,'6740.15'),(4440,452,'9862.99'),(4441,453,'9094.51'),(4442,454,'5883.60'),(4443,455,'2134.44'),(4444,456,'3021.42'),(4445,457,'8703.76'),(4446,458,'4454.57'),(4447,459,'6161.55'),(4448,460,'7444.03'),(4449,461,'8735.50'),(4450,462,'1345.42'),(4451,463,'520.58'),(4452,464,'8566.65'),(4453,465,'1271.51'),(4454,466,'657.58'),(4455,467,'9473.40'),(4456,468,'5394.27'),(4457,469,'8551.13'),(4458,470,'6572.82'),(4459,471,'7210.75'),(4460,472,'6335.26'),(4461,473,'44.08'),(4462,474,'1214.61'),(4463,475,'5940.81'),(4464,476,'6060.20'),(4465,477,'2478.59'),(4466,478,'4212.33'),(4467,479,'3625.89'),(4468,480,'5492.48'),(4469,481,'6584.71'),(4470,482,'6446.10'),(4471,483,'2476.40'),(4472,484,'3043.68'),(4473,485,'7789.19'),(4474,486,'9814.92'),(4475,487,'5707.03'),(4476,488,'9090.41'),(4477,489,'8330.93'),(4478,490,'4383.42'),(4479,491,'6924.33'),(4480,492,'1471.39'),(4481,493,'6583.94'),(4482,494,'8505.54'),(4483,495,'2775.90'),(4484,496,'8362.88'),(4485,497,'3486.68'),(4486,498,'2344.76'),(4487,499,'1263.79'),(4488,500,'9284.64'),(4489,501,'2631.83'),(4490,502,'5305.25'),(4491,503,'8630.76'),(4492,504,'7238.04'),(4493,505,'297.94'),(4494,506,'9775.59'),(4495,507,'7984.11'),(4496,508,'593.76'),(4497,509,'9016.50'),(4498,510,'3301.23'),(4499,511,'9456.62'),(4500,512,'7379.43'),(4501,513,'8527.30'),(4502,514,'498.20'),(4503,515,'6909.11'),(4504,516,'3050.94'),(4505,517,'4527.39'),(4506,518,'3484.10'),(4507,519,'3838.33'),(4508,520,'8739.36'),(4509,521,'2181.83'),(4510,522,'4691.06'),(4511,523,'6909.80'),(4512,524,'475.81'),(4513,525,'1649.65'),(4514,526,'6820.82'),(4515,527,'9155.17'),(4516,528,'5313.36'),(4517,529,'9101.30'),(4518,530,'9566.43'),(4519,531,'528.24'),(4520,532,'3941.91'),(4521,533,'8124.85'),(4522,534,'8798.49'),(4523,535,'9617.91'),(4524,536,'1694.07'),(4525,537,'9616.63'),(4526,539,'3000.95'),(4527,540,'6154.84'),(4528,541,'1771.36'),(4529,542,'392.26'),(4530,543,'6647.24'),(4531,544,'2059.43'),(4532,545,'355.42'),(4533,546,'5598.79'),(4534,547,'6927.72'),(4535,548,'7842.24'),(4536,549,'8428.01'),(4537,550,'8613.35'),(4538,551,'7782.70'),(4539,552,'3073.44'),(4540,553,'2019.13'),(4541,554,'875.32'),(4542,555,'8319.21'),(4543,556,'8970.11'),(4544,557,'9892.90'),(4545,558,'2554.18'),(4546,559,'3092.19'),(4547,560,'7798.43'),(4548,561,'9715.57'),(4549,562,'5182.56'),(4550,563,'6766.09'),(4551,564,'8282.78'),(4552,565,'1115.62'),(4553,566,'729.76'),(4554,567,'301.95'),(4555,568,'9320.47'),(4556,569,'5696.49'),(4557,570,'521.04'),(4558,571,'5515.75'),(4559,572,'6015.64'),(4560,573,'3530.93'),(4561,574,'9607.75'),(4562,575,'7445.94'),(4563,576,'8406.48'),(4564,577,'9694.55'),(4565,578,'3253.33'),(4566,579,'7182.98'),(4567,580,'6154.90'),(4568,581,'9225.58'),(4569,582,'7663.19'),(4570,583,'639.21'),(4571,584,'206.46'),(4572,585,'9114.70'),(4573,586,'4954.10'),(4574,587,'7426.39'),(4575,588,'2269.65'),(4576,589,'9069.08'),(4577,590,'8536.48'),(4578,591,'5475.14'),(4579,592,'1766.25'),(4580,593,'2405.83'),(4581,594,'6730.42'),(4582,595,'6434.59'),(4583,597,'1981.69'),(4584,598,'604.68'),(4585,599,'7078.31'),(4586,600,'3577.54'),(4587,601,'6652.77'),(4588,602,'2531.21'),(4589,603,'2697.73'),(4590,604,'5895.05'),(4591,605,'1382.03'),(4592,606,'9225.02'),(4593,607,'1978.99'),(4594,608,'2219.90'),(4595,609,'5162.53'),(4596,610,'9152.94'),(4597,611,'277.11'),(4598,612,'3926.74'),(4599,613,'8802.35'),(4600,614,'2231.53'),(4601,615,'4750.59'),(4602,616,'7058.37'),(4603,617,'1040.08'),(4604,618,'4025.29'),(4605,619,'7006.21'),(4606,620,'2955.20'),(4607,621,'3757.37'),(4608,622,'9921.23'),(4609,623,'8334.05'),(4610,624,'1906.55'),(4611,625,'4530.60'),(4612,626,'6933.34'),(4613,627,'1074.91'),(4614,628,'4574.54'),(4615,629,'9647.95'),(4616,630,'4516.15'),(4617,631,'3636.91'),(4618,632,'4636.09'),(4619,633,'2269.71'),(4620,634,'7440.30'),(4621,635,'392.37'),(4622,636,'9640.96'),(4623,637,'7027.67'),(4624,638,'6215.49'),(4625,639,'9994.43'),(4626,640,'1325.67'),(4627,641,'6645.07'),(4628,642,'9248.34'),(4629,643,'6306.50'),(4630,644,'3787.46'),(4631,645,'17.80'),(4632,646,'8726.61'),(4633,647,'3579.64'),(4634,648,'1718.41'),(4635,649,'7853.10'),(4636,650,'4110.26'),(4637,651,'6992.01'),(4638,652,'2629.27'),(4639,653,'2170.31'),(4640,654,'2963.73'),(4641,655,'8307.74'),(4642,656,'2647.51'),(4643,657,'8314.34'),(4644,658,'3629.15'),(4645,659,'3202.75'),(4646,660,'5126.30'),(4647,661,'6023.26'),(4648,662,'4737.41'),(4649,663,'5617.26'),(4650,664,'3874.05'),(4651,665,'2518.50'),(4652,666,'970.33'),(4653,667,'7296.16'),(4654,668,'3569.81'),(4655,669,'5960.56'),(4656,670,'9093.38'),(4657,671,'7585.22'),(4658,672,'645.96'),(4659,673,'474.16'),(4660,674,'432.91'),(4661,675,'742.05'),(4662,676,'2411.54'),(4663,677,'9831.55'),(4664,678,'1923.12'),(4665,679,'120.96'),(4666,680,'4835.42'),(4667,681,'3814.25'),(4668,682,'4564.97'),(4669,683,'1382.10'),(4670,684,'3215.59'),(4671,685,'1931.66'),(4672,686,'11.54'),(4673,687,'4262.73'),(4674,688,'1279.01'),(4675,689,'3606.85'),(4676,690,'4197.22'),(4677,691,'165.56'),(4678,692,'8236.12'),(4679,693,'683.95'),(4680,694,'8711.40'),(4681,695,'1505.13'),(4682,696,'1391.44'),(4683,697,'2441.81'),(4684,698,'8034.74'),(4685,699,'2848.25'),(4686,700,'137.04'),(4687,701,'2140.44'),(4688,702,'291.08'),(4689,703,'5034.07'),(4690,704,'4297.14'),(4691,705,'6383.46'),(4692,706,'9025.91'),(4693,707,'5979.17'),(4694,708,'2818.12'),(4695,709,'6153.09'),(4696,710,'2311.09'),(4697,711,'3096.17'),(4698,712,'8547.61'),(4699,713,'3449.51'),(4700,714,'1604.74'),(4701,715,'7675.15'),(4702,716,'3561.56'),(4703,717,'4782.33'),(4704,718,'3226.99'),(4705,719,'1787.94'),(4706,720,'9258.75'),(4707,721,'929.93'),(4708,722,'6873.38'),(4709,723,'1577.13'),(4710,724,'7265.52'),(4711,725,'1596.19'),(4712,726,'6184.41'),(4713,727,'6133.45'),(4714,728,'2114.04'),(4715,729,'2169.84'),(4716,730,'4507.10'),(4717,731,'6025.98'),(4718,732,'6608.60'),(4719,733,'4965.04'),(4720,734,'4999.43'),(4721,735,'102.02'),(4722,736,'5511.81'),(4723,737,'7252.98'),(4724,738,'9729.47'),(4725,739,'6888.40'),(4726,740,'5253.62'),(4727,741,'5602.88'),(4728,742,'2253.55'),(4729,743,'4459.10'),(4730,744,'5534.84'),(4731,745,'4296.89'),(4732,746,'4879.96'),(4733,747,'1509.13'),(4734,748,'2905.75'),(4735,749,'1.38'),(4736,750,'1289.62'),(4737,751,'6443.98'),(4738,752,'8351.06'),(4739,753,'2423.32'),(4740,754,'7063.46'),(4741,755,'8047.31'),(4742,756,'9046.16'),(4743,757,'1088.89'),(4744,758,'8305.95'),(4745,759,'8263.08'),(4746,760,'6397.54'),(4747,761,'7198.47'),(4748,762,'6799.74'),(4749,763,'2403.30'),(4750,764,'1617.28'),(4751,765,'876.48'),(4752,766,'9530.56'),(4753,767,'5023.36'),(4754,768,'6525.11'),(4755,769,'7555.48'),(4756,770,'8202.07'),(4757,771,'8343.91'),(4758,772,'7113.34'),(4759,773,'534.98'),(4760,774,'1334.86'),(4761,775,'5069.39'),(4762,776,'1342.35'),(4763,777,'1503.57'),(4764,778,'3490.79'),(4765,779,'2943.26'),(4766,780,'4243.94'),(4767,781,'2389.92'),(4768,782,'9217.77'),(4769,783,'8919.08'),(4770,784,'6942.08'),(4771,785,'7953.19'),(4772,786,'8939.70'),(4773,787,'838.95'),(4774,788,'7375.62'),(4775,789,'4361.27'),(4776,790,'9679.51'),(4777,791,'5313.70'),(4778,792,'7530.01'),(4779,793,'1708.92'),(4780,794,'5954.57'),(4781,795,'4646.12'),(4782,796,'5366.85'),(4783,797,'2895.92'),(4784,798,'8379.05'),(4785,799,'3207.50'),(4786,801,'900.36'),(4787,802,'4879.29'),(4788,803,'1695.36'),(4789,804,'3838.94'),(4790,805,'4108.62'),(4791,806,'9026.27'),(4792,807,'2805.49'),(4793,808,'6948.63'),(4794,809,'6326.71'),(4795,810,'787.65'),(4796,811,'4958.13'),(4797,812,'2427.67'),(4798,813,'7263.99'),(4799,814,'9036.92'),(4800,815,'3392.62'),(4801,816,'9852.36'),(4802,817,'9083.95'),(4803,818,'5862.68'),(4804,819,'2061.53'),(4805,820,'2719.61'),(4806,821,'7413.45'),(4807,822,'8908.43'),(4808,823,'2301.81'),(4809,824,'4783.73'),(4810,825,'7013.25'),(4811,826,'715.04'),(4812,827,'2535.44'),(4813,828,'532.10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `User_Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `Name` varchar(250) DEFAULT NULL COMMENT 'Фио',
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=829 DEFAULT CHARSET=utf8 COMMENT='Пользователи';

/*Data for the table `users` */

insert  into `users`(`User_Id`,`Name`) values (1,'Петр - CN'),(2,'Симеон - CN'),(3,'Константин - CN'),(4,'Алексей - CN'),(5,'Андрей - CN'),(6,'Василий - CN'),(7,'Мустафа - CN'),(8,'Эрик - CN'),(9,'Рональд - CN'),(10,'Адольф - CN'),(11,'Луций - CN'),(12,'Борис - CN'),(13,'Пафнутий - CN'),(14,'Тор - CN'),(15,'Моисей - CN'),(16,'Давид - CN'),(17,'Один - CN'),(18,'Мракос - CN'),(19,'Полиграф - CN'),(20,'Аид - CN'),(22,'Язи - CN'),(24,'Аарон - CN'),(28,'Абрам - CN'),(29,'Аваз - CN'),(30,'Аввакум - CN'),(31,'Август - CN'),(32,'Августа - CN'),(33,'Авдей - CN'),(34,'Авраам - CN'),(35,'Аврора - CN'),(36,'Автандил - CN'),(37,'Агап - CN'),(38,'Агата - CN'),(39,'Агафон - CN'),(40,'Агафья - CN'),(41,'Аггей - CN'),(42,'Аглая - CN'),(43,'Агнесса - CN'),(44,'Агния - CN'),(45,'Агриппина - CN'),(46,'Агунда - CN'),(47,'Ада - CN'),(48,'Адам - CN'),(49,'Аделина - CN'),(50,'Адель - CN'),(51,'Адиля - CN'),(52,'Адис - CN'),(54,'Адриан - CN'),(55,'Адриана - CN'),(56,'Аза - CN'),(57,'Азалия - CN'),(58,'Азарий - CN'),(59,'Азат - CN'),(60,'Азиза - CN'),(61,'Аида - CN'),(62,'Айгуль - CN'),(63,'Айжан - CN'),(64,'Айрат - CN'),(65,'Акакий - CN'),(66,'Аким - CN'),(67,'Аксинья - CN'),(68,'Акулина - CN'),(69,'Алан - CN'),(70,'Алана - CN'),(71,'Алевтина - CN'),(72,'Александр - CN'),(73,'Александра - CN'),(75,'Алена - CN'),(76,'Али - CN'),(77,'Алико - CN'),(78,'Алина - CN'),(79,'Алиса - CN'),(80,'Алихан - CN'),(81,'Алия - CN'),(82,'Алла - CN'),(83,'Алоиз - CN'),(84,'Алсу - CN'),(85,'Альберт - CN'),(86,'Альберта - CN'),(87,'Альбина - CN'),(88,'Альвина - CN'),(89,'Альжбета - CN'),(90,'Альфия - CN'),(91,'Альфред - CN'),(92,'Альфреда - CN'),(93,'Амадей - CN'),(94,'Амадеус - CN'),(95,'Амаль - CN'),(96,'Амаяк - CN'),(97,'Амвросий - CN'),(98,'Амелия - CN'),(99,'Амина - CN'),(100,'Анастасия - CN'),(101,'Анатолий - CN'),(102,'Анвар - CN'),(103,'Ангел - CN'),(104,'Ангелина - CN'),(105,'Андоим - CN'),(106,'Андре - CN'),(108,'Анеля - CN'),(109,'Анжела - CN'),(110,'Аникита - CN'),(111,'Анисья - CN'),(112,'Анита - CN'),(113,'Анна - CN'),(114,'Антон - CN'),(115,'Антонина - CN'),(116,'Ануфрий - CN'),(117,'Ануш - CN'),(118,'Анфиса - CN'),(119,'Аполлинарий - CN'),(120,'Аполлинария - CN'),(121,'Арам - CN'),(122,'Ариадна - CN'),(123,'Ариана - CN'),(124,'Арий - CN'),(125,'Арина - CN'),(126,'Аристарх - CN'),(127,'Аркадий - CN'),(128,'Арман - CN'),(129,'Армен - CN'),(130,'Арно - CN'),(131,'Арнольд - CN'),(132,'Арсений - CN'),(133,'Арслан - CN'),(134,'Артем - CN'),(135,'Артемий - CN'),(136,'Артур - CN'),(137,'Архелия - CN'),(138,'Архип - CN'),(139,'Асия - CN'),(140,'Аскольд - CN'),(141,'Ассоль - CN'),(142,'Астра - CN'),(143,'Астрид - CN'),(144,'Ася - CN'),(145,'Аурелия - CN'),(146,'Афанасий - CN'),(147,'Афанасия - CN'),(148,'Ахмет - CN'),(149,'Ашот - CN'),(150,'Аэлита - CN'),(151,'Беатриса - CN'),(152,'Бежен - CN'),(153,'Белла - CN'),(154,'Бенедикт - CN'),(155,'Бенедикта - CN'),(156,'Берек - CN'),(157,'Береслава - CN'),(158,'Бернар - CN'),(159,'Берта - CN'),(160,'Биргит - CN'),(161,'Бирута - CN'),(162,'Богдан - CN'),(163,'Богдана - CN'),(164,'Боголюб - CN'),(165,'Божена - CN'),(166,'Болеслав - CN'),(167,'Бонифаций - CN'),(169,'Борислав - CN'),(170,'Борислава - CN'),(171,'Боян - CN'),(172,'Бронислав - CN'),(173,'Бронислава - CN'),(174,'Бруно - CN'),(175,'Булат - CN'),(176,'Вадим - CN'),(177,'Валентин - CN'),(178,'Валентина - CN'),(179,'Валерий - CN'),(180,'Валерия - CN'),(181,'Вальтер - CN'),(182,'Ванда - CN'),(183,'Варвара - CN'),(184,'Вардан - CN'),(185,'Варлаам - CN'),(186,'Варфоломей - CN'),(188,'Василина - CN'),(189,'Василиса - CN'),(190,'Вацлав - CN'),(191,'Велизар - CN'),(192,'Велор - CN'),(193,'Венедикт - CN'),(194,'Венера - CN'),(195,'Вениамин - CN'),(196,'Вера - CN'),(197,'Вероника - CN'),(198,'Веселина - CN'),(199,'Весна - CN'),(200,'Веста - CN'),(201,'Вета - CN'),(202,'Вида - CN'),(203,'Викентий - CN'),(204,'Виктор - CN'),(205,'Виктория - CN'),(206,'Вилен - CN'),(207,'Вилли - CN'),(208,'Вилора - CN'),(209,'Вильгельм - CN'),(210,'Виолетта - CN'),(211,'Виргиния - CN'),(212,'Виринея - CN'),(213,'Виссарион - CN'),(214,'Виталий - CN'),(215,'Виталия - CN'),(216,'Витаутас - CN'),(217,'Витольд - CN'),(218,'Владимир - CN'),(219,'Владислав - CN'),(220,'Владислава - CN'),(221,'Владлен - CN'),(222,'Владлена - CN'),(223,'Влас - CN'),(224,'Володар - CN'),(225,'Вольдемар - CN'),(226,'Всеволод - CN'),(227,'Вячеслав - CN'),(228,'Габриэлла - CN'),(229,'Гавриил - CN'),(230,'Галактион - CN'),(231,'Галина - CN'),(232,'Гарри - CN'),(233,'Гастон - CN'),(234,'Гаянэ - CN'),(235,'Гаяс - CN'),(236,'Гевор - CN'),(237,'Геворг - CN'),(238,'Гелена - CN'),(239,'Гелла - CN'),(240,'Геннадий - CN'),(241,'Генриетта - CN'),(242,'Генрих - CN'),(243,'Георгий - CN'),(244,'Георгина - CN'),(245,'Гера - CN'),(246,'Геральд - CN'),(247,'Герасим - CN'),(248,'Герман - CN'),(249,'Гертруда - CN'),(250,'Глафира - CN'),(251,'Глеб - CN'),(252,'Глория - CN'),(253,'Гордей - CN'),(254,'Гордон - CN'),(255,'Горислав - CN'),(256,'Гортензия - CN'),(257,'Градимир - CN'),(258,'Гражина - CN'),(259,'Грета - CN'),(260,'Григорий - CN'),(261,'Гузель - CN'),(262,'Гулия - CN'),(263,'Гульмира - CN'),(264,'Гульназ - CN'),(265,'Гульнара - CN'),(266,'Гурий - CN'),(267,'Густав - CN'),(269,'Дайна - CN'),(270,'Далия - CN'),(271,'Дамир - CN'),(272,'Дамира - CN'),(273,'Дана - CN'),(274,'Даниил - CN'),(275,'Даниэла - CN'),(276,'Данияр - CN'),(277,'Данута - CN'),(278,'Дарина - CN'),(279,'Дарья - CN'),(280,'Дебора - CN'),(281,'Демид - CN'),(282,'Демьян - CN'),(283,'Денис - CN'),(284,'Джамал - CN'),(285,'Джамиля - CN'),(286,'Джемма - CN'),(287,'Джереми - CN'),(288,'Джордан - CN'),(289,'Джулия - CN'),(290,'Джульетта - CN'),(291,'Диана - CN'),(292,'Дилара - CN'),(293,'Диля - CN'),(294,'Дина - CN'),(295,'Динара - CN'),(296,'Динасий - CN'),(297,'Диодора - CN'),(298,'Дионисия - CN'),(299,'Дмитрий - CN'),(300,'Добрыня - CN'),(301,'Доля - CN'),(302,'Доминика - CN'),(303,'Дональд - CN'),(304,'Донат - CN'),(305,'Донатос - CN'),(306,'Дора - CN'),(307,'Дорофей - CN'),(308,'Ева - CN'),(309,'Евангелина - CN'),(310,'Евгений - CN'),(311,'Евгения - CN'),(312,'Евграф - CN'),(313,'Евдоким - CN'),(314,'Евдокия - CN'),(315,'Евсей - CN'),(316,'Евстафий - CN'),(317,'Егор - CN'),(318,'Екатерина - CN'),(319,'Елена - CN'),(320,'Елизавета - CN'),(321,'Елизар - CN'),(322,'Елисей - CN'),(323,'Емельян - CN'),(324,'Еремей - CN'),(325,'Ермолай - CN'),(326,'Ерофей - CN'),(327,'Есения - CN'),(328,'Ефим - CN'),(329,'Ефимий - CN'),(330,'Ефимия - CN'),(331,'Ефрем - CN'),(332,'Жан - CN'),(333,'Жанна - CN'),(334,'Жасмин - CN'),(335,'Ждан - CN'),(336,'Жозефина - CN'),(337,'Жорж - CN'),(338,'Забава - CN'),(339,'Заира - CN'),(340,'Замира - CN'),(341,'Зара - CN'),(342,'Зарема - CN'),(343,'Зарина - CN'),(344,'Заур - CN'),(345,'Захар - CN'),(346,'Захария - CN'),(347,'Земфира - CN'),(348,'Зигмунд - CN'),(349,'Зинаида - CN'),(350,'Зиновий - CN'),(351,'Зита - CN'),(352,'Злата - CN'),(353,'Зоя - CN'),(354,'Зульфия - CN'),(355,'Зухра - CN'),(356,'Ибрагим - CN'),(357,'Иван - CN'),(358,'Иванна - CN'),(359,'Иветта - CN'),(360,'Ивона - CN'),(361,'Игнат - CN'),(362,'Игорь - CN'),(363,'Ида - CN'),(364,'Иероним - CN'),(365,'Изабелла - CN'),(366,'Измаил - CN'),(367,'Изольда - CN'),(368,'Израиль - CN'),(369,'Изяслав - CN'),(370,'Илария - CN'),(371,'Илзе - CN'),(372,'Илиан - CN'),(373,'Илиана - CN'),(374,'Илларион - CN'),(375,'Илона - CN'),(376,'Ильхам - CN'),(377,'Илья - CN'),(378,'Ильяс - CN'),(379,'Инара - CN'),(380,'Инга - CN'),(381,'Инесса - CN'),(382,'Инна - CN'),(383,'Иннокентий - CN'),(384,'Иоанна - CN'),(385,'Иоланта - CN'),(386,'Ион - CN'),(387,'Ионос - CN'),(388,'Иосиф - CN'),(389,'Ипполит - CN'),(390,'Ираида - CN'),(391,'Ираклий - CN'),(392,'Ирена - CN'),(393,'Иржи - CN'),(394,'Ирина - CN'),(395,'Ирма - CN'),(396,'Исаак - CN'),(397,'Исай - CN'),(398,'Исидор - CN'),(399,'Исидора - CN'),(400,'Искандер - CN'),(401,'Июлия - CN'),(402,'Ия - CN'),(403,'Казимир - CN'),(404,'Калерия - CN'),(405,'Камилла - CN'),(406,'Камиль - CN'),(407,'Капитолина - CN'),(408,'Карен - CN'),(409,'Карим - CN'),(410,'Карима - CN'),(411,'Карина - CN'),(412,'Карл - CN'),(413,'Каролина - CN'),(414,'Катарина - CN'),(415,'Ким - CN'),(416,'Кира - CN'),(417,'Кирилл - CN'),(418,'Кирилла - CN'),(419,'Клавдий - CN'),(420,'Клавдия - CN'),(421,'Клара - CN'),(422,'Кларисса - CN'),(423,'Клаус - CN'),(424,'Клемент - CN'),(425,'Клим - CN'),(426,'Климентина - CN'),(427,'Клод - CN'),(428,'Кондрат - CN'),(429,'Конкордий - CN'),(430,'Конрад - CN'),(432,'Констанция - CN'),(433,'Кора - CN'),(434,'Корней - CN'),(435,'Корнилий - CN'),(436,'Кристина - CN'),(437,'Ксанф - CN'),(438,'Ксения - CN'),(439,'Кузьма - CN'),(440,'Лаврентий - CN'),(441,'Лада - CN'),(442,'Лазарь - CN'),(443,'Лайма - CN'),(444,'Лана - CN'),(445,'Лариса - CN'),(446,'Лаура - CN'),(447,'Лев - CN'),(448,'Леван - CN'),(449,'Левон - CN'),(450,'Лейла - CN'),(451,'Лейсан - CN'),(452,'Ленар - CN'),(453,'Леокадия - CN'),(454,'Леон - CN'),(455,'Леонард - CN'),(456,'Леонид - CN'),(457,'Леонида - CN'),(458,'Леонтий - CN'),(459,'Леопольд - CN'),(460,'Леся - CN'),(461,'Лиана - CN'),(462,'Лидия - CN'),(463,'Лилиана - CN'),(464,'Лилия - CN'),(465,'Лина - CN'),(466,'Линда - CN'),(467,'Лия - CN'),(468,'Лола - CN'),(469,'Лолита - CN'),(470,'Луиза - CN'),(471,'Лука - CN'),(472,'Лукерья - CN'),(473,'Лукьян - CN'),(474,'Любим - CN'),(475,'Любовь - CN'),(476,'Любомила - CN'),(477,'Любомир - CN'),(478,'Людвиг - CN'),(479,'Людмила - CN'),(480,'Люсьен - CN'),(481,'Люция - CN'),(482,'Магда - CN'),(483,'Магдалина - CN'),(484,'Мадина - CN'),(485,'Мадлен - CN'),(486,'Май - CN'),(487,'Майя - CN'),(488,'Макар - CN'),(489,'Максим - CN'),(490,'Максимилиан - CN'),(491,'Максуд - CN'),(492,'Малика - CN'),(493,'Мальвина - CN'),(494,'Мансур - CN'),(495,'Мануил - CN'),(496,'Марат - CN'),(497,'Маргарита - CN'),(498,'Мариан - CN'),(499,'Марианна - CN'),(500,'Марика - CN'),(501,'Марина - CN'),(502,'Мария - CN'),(503,'Марк - CN'),(504,'Марселина - CN'),(505,'Марсель - CN'),(506,'Марта - CN'),(507,'Мартин - CN'),(508,'Марфа - CN'),(509,'Марьям - CN'),(510,'Матвей - CN'),(511,'Матильда - CN'),(512,'Махмуд - CN'),(513,'Мелания - CN'),(514,'Мелисса - CN'),(515,'Мераб - CN'),(516,'Мефодий - CN'),(517,'Мечеслав - CN'),(518,'Мила - CN'),(519,'Милада - CN'),(520,'Милан - CN'),(521,'Милана - CN'),(522,'Милена - CN'),(523,'Милица - CN'),(524,'Милолика - CN'),(525,'Милослава - CN'),(526,'Мира - CN'),(527,'Мирдза - CN'),(528,'Мирон - CN'),(529,'Мирослав - CN'),(530,'Мирослава - CN'),(531,'Мирра - CN'),(532,'Митрофан - CN'),(533,'Михаил - CN'),(534,'Михайлина - CN'),(535,'Михаэла - CN'),(536,'Мичлов - CN'),(537,'Модест - CN'),(539,'Моника - CN'),(540,'Мстислав - CN'),(541,'Муза - CN'),(542,'Мурат - CN'),(543,'Муслим - CN'),(544,'Надежда - CN'),(545,'Назар - CN'),(546,'Назарий - CN'),(547,'Назира - CN'),(548,'Наиль - CN'),(549,'Наиля - CN'),(550,'Нана - CN'),(551,'Наталья - CN'),(552,'Натан - CN'),(553,'Нателла - CN'),(554,'Наум - CN'),(555,'Нелли - CN'),(556,'Неонила - CN'),(557,'Нестор - CN'),(558,'Ника - CN'),(559,'Никанор - CN'),(560,'Никита - CN'),(561,'Никифор - CN'),(562,'Никодим - CN'),(563,'Николай - CN'),(564,'Николь - CN'),(565,'Никон - CN'),(566,'Нильс - CN'),(567,'Нина - CN'),(568,'Нинель - CN'),(569,'Нисон - CN'),(570,'Нифонт - CN'),(571,'Нонна - CN'),(572,'Нора - CN'),(573,'Норманн - CN'),(574,'Овидий - CN'),(575,'Одетта - CN'),(576,'Оксана - CN'),(577,'Олан - CN'),(578,'Олег - CN'),(579,'Олесь - CN'),(580,'Олеся - CN'),(581,'Оливия - CN'),(582,'Ольга - CN'),(583,'Онисим - CN'),(584,'Орест - CN'),(585,'Осип - CN'),(586,'Оскар - CN'),(587,'Остап - CN'),(588,'Офелия - CN'),(589,'Павел - CN'),(590,'Павла - CN'),(591,'Памела - CN'),(592,'Панкрат - CN'),(593,'Парамон - CN'),(594,'Патриция - CN'),(595,'Пелагея - CN'),(597,'Пимен - CN'),(598,'Платон - CN'),(599,'Полина - CN'),(600,'Порфирий - CN'),(601,'Потап - CN'),(602,'Прасковья - CN'),(603,'Прокофий - CN'),(604,'Прохор - CN'),(605,'Равиль - CN'),(606,'Рада - CN'),(607,'Радий - CN'),(608,'Радмила - CN'),(609,'Радосвета - CN'),(610,'Раис - CN'),(611,'Раиса - CN'),(612,'Раймонд - CN'),(613,'Рамиз - CN'),(614,'Рамиль - CN'),(615,'Расим - CN'),(616,'Ратибор - CN'),(617,'Ратмир - CN'),(618,'Рафаил - CN'),(619,'Рафик - CN'),(620,'Рашид - CN'),(621,'Ревекка - CN'),(622,'Регина - CN'),(623,'Рем - CN'),(624,'Рема - CN'),(625,'Рената - CN'),(626,'Ренольд - CN'),(627,'Римма - CN'),(628,'Ринат - CN'),(629,'Рифат - CN'),(630,'Рихард - CN'),(631,'Ричард - CN'),(632,'Роберт - CN'),(633,'Роберта - CN'),(634,'Родион - CN'),(635,'Роза - CN'),(636,'Роксана - CN'),(637,'Ролан - CN'),(638,'Роман - CN'),(639,'Ростислав - CN'),(640,'Ростислава - CN'),(641,'Рубен - CN'),(642,'Рудольф - CN'),(643,'Рузанна - CN'),(644,'Рузиля - CN'),(645,'Румия - CN'),(646,'Руслан - CN'),(647,'Руслана - CN'),(648,'Рустам - CN'),(649,'Руфина - CN'),(650,'Рушан - CN'),(651,'Сабина - CN'),(652,'Сабир - CN'),(653,'Сабрина - CN'),(654,'Савва - CN'),(655,'Савелий - CN'),(656,'Саида - CN'),(657,'Саломея - CN'),(658,'Самсон - CN'),(659,'Самуил - CN'),(660,'Сандра - CN'),(661,'Сания - CN'),(662,'Санта - CN'),(663,'Сарра - CN'),(664,'Светлана - CN'),(665,'Святослав - CN'),(666,'Севастьян - CN'),(667,'Северин - CN'),(668,'Северина - CN'),(669,'Селена - CN'),(670,'Семен - CN'),(671,'Серафим - CN'),(672,'Серафима - CN'),(673,'Сергей - CN'),(674,'Сильва - CN'),(675,'Сима - CN'),(676,'Симона - CN'),(677,'Снежана - CN'),(678,'Созия - CN'),(679,'Сократ - CN'),(680,'Соломон - CN'),(681,'Софья - CN'),(682,'Спартак - CN'),(683,'Стакрат - CN'),(684,'Станимир - CN'),(685,'Станислав - CN'),(686,'Станислава - CN'),(687,'Стелла - CN'),(688,'Степан - CN'),(689,'Стефания - CN'),(690,'Стивен - CN'),(691,'Стоян - CN'),(692,'Султан - CN'),(693,'Сусанна - CN'),(694,'Таира - CN'),(695,'Таис - CN'),(696,'Таисия - CN'),(697,'Тала - CN'),(698,'Талик - CN'),(699,'Тамаз - CN'),(700,'Тамара - CN'),(701,'Тарас - CN'),(702,'Татьяна - CN'),(703,'Тельман - CN'),(704,'Теодор - CN'),(705,'Теодора - CN'),(706,'Тереза - CN'),(707,'Терентий - CN'),(708,'Тибор - CN'),(709,'Тигран - CN'),(710,'Тигрий - CN'),(711,'Тимофей - CN'),(712,'Тимур - CN'),(713,'Тина - CN'),(714,'Тит - CN'),(715,'Тихон - CN'),(716,'Томас - CN'),(717,'Томила - CN'),(718,'Трифон - CN'),(719,'Трофим - CN'),(720,'Ульманас - CN'),(721,'Ульяна - CN'),(722,'Урсула - CN'),(723,'Устин - CN'),(724,'Устина - CN'),(725,'Фаддей - CN'),(726,'Фаиза - CN'),(727,'Фаина - CN'),(728,'Фанис - CN'),(729,'Фания - CN'),(730,'Фаня - CN'),(731,'Фарид - CN'),(732,'Фарида - CN'),(733,'Фархад - CN'),(734,'Фатима - CN'),(735,'Фая - CN'),(736,'Федор - CN'),(737,'Федот - CN'),(738,'Фекла - CN'),(739,'Феликс - CN'),(740,'Фелиция - CN'),(741,'Феодосий - CN'),(742,'Фердинанд - CN'),(743,'Феруза - CN'),(744,'Фидель - CN'),(745,'Филимон - CN'),(746,'Филипп - CN'),(747,'Флора - CN'),(748,'Флорентий - CN'),(749,'Фома - CN'),(750,'Франсуаза - CN'),(751,'Франц - CN'),(752,'Фредерика - CN'),(753,'Фрида - CN'),(754,'Фридрих - CN'),(755,'Фуад - CN'),(756,'Харита - CN'),(757,'Харитон - CN'),(758,'Хильда - CN'),(759,'Христиан - CN'),(760,'Христина - CN'),(761,'Христос - CN'),(762,'Христофор - CN'),(763,'Христя - CN'),(764,'Цветана - CN'),(765,'Цезарь - CN'),(766,'Цецилия - CN'),(767,'Чеслав - CN'),(768,'Чеслава - CN'),(769,'Чингиз - CN'),(770,'Чулпан - CN'),(771,'Шакира - CN'),(772,'Шамиль - CN'),(773,'Шарлотта - CN'),(774,'Шерлок - CN'),(775,'Эвелина - CN'),(776,'Эдвард - CN'),(777,'Эдгар - CN'),(778,'Эдда - CN'),(779,'Эдита - CN'),(780,'Эдмунд - CN'),(781,'Эдуард - CN'),(782,'Элеонора - CN'),(783,'Элиза - CN'),(784,'Элина - CN'),(785,'Элла - CN'),(786,'Эллада - CN'),(787,'Элоиза - CN'),(788,'Эльвира - CN'),(789,'Эльга - CN'),(790,'Эльдар - CN'),(791,'Эльза - CN'),(792,'Эльмира - CN'),(793,'Эля - CN'),(794,'Эмилия - CN'),(795,'Эмиль - CN'),(796,'Эмин - CN'),(797,'Эмма - CN'),(798,'Эммануил - CN'),(799,'Эраст - CN'),(801,'Эрика - CN'),(802,'Эрнест - CN'),(803,'Эрнестина - CN'),(804,'Эсмеральда - CN'),(805,'Этери - CN'),(806,'Юзефа - CN'),(807,'Юлиан - CN'),(808,'Юлий - CN'),(809,'Юлия - CN'),(810,'Юна - CN'),(811,'Юния - CN'),(812,'Юнона - CN'),(813,'Юрий - CN'),(814,'Юханна - CN'),(815,'Юхим - CN'),(816,'Ядвига - CN'),(817,'Яким - CN'),(818,'Яков - CN'),(819,'Ян - CN'),(820,'Яна - CN'),(821,'Янита - CN'),(822,'Янка - CN'),(823,'Януарий - CN'),(824,'Ярина - CN'),(825,'Яромир - CN'),(826,'Ярослав - CN'),(827,'Ярослава - CN'),(828,'Ясон - CN');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
