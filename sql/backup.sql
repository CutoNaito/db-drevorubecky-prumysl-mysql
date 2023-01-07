-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: drevorubecky_prumysl
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `drevorubecky_prumysl`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `drevorubecky_prumysl` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `drevorubecky_prumysl`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Clothing'),(3,'Electronics'),(4,'Home & Garden'),(1,'Zidle');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_country` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cities_id_country` (`id_country`),
  KEY `idx_cities_name` (`name`),
  CONSTRAINT `id_country_const` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (11,511,'Prague',12000),(12,512,'Brno',61500),(13,513,'Bratislava',81101),(14,514,'Kosice',4011),(15,515,'Budapest',1054),(16,516,'Debrecen',4032),(17,517,'Warsaw',-1),(18,518,'Krakow',-124),(19,518,'Berlin',10115),(20,518,'Munich',80331);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `hex` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_colors_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1889 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1024,'Air Force Blue (Raf)','5d8aa8'),(1025,'Air Force Blue (Usaf)','00308f'),(1026,'Air Superiority Blue','72a0c1'),(1027,'Alabama Crimson','a32638'),(1028,'Alice Blue','f0f8ff'),(1029,'Alizarin Crimson','e32636'),(1030,'Alloy Orange','c46210'),(1031,'Almond','efdecd'),(1032,'Amaranth','e52b50'),(1033,'Amber','ffbf00'),(1034,'Amber (Sae/Ece)','ff7e00'),(1035,'American Rose','ff033e'),(1036,'Amethyst','96c\r'),(1037,'Android Green','a4c639'),(1038,'Anti-Flash White','f2f3f4'),(1039,'Antique Brass','cd9575'),(1040,'Antique Fuchsia','915c83'),(1041,'Antique Ruby','841b2d'),(1042,'Antique White','faebd7'),(1043,'Ao (English)','008000'),(1044,'Apple Green','8db600'),(1045,'Apricot','fbceb1'),(1046,'Aqua','0ff\r'),(1047,'Aquamarine','7fffd4'),(1048,'Army Green','4b5320'),(1049,'Arsenic','3b444b'),(1050,'Arylide Yellow','e9d66b'),(1051,'Ash Grey','b2beb5'),(1052,'Asparagus','87a96b'),(1053,'Atomic Tangerine','f96\r'),(1054,'Auburn','a52a2a'),(1055,'Aureolin','fdee00'),(1056,'Aurometalsaurus','6e7f80'),(1057,'Avocado','568203'),(1058,'Azure','007fff'),(1059,'Azure Mist/Web','f0ffff'),(1060,'Baby Blue','89cff0'),(1061,'Baby Blue Eyes','a1caf1'),(1062,'Baby Pink','f4c2c2'),(1063,'Ball Blue','21abcd'),(1064,'Banana Mania','fae7b5'),(1065,'Banana Yellow','ffe135'),(1066,'Barn Red','7c0a02'),(1067,'Battleship Grey','848482'),(1068,'Bazaar','98777b'),(1069,'Beau Blue','bcd4e6'),(1070,'Beaver','9f8170'),(1071,'Beige','f5f5dc'),(1072,'Big Dip O’Ruby','9c2542'),(1073,'Bisque','ffe4c4'),(1074,'Bistre','3d2b1f'),(1075,'Bittersweet','fe6f5e'),(1076,'Bittersweet Shimmer','bf4f51'),(1077,'Black','000\r'),(1078,'Black Bean','3d0c02'),(1079,'Black Leather Jacket','253529'),(1080,'Black Olive','3b3c36'),(1081,'Blanched Almond','ffebcd'),(1082,'Blast-Off Bronze','a57164'),(1083,'Bleu De France','318ce7'),(1084,'Blizzard Blue','ace5ee'),(1085,'Blond','faf0be'),(1086,'Blue','00f\r'),(1087,'Blue Bell','a2a2d0'),(1088,'Blue (Crayola)','1f75fe'),(1089,'Blue Gray','69c\r'),(1090,'Blue-Green','0d98ba'),(1091,'Blue (Munsell)','0093af'),(1092,'Blue (Ncs)','0087bd'),(1093,'Blue (Pigment)','339\r'),(1094,'Blue (Ryb)','0247fe'),(1095,'Blue Sapphire','126180'),(1096,'Blue-Violet','8a2be2'),(1097,'Blush','de5d83'),(1098,'Bole','79443b'),(1099,'Bondi Blue','0095b6'),(1100,'Bone','e3dac9'),(1101,'Boston University Red','c00\r'),(1102,'Bottle Green','006a4e'),(1103,'Boysenberry','873260'),(1104,'Brandeis Blue','0070ff'),(1105,'Brass','b5a642'),(1106,'Brick Red','cb4154'),(1107,'Bright Cerulean','1dacd6'),(1108,'Bright Green','6f0\r'),(1109,'Bright Lavender','bf94e4'),(1110,'Bright Maroon','c32148'),(1111,'Bright Pink','ff007f'),(1112,'Bright Turquoise','08e8de'),(1113,'Bright Ube','d19fe8'),(1114,'Brilliant Lavender','f4bbff'),(1115,'Brilliant Rose','ff55a3'),(1116,'Brink Pink','fb607f'),(1117,'British Racing Green','004225'),(1118,'Bronze','cd7f32'),(1119,'Brown (Traditional)','964b00'),(1120,'Brown (Web)','a52a2a'),(1121,'Bubble Gum','ffc1cc'),(1122,'Bubbles','e7feff'),(1123,'Buff','f0dc82'),(1124,'Bulgarian Rose','480607'),(1125,'Burgundy','800020'),(1126,'Burlywood','deb887'),(1127,'Burnt Orange','c50\r'),(1128,'Burnt Sienna','e97451'),(1129,'Burnt Umber','8a3324'),(1130,'Byzantine','bd33a4'),(1131,'Byzantium','702963'),(1132,'Cadet','536872'),(1133,'Cadet Blue','5f9ea0'),(1134,'Cadet Grey','91a3b0'),(1135,'Cadmium Green','006b3c'),(1136,'Cadmium Orange','ed872d'),(1137,'Cadmium Red','e30022'),(1138,'Cadmium Yellow','fff600'),(1139,'Café Au Lait','a67b5b'),(1140,'Café Noir','4b3621'),(1141,'Cal Poly Green','1e4d2b'),(1142,'Cambridge Blue','a3c1ad'),(1143,'Camel','c19a6b'),(1144,'Cameo Pink','efbbcc'),(1145,'Camouflage Green','78866b'),(1146,'Canary Yellow','ffef00'),(1147,'Candy Apple Red','ff0800'),(1148,'Candy Pink','e4717a'),(1149,'Capri','00bfff'),(1150,'Caput Mortuum','592720'),(1151,'Cardinal','c41e3a'),(1152,'Caribbean Green','0c9\r'),(1153,'Carmine','960018'),(1154,'Carmine (M&P)','d70040'),(1155,'Carmine Pink','eb4c42'),(1156,'Carmine Red','ff0038'),(1157,'Carnation Pink','ffa6c9'),(1158,'Carnelian','b31b1b'),(1159,'Carolina Blue','99badd'),(1160,'Carrot Orange','ed9121'),(1161,'Catalina Blue','062a78'),(1162,'Ceil','92a1cf'),(1163,'Celadon','ace1af'),(1164,'Celadon Blue','007ba7'),(1165,'Celadon Green','2f847c'),(1166,'Celeste (Colour)','b2ffff'),(1167,'Celestial Blue','4997d0'),(1168,'Cerise','de3163'),(1169,'Cerise Pink','ec3b83'),(1170,'Cerulean','007ba7'),(1171,'Cerulean Blue','2a52be'),(1172,'Cerulean Frost','6d9bc3'),(1173,'Cg Blue','007aa5'),(1174,'Cg Red','e03c31'),(1175,'Chamoisee','a0785a'),(1176,'Champagne','fad6a5'),(1177,'Charcoal','36454f'),(1178,'Charm Pink','e68fac'),(1179,'Chartreuse (Traditional)','dfff00'),(1180,'Chartreuse (Web)','7fff00'),(1181,'Cherry','de3163'),(1182,'Cherry Blossom Pink','ffb7c5'),(1183,'Chestnut','cd5c5c'),(1184,'China Pink','de6fa1'),(1185,'China Rose','a8516e'),(1186,'Chinese Red','aa381e'),(1187,'Chocolate (Traditional)','7b3f00'),(1188,'Chocolate (Web)','d2691e'),(1189,'Chrome Yellow','ffa700'),(1190,'Cinereous','98817b'),(1191,'Cinnabar','e34234'),(1192,'Cinnamon','d2691e'),(1193,'Citrine','e4d00a'),(1194,'Classic Rose','fbcce7'),(1195,'Cobalt','0047ab'),(1196,'Cocoa Brown','d2691e'),(1197,'Coffee','6f4e37'),(1198,'Columbia Blue','9bddff'),(1199,'Congo Pink','f88379'),(1200,'Cool Black','002e63'),(1201,'Cool Grey','8c92ac'),(1202,'Copper','b87333'),(1203,'Copper (Crayola)','da8a67'),(1204,'Copper Penny','ad6f69'),(1205,'Copper Red','cb6d51'),(1206,'Copper Rose','966\r'),(1207,'Coquelicot','ff3800'),(1208,'Coral','ff7f50'),(1209,'Coral Pink','f88379'),(1210,'Coral Red','ff4040'),(1211,'Cordovan','893f45'),(1212,'Corn','fbec5d'),(1213,'Cornell Red','b31b1b'),(1214,'Cornflower Blue','6495ed'),(1215,'Cornsilk','fff8dc'),(1216,'Cosmic Latte','fff8e7'),(1217,'Cotton Candy','ffbcd9'),(1218,'Cream','fffdd0'),(1219,'Crimson','dc143c'),(1220,'Crimson Glory','be0032'),(1221,'Cyan','0ff\r'),(1222,'Cyan (Process)','00b7eb'),(1223,'Daffodil','ffff31'),(1224,'Dandelion','f0e130'),(1225,'Dark Blue','00008b'),(1226,'Dark Brown','654321'),(1227,'Dark Byzantium','5d3954'),(1228,'Dark Candy Apple Red','a40000'),(1229,'Dark Cerulean','08457e'),(1230,'Dark Chestnut','986960'),(1231,'Dark Coral','cd5b45'),(1232,'Dark Cyan','008b8b'),(1233,'Dark Electric Blue','536878'),(1234,'Dark Goldenrod','b8860b'),(1235,'Dark Gray','a9a9a9'),(1236,'Dark Green','013220'),(1237,'Dark Imperial Blue','00416a'),(1238,'Dark Jungle Green','1a2421'),(1239,'Dark Khaki','bdb76b'),(1240,'Dark Lava','483c32'),(1241,'Dark Lavender','734f96'),(1242,'Dark Magenta','8b008b'),(1243,'Dark Midnight Blue','036\r'),(1244,'Dark Olive Green','556b2f'),(1245,'Dark Orange','ff8c00'),(1246,'Dark Orchid','9932cc'),(1247,'Dark Pastel Blue','779ecb'),(1248,'Dark Pastel Green','03c03c'),(1249,'Dark Pastel Purple','966fd6'),(1250,'Dark Pastel Red','c23b22'),(1251,'Dark Pink','e75480'),(1252,'Dark Powder Blue','039\r'),(1253,'Dark Raspberry','872657'),(1254,'Dark Red','8b0000'),(1255,'Dark Salmon','e9967a'),(1256,'Dark Scarlet','560319'),(1257,'Dark Sea Green','8fbc8f'),(1258,'Dark Sienna','3c1414'),(1259,'Dark Slate Blue','483d8b'),(1260,'Dark Slate Gray','2f4f4f'),(1261,'Dark Spring Green','177245'),(1262,'Dark Tan','918151'),(1263,'Dark Tangerine','ffa812'),(1264,'Dark Taupe','483c32'),(1265,'Dark Terra Cotta','cc4e5c'),(1266,'Dark Turquoise','00ced1'),(1267,'Dark Violet','9400d3'),(1268,'Dark Yellow','9b870c'),(1269,'Dartmouth Green','00703c'),(1270,'Davy\'S Grey','555\r'),(1271,'Debian Red','d70a53'),(1272,'Deep Carmine','a9203e'),(1273,'Deep Carmine Pink','ef3038'),(1274,'Deep Carrot Orange','e9692c'),(1275,'Deep Cerise','da3287'),(1276,'Deep Champagne','fad6a5'),(1277,'Deep Chestnut','b94e48'),(1278,'Deep Coffee','704241'),(1279,'Deep Fuchsia','c154c1'),(1280,'Deep Jungle Green','004b49'),(1281,'Deep Lilac','95b\r'),(1282,'Deep Magenta','c0c\r'),(1283,'Deep Peach','ffcba4'),(1284,'Deep Pink','ff1493'),(1285,'Deep Ruby','843f5b'),(1286,'Deep Saffron','f93\r'),(1287,'Deep Sky Blue','00bfff'),(1288,'Deep Tuscan Red','66424d'),(1289,'Denim','1560bd'),(1290,'Desert','c19a6b'),(1291,'Desert Sand','edc9af'),(1292,'Dim Gray','696969'),(1293,'Dodger Blue','1e90ff'),(1294,'Dogwood Rose','d71868'),(1295,'Dollar Bill','85bb65'),(1296,'Drab','967117'),(1297,'Duke Blue','00009c'),(1298,'Earth Yellow','e1a95f'),(1299,'Ebony','555d50'),(1300,'Ecru','c2b280'),(1301,'Eggplant','614051'),(1302,'Eggshell','f0ead6'),(1303,'Egyptian Blue','1034a6'),(1304,'Electric Blue','7df9ff'),(1305,'Electric Crimson','ff003f'),(1306,'Electric Cyan','0ff\r'),(1307,'Electric Green','0f0\r'),(1308,'Electric Indigo','6f00ff'),(1309,'Electric Lavender','f4bbff'),(1310,'Electric Lime','cf0\r'),(1311,'Electric Purple','bf00ff'),(1312,'Electric Ultramarine','3f00ff'),(1313,'Electric Violet','8f00ff'),(1314,'Electric Yellow','ff0\r'),(1315,'Emerald','50c878'),(1316,'English Lavender','b48395'),(1317,'Eton Blue','96c8a2'),(1318,'Fallow','c19a6b'),(1319,'Falu Red','801818'),(1320,'Fandango','b53389'),(1321,'Fashion Fuchsia','f400a1'),(1322,'Fawn','e5aa70'),(1323,'Feldgrau','4d5d53'),(1324,'Fern Green','4f7942'),(1325,'Ferrari Red','ff2800'),(1326,'Field Drab','6c541e'),(1327,'Fire Engine Red','ce2029'),(1328,'Firebrick','b22222'),(1329,'Flame','e25822'),(1330,'Flamingo Pink','fc8eac'),(1331,'Flavescent','f7e98e'),(1332,'Flax','eedc82'),(1333,'Floral White','fffaf0'),(1334,'Fluorescent Orange','ffbf00'),(1335,'Fluorescent Pink','ff1493'),(1336,'Fluorescent Yellow','cf0\r'),(1337,'Folly','ff004f'),(1338,'Forest Green (Traditional)','014421'),(1339,'Forest Green (Web)','228b22'),(1340,'French Beige','a67b5b'),(1341,'French Blue','0072bb'),(1342,'French Lilac','86608e'),(1343,'French Lime','cf0\r'),(1344,'French Raspberry','c72c48'),(1345,'French Rose','f64a8a'),(1346,'Fuchsia','f0f\r'),(1347,'Fuchsia (Crayola)','c154c1'),(1348,'Fuchsia Pink','f7f\r'),(1349,'Fuchsia Rose','c74375'),(1350,'Fulvous','e48400'),(1351,'Fuzzy Wuzzy','c66\r'),(1352,'Gainsboro','dcdcdc'),(1353,'Gamboge','e49b0f'),(1354,'Ghost White','f8f8ff'),(1355,'Ginger','b06500'),(1356,'Glaucous','6082b6'),(1357,'Glitter','e6e8fa'),(1358,'Gold (Metallic)','d4af37'),(1359,'Gold (Web) (Golden)','ffd700'),(1360,'Golden Brown','996515'),(1361,'Golden Poppy','fcc200'),(1362,'Golden Yellow','ffdf00'),(1363,'Goldenrod','daa520'),(1364,'Granny Smith Apple','a8e4a0'),(1365,'Gray','808080'),(1366,'Gray-Asparagus','465945'),(1367,'Gray (Html/Css Gray)','808080'),(1368,'Gray (X11 Gray)','bebebe'),(1369,'Green (Color Wheel) (X11 Green)','0f0\r'),(1370,'Green (Crayola)','1cac78'),(1371,'Green (Html/Css Green)','008000'),(1372,'Green (Munsell)','00a877'),(1373,'Green (Ncs)','009f6b'),(1374,'Green (Pigment)','00a550'),(1375,'Green (Ryb)','66b032'),(1376,'Green-Yellow','adff2f'),(1377,'Grullo','a99a86'),(1378,'Guppie Green','00ff7f'),(1379,'Halayà úBe','663854'),(1380,'Han Blue','446ccf'),(1381,'Han Purple','5218fa'),(1382,'Hansa Yellow','e9d66b'),(1383,'Harlequin','3fff00'),(1384,'Harvard Crimson','c90016'),(1385,'Harvest Gold','da9100'),(1386,'Heart Gold','808000'),(1387,'Heliotrope','df73ff'),(1388,'Hollywood Cerise','f400a1'),(1389,'Honeydew','f0fff0'),(1390,'Honolulu Blue','007fbf'),(1391,'Hooker\'S Green','49796b'),(1392,'Hot Magenta','ff1dce'),(1393,'Hot Pink','ff69b4'),(1394,'Hunter Green','355e3b'),(1395,'Iceberg','71a6d2'),(1396,'Icterine','fcf75e'),(1397,'Imperial Blue','002395'),(1398,'Inchworm','b2ec5d'),(1399,'India Green','138808'),(1400,'Indian Red','cd5c5c'),(1401,'Indian Yellow','e3a857'),(1402,'Indigo','6f00ff'),(1403,'Indigo (Dye)','00416a'),(1404,'Indigo (Web)','4b0082'),(1405,'International Klein Blue','002fa7'),(1406,'International Orange (Aerospace)','ff4f00'),(1407,'International Orange (Engineering)','ba160c'),(1408,'International Orange (Golden Gate Bridge)','c0362c'),(1409,'Iris','5a4fcf'),(1410,'Isabelline','f4f0ec'),(1411,'Islamic Green','009000'),(1412,'Ivory','fffff0'),(1413,'Jade','00a86b'),(1414,'Jasmine','f8de7e'),(1415,'Jasper','d73b3e'),(1416,'Jazzberry Jam','a50b5e'),(1417,'Jet','343434'),(1418,'Jonquil','fada5e'),(1419,'June Bud','bdda57'),(1420,'Jungle Green','29ab87'),(1421,'Kelly Green','4cbb17'),(1422,'Kenyan Copper','7c1c05'),(1423,'Khaki (Html/Css) (Khaki)','c3b091'),(1424,'Khaki (X11) (Light Khaki)','f0e68c'),(1425,'Ku Crimson','e8000d'),(1426,'La Salle Green','087830'),(1427,'Languid Lavender','d6cadd'),(1428,'Lapis Lazuli','26619c'),(1429,'Laser Lemon','fefe22'),(1430,'Laurel Green','a9ba9d'),(1431,'Lava','cf1020'),(1432,'Lavender Blue','ccf\r'),(1433,'Lavender Blush','fff0f5'),(1434,'Lavender (Floral)','b57edc'),(1435,'Lavender Gray','c4c3d0'),(1436,'Lavender Indigo','9457eb'),(1437,'Lavender Magenta','ee82ee'),(1438,'Lavender Mist','e6e6fa'),(1439,'Lavender Pink','fbaed2'),(1440,'Lavender Purple','967bb6'),(1441,'Lavender Rose','fba0e3'),(1442,'Lavender (Web)','e6e6fa'),(1443,'Lawn Green','7cfc00'),(1444,'Lemon','fff700'),(1445,'Lemon Chiffon','fffacd'),(1446,'Lemon Lime','e3ff00'),(1447,'Licorice','1a1110'),(1448,'Light Apricot','fdd5b1'),(1449,'Light Blue','add8e6'),(1450,'Light Brown','b5651d'),(1451,'Light Carmine Pink','e66771'),(1452,'Light Coral','f08080'),(1453,'Light Cornflower Blue','93ccea'),(1454,'Light Crimson','f56991'),(1455,'Light Cyan','e0ffff'),(1456,'Light Fuchsia Pink','f984ef'),(1457,'Light Goldenrod Yellow','fafad2'),(1458,'Light Gray','d3d3d3'),(1459,'Light Green','90ee90'),(1460,'Light Khaki','f0e68c'),(1461,'Light Pastel Purple','b19cd9'),(1462,'Light Pink','ffb6c1'),(1463,'Light Red Ochre','e97451'),(1464,'Light Salmon','ffa07a'),(1465,'Light Salmon Pink','f99\r'),(1466,'Light Sea Green','20b2aa'),(1467,'Light Sky Blue','87cefa'),(1468,'Light Slate Gray','789\r'),(1469,'Light Taupe','b38b6d'),(1470,'Light Thulian Pink','e68fac'),(1471,'Light Yellow','ffffe0'),(1472,'Lilac','c8a2c8'),(1473,'Lime (Color Wheel)','bfff00'),(1474,'Lime Green','32cd32'),(1475,'Lime (Web) (X11 Green)','0f0\r'),(1476,'Limerick','9dc209'),(1477,'Lincoln Green','195905'),(1478,'Linen','faf0e6'),(1479,'Lion','c19a6b'),(1480,'Little Boy Blue','6ca0dc'),(1481,'Liver','534b4f'),(1482,'Lust','e62020'),(1483,'Magenta','f0f\r'),(1484,'Magenta (Dye)','ca1f7b'),(1485,'Magenta (Process)','ff0090'),(1486,'Magic Mint','aaf0d1'),(1487,'Magnolia','f8f4ff'),(1488,'Mahogany','c04000'),(1489,'Maize','fbec5d'),(1490,'Majorelle Blue','6050dc'),(1491,'Malachite','0bda51'),(1492,'Manatee','979aaa'),(1493,'Mango Tango','ff8243'),(1494,'Mantis','74c365'),(1495,'Mardi Gras','880085'),(1496,'Maroon (Crayola)','c32148'),(1497,'Maroon (Html/Css)','800000'),(1498,'Maroon (X11)','b03060'),(1499,'Mauve','e0b0ff'),(1500,'Mauve Taupe','915f6d'),(1501,'Mauvelous','ef98aa'),(1502,'Maya Blue','73c2fb'),(1503,'Meat Brown','e5b73b'),(1504,'Medium Aquamarine','6da\r'),(1505,'Medium Blue','0000cd'),(1506,'Medium Candy Apple Red','e2062c'),(1507,'Medium Carmine','af4035'),(1508,'Medium Champagne','f3e5ab'),(1509,'Medium Electric Blue','035096'),(1510,'Medium Jungle Green','1c352d'),(1511,'Medium Lavender Magenta','dda0dd'),(1512,'Medium Orchid','ba55d3'),(1513,'Medium Persian Blue','0067a5'),(1514,'Medium Purple','9370db'),(1515,'Medium Red-Violet','bb3385'),(1516,'Medium Ruby','aa4069'),(1517,'Medium Sea Green','3cb371'),(1518,'Medium Slate Blue','7b68ee'),(1519,'Medium Spring Bud','c9dc87'),(1520,'Medium Spring Green','00fa9a'),(1521,'Medium Taupe','674c47'),(1522,'Medium Turquoise','48d1cc'),(1523,'Medium Tuscan Red','79443b'),(1524,'Medium Vermilion','d9603b'),(1525,'Medium Violet-Red','c71585'),(1526,'Mellow Apricot','f8b878'),(1527,'Mellow Yellow','f8de7e'),(1528,'Melon','fdbcb4'),(1529,'Midnight Blue','191970'),(1530,'Midnight Green (Eagle Green)','004953'),(1531,'Mikado Yellow','ffc40c'),(1532,'Mint','3eb489'),(1533,'Mint Cream','f5fffa'),(1534,'Mint Green','98ff98'),(1535,'Misty Rose','ffe4e1'),(1536,'Moccasin','faebd7'),(1537,'Mode Beige','967117'),(1538,'Moonstone Blue','73a9c2'),(1539,'Mordant Red 19','ae0c00'),(1540,'Moss Green','addfad'),(1541,'Mountain Meadow','30ba8f'),(1542,'Mountbatten Pink','997a8d'),(1543,'Msu Green','18453b'),(1544,'Mulberry','c54b8c'),(1545,'Mustard','ffdb58'),(1546,'Myrtle','21421e'),(1547,'Nadeshiko Pink','f6adc6'),(1548,'Napier Green','2a8000'),(1549,'Naples Yellow','fada5e'),(1550,'Navajo White','ffdead'),(1551,'Navy Blue','000080'),(1552,'Neon Carrot','ffa343'),(1553,'Neon Fuchsia','fe4164'),(1554,'Neon Green','39ff14'),(1555,'New York Pink','d7837f'),(1556,'Non-Photo Blue','a4dded'),(1557,'North Texas Green','059033'),(1558,'Ocean Boat Blue','0077be'),(1559,'Ochre','c72\r'),(1560,'Office Green','008000'),(1561,'Old Gold','cfb53b'),(1562,'Old Lace','fdf5e6'),(1563,'Old Lavender','796878'),(1564,'Old Mauve','673147'),(1565,'Old Rose','c08081'),(1566,'Olive','808000'),(1567,'Olive Drab #7','3c341f'),(1568,'Olive Drab (Web) (Olive Drab #3)','6b8e23'),(1569,'Olivine','9ab973'),(1570,'Onyx','353839'),(1571,'Opera Mauve','b784a7'),(1572,'Orange (Color Wheel)','ff7f00'),(1573,'Orange Peel','ff9f00'),(1574,'Orange-Red','ff4500'),(1575,'Orange (Ryb)','fb9902'),(1576,'Orange (Web Color)','ffa500'),(1577,'Orchid','da70d6'),(1578,'Otter Brown','654321'),(1579,'Ou Crimson Red','900\r'),(1580,'Outer Space','414a4c'),(1581,'Outrageous Orange','ff6e4a'),(1582,'Oxford Blue','002147'),(1583,'Pakistan Green','060\r'),(1584,'Palatinate Blue','273be2'),(1585,'Palatinate Purple','682860'),(1586,'Pale Aqua','bcd4e6'),(1587,'Pale Blue','afeeee'),(1588,'Pale Brown','987654'),(1589,'Pale Carmine','af4035'),(1590,'Pale Cerulean','9bc4e2'),(1591,'Pale Chestnut','ddadaf'),(1592,'Pale Copper','da8a67'),(1593,'Pale Cornflower Blue','abcdef'),(1594,'Pale Gold','e6be8a'),(1595,'Pale Goldenrod','eee8aa'),(1596,'Pale Green','98fb98'),(1597,'Pale Lavender','dcd0ff'),(1598,'Pale Magenta','f984e5'),(1599,'Pale Pink','fadadd'),(1600,'Pale Plum','dda0dd'),(1601,'Pale Red-Violet','db7093'),(1602,'Pale Robin Egg Blue','96ded1'),(1603,'Pale Silver','c9c0bb'),(1604,'Pale Spring Bud','ecebbd'),(1605,'Pale Taupe','bc987e'),(1606,'Pale Violet-Red','db7093'),(1607,'Pansy Purple','78184a'),(1608,'Papaya Whip','ffefd5'),(1609,'Paris Green','50c878'),(1610,'Pastel Blue','aec6cf'),(1611,'Pastel Brown','836953'),(1612,'Pastel Gray','cfcfc4'),(1613,'Pastel Green','7d7\r'),(1614,'Pastel Magenta','f49ac2'),(1615,'Pastel Orange','ffb347'),(1616,'Pastel Pink','dea5a4'),(1617,'Pastel Purple','b39eb5'),(1618,'Pastel Red','ff6961'),(1619,'Pastel Violet','cb99c9'),(1620,'Pastel Yellow','fdfd96'),(1621,'Patriarch','800080'),(1622,'Payne\'S Grey','536878'),(1623,'Peach','ffe5b4'),(1624,'Peach (Crayola)','ffcba4'),(1625,'Peach-Orange','fc9\r'),(1626,'Peach Puff','ffdab9'),(1627,'Peach-Yellow','fadfad'),(1628,'Pear','d1e231'),(1629,'Pearl','eae0c8'),(1630,'Pearl Aqua','88d8c0'),(1631,'Pearly Purple','b768a2'),(1632,'Peridot','e6e200'),(1633,'Periwinkle','ccf\r'),(1634,'Persian Blue','1c39bb'),(1635,'Persian Green','00a693'),(1636,'Persian Indigo','32127a'),(1637,'Persian Orange','d99058'),(1638,'Persian Pink','f77fbe'),(1639,'Persian Plum','701c1c'),(1640,'Persian Red','c33\r'),(1641,'Persian Rose','fe28a2'),(1642,'Persimmon','ec5800'),(1643,'Peru','cd853f'),(1644,'Phlox','df00ff'),(1645,'Phthalo Blue','000f89'),(1646,'Phthalo Green','123524'),(1647,'Piggy Pink','fddde6'),(1648,'Pine Green','01796f'),(1649,'Pink','ffc0cb'),(1650,'Pink Lace','ffddf4'),(1651,'Pink-Orange','f96\r'),(1652,'Pink Pearl','e7accf'),(1653,'Pink Sherbet','f78fa7'),(1654,'Pistachio','93c572'),(1655,'Platinum','e5e4e2'),(1656,'Plum (Traditional)','8e4585'),(1657,'Plum (Web)','dda0dd'),(1658,'Portland Orange','ff5a36'),(1659,'Powder Blue (Web)','b0e0e6'),(1660,'Princeton Orange','ff8f00'),(1661,'Prune','701c1c'),(1662,'Prussian Blue','003153'),(1663,'Psychedelic Purple','df00ff'),(1664,'Puce','c89\r'),(1665,'Pumpkin','ff7518'),(1666,'Purple Heart','69359c'),(1667,'Purple (Html/Css)','800080'),(1668,'Purple Mountain Majesty','9678b6'),(1669,'Purple (Munsell)','9f00c5'),(1670,'Purple Pizzazz','fe4eda'),(1671,'Purple Taupe','50404d'),(1672,'Purple (X11)','a020f0'),(1673,'Quartz','51484f'),(1674,'Rackley','5d8aa8'),(1675,'Radical Red','ff355e'),(1676,'Rajah','fbab60'),(1677,'Raspberry','e30b5d'),(1678,'Raspberry Glace','915f6d'),(1679,'Raspberry Pink','e25098'),(1680,'Raspberry Rose','b3446c'),(1681,'Raw Umber','826644'),(1682,'Razzle Dazzle Rose','f3c\r'),(1683,'Razzmatazz','e3256b'),(1684,'Red','f00\r'),(1685,'Red-Brown','a52a2a'),(1686,'Red Devil','860111'),(1687,'Red (Munsell)','f2003c'),(1688,'Red (Ncs)','c40233'),(1689,'Red-Orange','ff5349'),(1690,'Red (Pigment)','ed1c24'),(1691,'Red (Ryb)','fe2712'),(1692,'Red-Violet','c71585'),(1693,'Redwood','ab4e52'),(1694,'Regalia','522d80'),(1695,'Resolution Blue','002387'),(1696,'Rich Black','004040'),(1697,'Rich Brilliant Lavender','f1a7fe'),(1698,'Rich Carmine','d70040'),(1699,'Rich Electric Blue','0892d0'),(1700,'Rich Lavender','a76bcf'),(1701,'Rich Lilac','b666d2'),(1702,'Rich Maroon','b03060'),(1703,'Rifle Green','414833'),(1704,'Robin Egg Blue','0cc\r'),(1705,'Rose','ff007f'),(1706,'Rose Bonbon','f9429e'),(1707,'Rose Ebony','674846'),(1708,'Rose Gold','b76e79'),(1709,'Rose Madder','e32636'),(1710,'Rose Pink','f6c\r'),(1711,'Rose Quartz','aa98a9'),(1712,'Rose Taupe','905d5d'),(1713,'Rose Vale','ab4e52'),(1714,'Rosewood','65000b'),(1715,'Rosso Corsa','d40000'),(1716,'Rosy Brown','bc8f8f'),(1717,'Royal Azure','0038a8'),(1718,'Royal Blue (Traditional)','002366'),(1719,'Royal Blue (Web)','4169e1'),(1720,'Royal Fuchsia','ca2c92'),(1721,'Royal Purple','7851a9'),(1722,'Royal Yellow','fada5e'),(1723,'Rubine Red','d10056'),(1724,'Ruby','e0115f'),(1725,'Ruby Red','9b111e'),(1726,'Ruddy','ff0028'),(1727,'Ruddy Brown','bb6528'),(1728,'Ruddy Pink','e18e96'),(1729,'Rufous','a81c07'),(1730,'Russet','80461b'),(1731,'Rust','b7410e'),(1732,'Rusty Red','da2c43'),(1733,'Sacramento State Green','00563f'),(1734,'Saddle Brown','8b4513'),(1735,'Safety Orange (Blaze Orange)','ff6700'),(1736,'Saffron','f4c430'),(1737,'Salmon','ff8c69'),(1738,'Salmon Pink','ff91a4'),(1739,'Sand','c2b280'),(1740,'Sand Dune','967117'),(1741,'Sandstorm','ecd540'),(1742,'Sandy Brown','f4a460'),(1743,'Sandy Taupe','967117'),(1744,'Sangria','92000a'),(1745,'Sap Green','507d2a'),(1746,'Sapphire','0f52ba'),(1747,'Sapphire Blue','0067a5'),(1748,'Satin Sheen Gold','cba135'),(1749,'Scarlet','ff2400'),(1750,'Scarlet (Crayola)','fd0e35'),(1751,'School Bus Yellow','ffd800'),(1752,'Screamin\' Green','76ff7a'),(1753,'Sea Blue','006994'),(1754,'Sea Green','2e8b57'),(1755,'Seal Brown','321414'),(1756,'Seashell','fff5ee'),(1757,'Selective Yellow','ffba00'),(1758,'Sepia','704214'),(1759,'Shadow','8a795d'),(1760,'Shamrock Green','009e60'),(1761,'Shocking Pink','fc0fc0'),(1762,'Shocking Pink (Crayola)','ff6fff'),(1763,'Sienna','882d17'),(1764,'Silver','c0c0c0'),(1765,'Sinopia','cb410b'),(1766,'Skobeloff','007474'),(1767,'Sky Blue','87ceeb'),(1768,'Sky Magenta','cf71af'),(1769,'Slate Blue','6a5acd'),(1770,'Slate Gray','708090'),(1771,'Smalt (Dark Powder Blue)','039\r'),(1772,'Smokey Topaz','933d41'),(1773,'Smoky Black','100c08'),(1774,'Snow','fffafa'),(1775,'Spiro Disco Ball','0fc0fc'),(1776,'Spring Bud','a7fc00'),(1777,'Spring Green','00ff7f'),(1778,'St. Patrick\'S Blue','23297a'),(1779,'Steel Blue','4682b4'),(1780,'Stil De Grain Yellow','fada5e'),(1781,'Stizza','900\r'),(1782,'Stormcloud','4f666a'),(1783,'Straw','e4d96f'),(1784,'Sunglow','fc3\r'),(1785,'Sunset','fad6a5'),(1786,'Tan','d2b48c'),(1787,'Tangelo','f94d00'),(1788,'Tangerine','f28500'),(1789,'Tangerine Yellow','fc0\r'),(1790,'Tango Pink','e4717a'),(1791,'Taupe','483c32'),(1792,'Taupe Gray','8b8589'),(1793,'Tea Green','d0f0c0'),(1794,'Tea Rose (Orange)','f88379'),(1795,'Tea Rose (Rose)','f4c2c2'),(1796,'Teal','008080'),(1797,'Teal Blue','367588'),(1798,'Teal Green','00827f'),(1799,'Telemagenta','cf3476'),(1800,'Tenné (Tawny)','cd5700'),(1801,'Terra Cotta','e2725b'),(1802,'Thistle','d8bfd8'),(1803,'Thulian Pink','de6fa1'),(1804,'Tickle Me Pink','fc89ac'),(1805,'Tiffany Blue','0abab5'),(1806,'Tiger\'S Eye','e08d3c'),(1807,'Timberwolf','dbd7d2'),(1808,'Titanium Yellow','eee600'),(1809,'Tomato','ff6347'),(1810,'Toolbox','746cc0'),(1811,'Topaz','ffc87c'),(1812,'Tractor Red','fd0e35'),(1813,'Trolley Grey','808080'),(1814,'Tropical Rain Forest','00755e'),(1815,'True Blue','0073cf'),(1816,'Tufts Blue','417dc1'),(1817,'Tumbleweed','deaa88'),(1818,'Turkish Rose','b57281'),(1819,'Turquoise','30d5c8'),(1820,'Turquoise Blue','00ffef'),(1821,'Turquoise Green','a0d6b4'),(1822,'Tuscan Red','7c4848'),(1823,'Twilight Lavender','8a496b'),(1824,'Tyrian Purple','66023c'),(1825,'Ua Blue','03a\r'),(1826,'Ua Red','d9004c'),(1827,'Ube','8878c3'),(1828,'Ucla Blue','536895'),(1829,'Ucla Gold','ffb300'),(1830,'Ufo Green','3cd070'),(1831,'Ultra Pink','ff6fff'),(1832,'Ultramarine','120a8f'),(1833,'Ultramarine Blue','4166f5'),(1834,'Umber','635147'),(1835,'Unbleached Silk','ffddca'),(1836,'United Nations Blue','5b92e5'),(1837,'University Of California Gold','b78727'),(1838,'Unmellow Yellow','ff6\r'),(1839,'Up Forest Green','014421'),(1840,'Up Maroon','7b1113'),(1841,'Upsdell Red','ae2029'),(1842,'Urobilin','e1ad21'),(1843,'Usafa Blue','004f98'),(1844,'Usc Cardinal','900\r'),(1845,'Usc Gold','fc0\r'),(1846,'Utah Crimson','d3003f'),(1847,'Vanilla','f3e5ab'),(1848,'Vegas Gold','c5b358'),(1849,'Venetian Red','c80815'),(1850,'Verdigris','43b3ae'),(1851,'Vermilion (Cinnabar)','e34234'),(1852,'Vermilion (Plochere)','d9603b'),(1853,'Veronica','a020f0'),(1854,'Violet','8f00ff'),(1855,'Violet-Blue','324ab2'),(1856,'Violet (Color Wheel)','7f00ff'),(1857,'Violet (Ryb)','8601af'),(1858,'Violet (Web)','ee82ee'),(1859,'Viridian','40826d'),(1860,'Vivid Auburn','922724'),(1861,'Vivid Burgundy','9f1d35'),(1862,'Vivid Cerise','da1d81'),(1863,'Vivid Tangerine','ffa089'),(1864,'Vivid Violet','9f00ff'),(1865,'Warm Black','004242'),(1866,'Waterspout','a4f4f9'),(1867,'Wenge','645452'),(1868,'Wheat','f5deb3'),(1869,'White','fff\r'),(1870,'White Smoke','f5f5f5'),(1871,'Wild Blue Yonder','a2add0'),(1872,'Wild Strawberry','ff43a4'),(1873,'Wild Watermelon','fc6c85'),(1874,'Wine','722f37'),(1875,'Wine Dregs','673147'),(1876,'Wisteria','c9a0dc'),(1877,'Wood Brown','c19a6b'),(1878,'Xanadu','738678'),(1879,'Yale Blue','0f4d92'),(1880,'Yellow','ff0\r'),(1881,'Yellow-Green','9acd32'),(1882,'Yellow (Munsell)','efcc00'),(1883,'Yellow (Ncs)','ffd300'),(1884,'Yellow Orange','ffae42'),(1885,'Yellow (Process)','ffef00'),(1886,'Yellow (Ryb)','fefe33'),(1887,'Zaffre','0014a8'),(1888,'Zinnwaldite Brown','2c1608');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (657,'\"Virgin Islands'),(721,'Afghanistan\r'),(652,'Aland Islands\r'),(620,'Albania\r'),(579,'Algeria\r'),(701,'American Samoa\r'),(661,'Andorra\r'),(664,'Angola\r'),(694,'Anguilla\r'),(668,'Antigua and Barbuda\r'),(529,'Argentina\r'),(624,'Armenia\r'),(645,'Aruba\r'),(691,'Asia/Pacific Region\r'),(522,'Australia\r'),(548,'Austria\r'),(614,'Azerbaijan\r'),(636,'Bahamas\r'),(607,'Bahrain\r'),(596,'Bangladesh\r'),(634,'Barbados\r'),(551,'Belarus\r'),(549,'Belgium\r'),(632,'Belize\r'),(713,'Benin\r'),(649,'Bermuda\r'),(684,'Bhutan\r'),(581,'Bolivia\r'),(604,'Bosnia and Herzegovina\r'),(659,'Botswana\r'),(744,'Bouvet Island\r'),(518,'Brazil\r'),(585,'Brunei\r'),(560,'Bulgaria\r'),(720,'Burkina Faso\r'),(731,'Burundi\r'),(660,'Cabo Verde\r'),(584,'Cambodia\r'),(693,'Cameroon\r'),(514,'Canada\r'),(717,'Caribbean Netherlands\r'),(663,'Cayman Islands\r'),(751,'Central African Republic'),(730,'Chad\r'),(524,'Chile\r'),(531,'China\r'),(729,'Christmas Island\r'),(743,'Cocos (Keeling) Islands\r'),(545,'Colombia\r'),(733,'Comoros\r'),(715,'Congo\r'),(708,'Cook Islands\r'),(572,'Costa Rica\r'),(654,'Cote D\'Ivoire\r'),(570,'Croatia\r'),(666,'Cuba\r'),(655,'Curaçao\r'),(606,'Cyprus\r'),(542,'Czech Republic\r'),(555,'Denmark\r'),(695,'Djibouti\r'),(665,'Dominica\r'),(577,'Dominican Republic\r'),(563,'Ecuador\r'),(575,'Egypt\r'),(591,'El Salvador\r'),(735,'Equatorial Guinea\r'),(736,'Eritrea\r'),(559,'Estonia\r'),(705,'Eswatini\r'),(667,'Ethiopia\r'),(702,'Europe\r'),(734,'Falkland Islands (Malvinas)\r'),(643,'Faroe Islands\r'),(690,'Federated States of Micronesia\r'),(536,'Finland\r'),(516,'France\r'),(639,'French Guiana\r'),(619,'French Polynesia\r'),(675,'Gabon\r'),(723,'Gambia\r'),(592,'Georgia\r'),(513,'Germany\r'),(648,'Ghana\r'),(653,'Gibraltar\r'),(558,'Greece\r'),(647,'Greenland\r'),(688,'Grenada\r'),(623,'Guadeloupe\r'),(608,'Guam\r'),(580,'Guatemala\r'),(651,'Guernsey\r'),(722,'Guinea\r'),(740,'Guinea-Bissau\r'),(644,'Guyana\r'),(687,'Haiti\r'),(598,'Honduras\r'),(537,'Hong Kong\r'),(547,'Hungary\r'),(610,'Iceland\r'),(556,'India\r'),(521,'Indonesia\r'),(612,'Iraq\r'),(567,'Ireland\r'),(622,'Islamic Republic of Iran\r'),(641,'Isle of Man\r'),(554,'Israel\r'),(533,'Italy\r'),(615,'Jamaica\r'),(519,'Japan\r'),(637,'Jersey\r'),(602,'Jordan\r'),(550,'Kazakhstan\r'),(638,'Kenya\r'),(746,'Kiribati\r'),(670,'Kosovo\r'),(588,'Kuwait\r'),(605,'Kyrgyzstan\r'),(621,'Lao People\'s Democratic Republic\r'),(561,'Latvia\r'),(609,'Lebanon\r'),(725,'Lesotho\r'),(737,'Liberia\r'),(642,'Libya\r'),(658,'Liechtenstein\r'),(553,'Lithuania\r'),(601,'Luxembourg\r'),(599,'Macau\r'),(633,'Madagascar\r'),(704,'Malawi\r'),(525,'Malaysia\r'),(613,'Maldives\r'),(712,'Mali\r'),(618,'Malta\r'),(697,'Marshall Islands\r'),(626,'Martinique\r'),(714,'Mauritania\r'),(625,'Mauritius\r'),(662,'Mayotte\r'),(528,'Mexico\r'),(576,'Moldova\r'),(674,'Monaco\r'),(582,'Mongolia\r'),(631,'Montenegro\r'),(727,'Montserrat\r'),(574,'Morocco\r'),(671,'Mozambique\r'),(593,'Myanmar\r'),(650,'Namibia\r'),(747,'Nauru\r'),(590,'Nepal\r'),(538,'Netherlands\r'),(745,'Netherlands Antilles\r'),(630,'New Caledonia\r'),(552,'New Zealand\r'),(611,'Nicaragua\r'),(706,'Niger\r'),(640,'Nigeria\r'),(748,'Niue\r'),(732,'Norfolk Island\r'),(600,'North Macedonia\r'),(628,'Northern Mariana Islands\r'),(546,'Norway\r'),(616,'Oman\r'),(595,'Pakistan\r'),(719,'Palau\r'),(578,'Panama\r'),(709,'Papua New Guinea\r'),(587,'Paraguay\r'),(541,'Peru\r'),(517,'Philippines\r'),(749,'Pitcairn\r'),(515,'Poland\r'),(544,'Portugal\r'),(586,'Puerto Rico\r'),(589,'Qatar\r'),(594,'Reunion\r'),(543,'Romania\r'),(512,'Russian Federation\r'),(692,'Rwanda\r'),(711,'Saint Barthelemy\r'),(680,'Saint Kitts and Nevis\r'),(656,'Saint Lucia\r'),(669,'Saint Martin\r'),(683,'Saint Pierre and Miquelon\r'),(679,'Saint Vincent and the Grenadines\r'),(710,'Samoa\r'),(672,'San Marino\r'),(728,'Sao Tome and Principe\r'),(566,'Saudi Arabia\r'),(673,'Senegal\r'),(565,'Serbia\r'),(703,'Seychelles\r'),(726,'Sierra Leone\r'),(532,'Singapore\r'),(716,'Sint Maarten\r'),(562,'Slovakia\r'),(573,'Slovenia\r'),(742,'Solomon Islands\r'),(724,'Somalia\r'),(569,'South Africa\r'),(526,'South Korea\r'),(535,'Spain\r'),(617,'Sri Lanka\r'),(627,'State of Palestine\r'),(646,'Sudan\r'),(635,'Suriname\r'),(700,'Svalbard and Jan Mayen\r'),(539,'Sweden\r'),(557,'Switzerland\r'),(629,'Syrian Arab Republic\r'),(523,'Taiwan\r'),(677,'Tajikistan\r'),(530,'Thailand\r'),(707,'The Democratic Republic of the Congo\r'),(698,'Timor-Leste\r'),(686,'Togo\r'),(750,'Tokelau\r'),(738,'Tonga\r'),(597,'Trinidad and Tobago\r'),(583,'Tunisia\r'),(540,'Turkey\r'),(685,'Turkmenistan\r'),(699,'Turks and Caicos Islands\r'),(741,'Tuvalu\r'),(681,'Uganda\r'),(527,'Ukraine\r'),(568,'United Arab Emirates\r'),(520,'United Kingdom\r'),(682,'United Republic of Tanzania\r'),(511,'United States\r'),(571,'Uruguay\r'),(603,'Uzbekistan\r'),(696,'Vanuatu\r'),(564,'Venezuela\r'),(534,'Vietnam\r'),(718,'Virgin Islands British\r'),(739,'Wallis and Futuna\r'),(689,'Yemen\r'),(676,'Zambia\r'),(678,'Zimbabwe\r');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `ICO` mediumtext DEFAULT NULL,
  `IC_DPH` mediumtext DEFAULT NULL,
  `total_spending` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_id_city` (`id_city`),
  KEY `idx_customer_surname` (`surname`),
  CONSTRAINT `id_city_const` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (6,11,'Novak','Jiri','Lidicka 25','12345678','87654321',NULL),(7,12,'Svoboda','Pavel','Hlavna 58','23456789','98765432',NULL),(8,13,'Kovac','Ivan','Mierova 3','34567890','10987654',NULL),(9,14,'Molnar','Miklos','Szentharomsag 7','45678901','21091987',NULL),(10,15,'Schmidt','Johannes','Alexanderstrasse 9','56789012','32109876',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `customer_orders` (
  `surname` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `price_sum` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `list_of_countries`
--

DROP TABLE IF EXISTS `list_of_countries`;
/*!50001 DROP VIEW IF EXISTS `list_of_countries`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `list_of_countries` (
  `id` tinyint NOT NULL,
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `id_product_availability` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `price_sum` float NOT NULL,
  `price_sum_exc_dph` float NOT NULL,
  `dph_sum` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer_const` (`id_customer`),
  KEY `id_product_availability_const` (`id_product_availability`),
  CONSTRAINT `id_customer_const` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  CONSTRAINT `id_product_availability_const` FOREIGN KEY (`id_product_availability`) REFERENCES `product_availability` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_customer_spending` AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE customer
    SET total_spending = total_spending + NEW.price_sum
    WHERE id = NEW.id_customer;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product_availability`
--

DROP TABLE IF EXISTS `product_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_store` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_store_const` (`id_store`),
  KEY `id_product_const` (`id_product`),
  CONSTRAINT `id_product_const` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  CONSTRAINT `id_store_const` FOREIGN KEY (`id_store`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_availability`
--

LOCK TABLES `product_availability` WRITE;
/*!40000 ALTER TABLE `product_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `product_sales`
--

DROP TABLE IF EXISTS `product_sales`;
/*!50001 DROP VIEW IF EXISTS `product_sales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `product_sales` (
  `name` tinyint NOT NULL,
  `num_sales` tinyint NOT NULL,
  `total_revenue` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_subcategory` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `price_exc_dph` float NOT NULL,
  `dph` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_products_id_subcategory` (`id_subcategory`),
  KEY `idx_products_id_color` (`id_color`),
  CONSTRAINT `id_color_const` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  CONSTRAINT `id_subcategory_const` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1402,'Chillaz Zidle 14',1400,1321,79),(8,1,1024,'Red T-Shirt',15.99,13.23,0.21),(9,2,1025,'Orange Dress',45.99,38.17,0.19),(10,3,1026,'Yellow Sweater',35.99,30.02,0.2),(11,4,1027,'Green Laptop',999.99,833.33,0.2),(12,5,1028,'Blue Smartphone',499.99,416.66,0.2),(13,6,1029,'Purple Sofa',799.99,666.66,0.2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_stores_id_city` (`id_city`),
  CONSTRAINT `id_city_const2` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_subcategories_id_category` (`id_category`),
  CONSTRAINT `id_category_const` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,1,'Kancelarske'),(2,1,'Men\'s Clothing'),(3,1,'Women\'s Clothing'),(4,1,'Children\'s Clothing'),(5,2,'Computers'),(6,2,'Cell Phones'),(7,2,'Television'),(8,3,'Furniture'),(9,3,'Appliances'),(10,3,'Outdoor');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `top_customers`
--

DROP TABLE IF EXISTS `top_customers`;
/*!50001 DROP VIEW IF EXISTS `top_customers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `top_customers` (
  `surname` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `total_spending` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `drevorubecky_prumysl`
--

USE `drevorubecky_prumysl`;

--
-- Final view structure for view `customer_orders`
--

/*!50001 DROP TABLE IF EXISTS `customer_orders`*/;
/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_orders` AS select `c`.`surname` AS `surname`,`c`.`first_name` AS `first_name`,`c`.`address` AS `address`,`p`.`name` AS `name`,`o`.`date` AS `date`,`o`.`price_sum` AS `price_sum` from (((`customer` `c` join `orders` `o` on(`c`.`id` = `o`.`id_customer`)) join `product_availability` `pa` on(`o`.`id_product_availability` = `pa`.`id`)) join `products` `p` on(`pa`.`id_product` = `p`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `list_of_countries`
--

/*!50001 DROP TABLE IF EXISTS `list_of_countries`*/;
/*!50001 DROP VIEW IF EXISTS `list_of_countries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_of_countries` AS select `countries`.`id` AS `id`,`countries`.`name` AS `name` from `countries` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_sales`
--

/*!50001 DROP TABLE IF EXISTS `product_sales`*/;
/*!50001 DROP VIEW IF EXISTS `product_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_sales` AS select `p`.`name` AS `name`,count(`o`.`id`) AS `num_sales`,sum(`o`.`price_sum`) AS `total_revenue` from ((`products` `p` join `product_availability` `pa` on(`p`.`id` = `pa`.`id_product`)) join `orders` `o` on(`pa`.`id` = `o`.`id_product_availability`)) group by `p`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_customers`
--

/*!50001 DROP TABLE IF EXISTS `top_customers`*/;
/*!50001 DROP VIEW IF EXISTS `top_customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_customers` AS select `c`.`surname` AS `surname`,`c`.`first_name` AS `first_name`,`c`.`address` AS `address`,sum(`o`.`price_sum`) AS `total_spending` from (`customer` `c` join `orders` `o` on(`c`.`id` = `o`.`id_customer`)) group by `c`.`id` order by sum(`o`.`price_sum`) desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07 20:31:10
