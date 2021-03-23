-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para vehiculos
CREATE DATABASE IF NOT EXISTS `vehiculos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vehiculos`;

-- Volcando estructura para tabla vehiculos.adonis_schema
DROP TABLE IF EXISTS `adonis_schema`;
CREATE TABLE IF NOT EXISTS `adonis_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.adonis_schema: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
	(1, '1503248427885_user', 1, '2021-03-22 22:25:59'),
	(2, '1503248427886_token', 1, '2021-03-22 22:25:59'),
	(3, '1600851977778_permisos_schema', 1, '2021-03-22 22:25:59'),
	(4, '1600852081473_vehiculos_schema', 1, '2021-03-22 22:25:59'),
	(5, '1600852093106_reservas_schema', 1, '2021-03-22 22:25:59'),
	(6, '1600852099777_eventos_schema', 1, '2021-03-22 22:25:59'),
	(7, '1600933654427_imagenes_schema', 1, '2021-03-22 22:25:59'),
	(8, '1600995105587_documentos_schema', 1, '2021-03-22 22:25:59');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.documentos
DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `hash` varchar(128) DEFAULT NULL,
  `rutaDocumento` varchar(250) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  `clientname` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `volumenDocumento` varchar(9) DEFAULT NULL,
  `descripcionDocumento` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentos_uuid_index` (`uuid`),
  KEY `documentos_hash_index` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.documentos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.eventos
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int(10) unsigned DEFAULT NULL,
  `fechaYHoraEvento` datetime DEFAULT NULL,
  `descripcionEvento` varchar(255) DEFAULT NULL,
  `avisar` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eventos_fechayhoraevento_index` (`fechaYHoraEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.eventos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` (`id`, `vehiculo_id`, `fechaYHoraEvento`, `descripcionEvento`, `avisar`, `created_at`, `updated_at`) VALUES
	(1, 2, '2021-09-09 07:01:07', 'Ceeta wum rakvu ockeihu cehawnen igiku di sifebka fiv veb ruptigu fegikdu govves vuwcovwu ogomub gadhugpo ko if uguto pece.', 1, '2021-03-22 22:25:59', '2021-03-22 22:25:59');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.imagenes
DROP TABLE IF EXISTS `imagenes`;
CREATE TABLE IF NOT EXISTS `imagenes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `hash` varchar(128) DEFAULT NULL,
  `rutaImagen` varchar(250) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  `clientname` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `volumen` varchar(9) DEFAULT NULL,
  `descripcionImagen` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imagenes_vehiculo_id_index` (`vehiculo_id`),
  KEY `imagenes_uuid_index` (`uuid`),
  KEY `imagenes_hash_index` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.imagenes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.permisos
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `tipo_usuario` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.permisos: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` (`id`, `user_id`, `tipo_usuario`, `created_at`, `updated_at`) VALUES
	(1, 1, 'gestor', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(2, 2, 'basico', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(3, 3, 'basico', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(4, 4, 'gestor', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(5, 5, 'basico', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(6, 6, 'basico', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(7, 7, 'basico', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(8, 8, 'gestor', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(9, 9, 'gestor', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(10, 10, 'basico', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(11, 11, 'gestor', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(12, 12, 'basico', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(13, 13, 'gestor', '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(14, 14, 'gestor', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(15, 15, 'basico', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(16, 16, 'gestor', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(17, 17, 'basico', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(18, 18, 'gestor', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(19, 19, 'basico', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(20, 20, 'basico', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(21, 21, 'gestor', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(22, 22, 'basico', '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(23, 23, 'basico', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(24, 24, 'gestor', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(25, 25, 'basico', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(26, 26, 'basico', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(27, 27, 'gestor', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(28, 28, 'basico', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(29, 29, 'gestor', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(30, 30, 'basico', '2021-03-22 22:26:04', '2021-03-22 22:26:04');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.reservas
DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehiculo_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `fechaYHoraInicio` datetime DEFAULT NULL,
  `fechaYHoraFin` datetime DEFAULT NULL,
  `fechaYHoraEntregaLlaves` datetime DEFAULT NULL,
  `fechaYHoraDevolucionLlaves` datetime DEFAULT NULL,
  `estadoReserva` enum('solicitado','aceptada','enCurso','finalizada','Anulada') DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `motivoAnulacion` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.reservas: ~300 rows (aproximadamente)
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` (`id`, `vehiculo_id`, `user_id`, `fechaYHoraInicio`, `fechaYHoraFin`, `fechaYHoraEntregaLlaves`, `fechaYHoraDevolucionLlaves`, `estadoReserva`, `observaciones`, `motivoAnulacion`, `created_at`, `updated_at`) VALUES
	(1, 3, 9, '2021-08-27 03:28:18', '2021-08-27 09:06:18', '2021-08-27 23:59:18', '2021-08-27 23:59:18', 'finalizada', 'Micofe iwopi me banew ij zu serjuk pakera mudohesi acniciho la ga wawvuhu boh ukucenez potbuhfec karadug veswuzit puuzu ra.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(2, 7, 1, '2021-02-24 10:04:49', '2021-02-24 14:15:49', '2021-02-25 02:40:49', '2021-02-25 02:40:49', 'finalizada', 'Gac colfubas voca bewasacec ke pozud ufpa bu toboseb alku momzevvon pu bowivca vifhi wezet muiw najuv filkoado sikub ju.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(3, 15, 10, '2021-01-25 09:57:58', '2021-01-25 12:32:58', '2021-01-26 05:12:58', '2021-01-26 05:12:58', 'finalizada', 'Bavip wa desduune vezecneb salabu am hafpop gabi vevesnol gevtusola zo afijoeta ga kajcemi imufa rasewug du wel cedu tojodunu.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(4, 7, 21, '2021-06-13 07:52:46', '2021-06-13 17:20:46', '2021-06-14 07:13:46', '2021-06-14 07:13:46', 'finalizada', 'Ihiugniz da sohcat ed jafoc vafawha aco fasowruv jebpi kerposoc ga ver riak je upiko cub raeg iw ko vi.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(5, 13, 5, '2021-07-14 07:08:58', '2021-07-14 15:24:58', '2021-07-15 04:46:58', '2021-07-15 04:46:58', 'finalizada', 'Imu rudpi fiztib ocnu curemar zadgefe sega podircu cewwu wih vah zebeme rabusus cotbenid ruw sotik vutud ranpuzon ev ketwuhha.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(6, 5, 28, '2021-02-09 02:04:36', '2021-02-09 12:46:36', '2021-02-09 13:12:36', NULL, 'enCurso', 'Vohnopa ed suc zopuwsaw zekuka dacan rawvic nuvsupiw izopup zi kecmonju futwa biag la pipo kek pe garveibi moaspa dibud.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(7, 3, 30, '2021-02-12 05:06:25', '2021-02-12 10:58:25', NULL, NULL, 'aceptada', 'Pitabdi duveplil girnu bofufper aciteec ubeom sokbi amafazhu huga relpacsoc hagezu zupiv riafazih teg kup pi lohikaoda pus pijsaniz pu.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(8, 12, 8, '2021-02-06 08:03:26', '2021-02-06 22:12:26', '2021-02-06 23:31:26', '2021-02-06 23:31:26', 'finalizada', 'Onufagco deabaru zif da sownuf ugo ha ofo wuhka bogmere gupcub va ihjoco badanavi gibog fuduvnu puroke fo cego owaegu.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(9, 4, 4, '2021-05-23 06:10:05', '2021-05-23 13:58:05', NULL, NULL, 'solicitado', 'Cilroho zuc novbaw sawfewmo nam kawo binabi hilisgi le foham laile pujac werzo civurko gooba pi tovacjos ume jam bef.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(10, 3, 14, '2021-08-18 05:31:34', '2021-08-18 08:46:34', NULL, NULL, 'solicitado', 'Lozoowu kapgej bomas va ufoecu ri dug uhri rag wutiwoju zufikiv risifu vec humeju giiresi gig acpako zu awakicij buukowi.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(11, 7, 5, '2021-02-17 04:20:32', '2021-02-17 15:56:32', NULL, NULL, 'Anulada', 'Uj sun ezvu okzeful aberi neno heffije dinvew kevmuze fehtulu lebciti mezapori kepud fokru pe zer bifgic johham sop vakjoz.', 'Ofdermi kit tap etca zij gahlasef upeureni tu ciwefic kowsuhba.', '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(12, 8, 1, '2021-02-24 08:41:08', '2021-02-25 00:07:08', '2021-02-25 00:26:08', NULL, 'enCurso', 'Owofa foknu kesuctu du ud lit fedede wad hebvi seco vizhit elvut ras sumloam zu tontaw daw lefef vig ce.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(13, 7, 29, '2021-03-23 03:14:08', '2021-03-23 11:14:08', NULL, NULL, 'solicitado', 'Endakdah una bag sonverpi oznih bo hu hihegof gorakhe kikmigem ciw wefigmi ida zoc ke geb nagku pici gukuhar gib.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(14, 3, 11, '2021-11-10 02:31:04', '2021-11-10 14:20:04', '2021-11-11 06:05:04', '2021-11-11 06:05:04', 'finalizada', 'An wukbaof co limsec kustiv umejibik samgeli evagoejo leb tecvoda dopo zeevsob manrisev tedu mulej ruli vudu opbildo bafso abiuna.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(15, 2, 7, '2021-09-11 01:13:18', '2021-09-11 11:53:18', NULL, NULL, 'Anulada', 'Rakin azhat mif cuhu guudoijo hoiko okemem mi nug jiteko pukap fo ra cobhir jozotur dasojo ulcuf wuruhzec gasvuc vaopja.', 'Runurhuc dacos hef cilbe anevupmi tero rotok saj guk tioc.', '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(16, 6, 11, '2021-10-31 03:42:19', '2021-10-31 07:15:19', NULL, NULL, 'aceptada', 'Udilevde it zozetiw luforire zemuazo cul geh pompeoju zabigtab et jiiwa vasago cevi keganu vozguhi vaisode lap sekdek vimol atfewe.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(17, 14, 13, '2021-04-08 03:05:13', '2021-04-08 15:32:13', NULL, NULL, 'solicitado', 'Kefzav mo obilu kaonad heera ticatfe cicem givlibloc picficeb ma bibefvo pi cogsa bigbu ran cusjuj wabiko taggo diwdel tipje.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(18, 7, 25, '2021-07-11 12:29:28', '2021-07-12 02:50:28', NULL, NULL, 'Anulada', 'Ajawaled ruchemik iwfozam for seod teukkur ke denzow zitadaiv nulo iwoginu teasomu vec ku negja owfas vidagni paolo wilvero utameego.', 'Weci vetu ditu gogdiit cum vuwbu jajsu bonili lurah mov.', '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(19, 2, 17, '2021-08-12 08:51:35', '2021-08-12 19:05:35', NULL, NULL, 'aceptada', 'Ka tudaz ici dupujco deejuime ben asuhi pebej tecve rofbu marebmef wu gasbus ofma jopeho zenvokba jor do za todze.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(20, 2, 6, '2021-12-29 07:00:13', '2021-12-29 21:14:13', NULL, NULL, 'solicitado', 'Fipat muwpo iduuwumum jerreba situve nuhe ojime elkisow cikmaoc nazfor teg mo kih umo lagvu lanuicu wotoj wivemori letruh ej.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(21, 6, 27, '2021-10-06 11:12:55', '2021-10-06 22:46:55', '2021-10-06 22:53:55', NULL, 'enCurso', 'Dapedci ja kiwilder vo ce kom zobuz lul fu vuh jub ka usradive pud ampab hibe wenuz nevrathuh pizu fuwci.', NULL, '2021-03-22 22:25:59', '2021-03-22 22:25:59'),
	(22, 14, 19, '2021-03-20 12:19:29', '2021-03-20 22:55:29', '2021-03-21 09:08:29', '2021-03-21 09:08:29', 'finalizada', 'Cahcu ac gojbifmon siwfaz raggaz uhceskif nenwa aguhi emu tes supdizcoh elumialo zos ef jasdurta pihegbif bazcadman etiiro rom vut.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(23, 7, 25, '2021-02-06 11:08:20', '2021-02-06 23:59:20', NULL, NULL, 'aceptada', 'Ure girot kikvoowo tuvizjer durneze sunese in lo riopu puvodojod neummos zecmif odetubceb la hinawmed al relzutfu uji pufsapem zujkas.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(24, 7, 24, '2021-10-25 01:56:15', '2021-10-25 16:37:15', NULL, NULL, 'aceptada', 'Be cazef avaar tiinoso gowhu vapiwzu zewluewu bi kobuv vi wolzeg potkuvok zo tugdoga si zewep wij dor mafku fevdessi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(25, 4, 28, '2021-10-13 11:11:49', '2021-10-13 19:10:49', NULL, NULL, 'aceptada', 'Jubpa pomesok zi akorafa tevfuco wadzi fehzimla zul baj lo uzwofdut ojpa ahujalas wirese leani kok se fe hezoz lejbego.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(26, 8, 25, '2021-07-01 01:29:23', '2021-07-01 08:31:23', '2021-07-01 22:52:23', '2021-07-01 22:52:23', 'finalizada', 'Ku at rejew irlevze uzcu sip masuhofi hes as sez mopwohra dolepu wozidoni mawipul wol umooruce roiv ka cuakfof weha.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(27, 14, 21, '2021-03-24 04:09:31', '2021-03-24 09:19:31', NULL, NULL, 'aceptada', 'Ga lidav cahok pejolofu tutifin zo fahe uvi dogmuk adafe pa res nemig gavtuhfof amfoggap ridfeuf ojhe efi poeh favdanha.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(28, 6, 6, '2021-01-29 08:31:59', '2021-01-29 11:18:59', '2021-01-30 01:41:59', '2021-01-30 01:41:59', 'finalizada', 'Car pacora dep pommidaf sacbur inne kew lo cusati okovuga zap nadu oto pohagde pirwana zeaw fetbeida som uhfec femetivo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(29, 12, 29, '2021-01-01 02:41:23', '2021-01-01 15:16:23', '2021-01-01 16:29:23', '2021-01-01 16:29:23', 'finalizada', 'Gup domi pok zevigi lusjezad ke ivifihu ridci ekidi huin obcid ihjiaci bakidoded jazah nutak ni sub modur gohuc hof.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(30, 11, 21, '2021-08-23 06:34:39', '2021-08-23 18:58:39', '2021-08-23 20:30:39', NULL, 'enCurso', 'Panov salawofe pulnogo ewcoc cagar zaribros zidradne dev kih finamti fic secze fas ponlovu dardihot ve dudjisag vame sisizige itsihloz.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(31, 9, 13, '2021-05-04 09:09:23', '2021-05-04 13:49:23', '2021-05-04 22:58:23', '2021-05-04 22:58:23', 'finalizada', 'Eharuvpaw itnuh zokzit pukin takaj raifni fu rig lupgev zuzfe nudriku wobesure viju do takobo coul ab olano sil ca.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(32, 5, 20, '2021-06-11 01:22:21', '2021-06-11 08:14:21', NULL, NULL, 'aceptada', 'Fetmik we puisle ri ji hoc luto uchic new la ijowadda mugiru dimrennoc idbozik we betosku soj co zufi ohmog.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(33, 1, 8, '2021-10-08 08:14:29', '2021-10-08 11:40:29', NULL, NULL, 'Anulada', 'Pi avuhiwi ko torbehev ujru tavu dog faujecaf cehkawep ewheg sot nawew dojutado tukomter tul ijnil kidu loj vuwu mos.', 'Gindo of fujes lisfoamo urem citte vekavfi gunkag tum ribuje.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(34, 14, 19, '2021-11-23 08:39:58', '2021-11-23 16:30:58', NULL, NULL, 'Anulada', 'Tajectow jofta vicwaj uc zukgah bectofra fol lu jafni nir ume zikogup la ase pasugo etolvu adauha rurizil mopeda kidebzaj.', 'Tepa pu jagweagi gugfo tit vevi salipimu zo ugvavu wef.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(35, 9, 16, '2021-05-08 09:14:53', '2021-05-08 13:23:53', NULL, NULL, 'aceptada', 'Pocojap sisja efeip culadas tobihol bezgo getuba vehveon wu naosuwi kabdafnu luw nellep sadzo utmugo papaera pe gihatu eku bacgibi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(36, 8, 3, '2021-07-24 07:35:35', '2021-07-24 23:24:35', '2021-07-25 10:52:35', '2021-07-25 10:52:35', 'finalizada', 'Asimu af le bokpirhi bicehnok tezijwa owi sa nosu waz ijuib nazhul ihu ka uzu kahjuefa bucupos lemeveuga ijdo efsalej.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(37, 13, 19, '2021-05-14 05:14:02', '2021-05-14 10:05:02', '2021-05-14 10:51:02', NULL, 'enCurso', 'Cusvoha ofo kuvew zikope bem be zunti otfeklo eli hadti jo wewpe zoh liwgeso saji jasgicol zumtabho jasvebnug do ilaigago.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(38, 6, 23, '2021-10-11 11:29:17', '2021-10-11 21:24:17', NULL, NULL, 'Anulada', 'Bewva ligta mimrer kok zeoluwe gunab ojmu tahaz kup gono jivatu wiwuwe basetedu hup cizeze nalu zamif najul jiriho cebpom.', 'Kiwenco hu vasi vophu tethi ivi nela ga liirizi vehmuje.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(39, 7, 11, '2021-01-13 12:43:49', '2021-01-14 02:42:49', NULL, NULL, 'solicitado', 'Wuhgas sukfef rartubu amvep panhahfa nu co jinuum guhrarohu bicapdi pan riris najur cocapo tevkuz nekuhe soizawa azevuga uje murovwu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(40, 4, 23, '2021-05-23 04:51:11', '2021-05-23 12:12:11', '2021-05-23 12:58:11', NULL, 'enCurso', 'Uvpu dofivfal bi man jozebine maz zildiw nuz muc teghel wumpop badiriwe gaes nud ezcuhmam zaici lusutdan uwi fivmese bu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(41, 2, 28, '2021-03-10 07:26:28', '2021-03-10 15:38:28', NULL, NULL, 'Anulada', 'Iksi awkogic fi usuun ted si udpu jemiv kuhhit awuewain zusu fumit hekap zef kos viz penuzoweh gocut awomi uda.', 'Osfah witlu wecopu wacca heet let zik zovgahake sur pa.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(42, 4, 28, '2021-11-07 04:48:19', '2021-11-07 20:19:19', NULL, NULL, 'Anulada', 'Wo movdebu nimgutti wus zedtul umufu muv docikvow beebdoj uwwa bic demtiuja cot kiek surwu befum pazudu ektoj ujunulan zefni.', 'Zafooga mikmolu nun zehekoh ohurinfi ginaf rejogo nolsu seksadud juve.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(43, 5, 28, '2021-11-18 03:26:40', '2021-11-18 11:11:40', '2021-11-18 18:05:40', '2021-11-18 18:05:40', 'finalizada', 'Micduti suv mod zotiljo ibi kosif afedur gemis gufiguri ozesavucu huw kuw es wimo hetwe punaf hognazusu ij napicaj zah.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(44, 6, 25, '2021-12-25 05:46:41', '2021-12-25 18:23:41', NULL, NULL, 'solicitado', 'Velecgu cuz tewuwuh sutse pirpitsa sop udma de hi oseilram hu tohhozjis esihabnit foz la pibucoibi osutowa epfa bobjud kujiw.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(45, 14, 7, '2021-07-19 05:30:55', '2021-07-19 14:14:55', '2021-07-19 14:44:55', NULL, 'enCurso', 'Jegi eku fufenwer nanfemuh to ecuh waberane peduvpo nozgim rodevam buagumo su og vu diwto cusdacba azde pagagni icato jozsijin.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(46, 5, 6, '2021-05-28 05:25:13', '2021-05-28 14:31:13', NULL, NULL, 'aceptada', 'Aguho razgigzab ge idutesoz sinpamgi diw iruzocsuw sadioba apkiwu age ensi seji ced rabak rilotef asjir lavez overi gafatpof burbowbol.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(47, 14, 1, '2021-10-07 01:34:22', '2021-10-07 16:17:22', NULL, NULL, 'Anulada', 'Afe dar netbe gafpoluso tekuonu dubowin vu tifujo piow topok lum luzofag mozu biribta asnogu aro wik wopcup voh sisfogsum.', 'Re forzud pawcukiz jen wel ivkej satzum uz lupoze nusauc.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(48, 14, 3, '2021-09-02 09:54:28', '2021-09-02 22:17:28', NULL, NULL, 'solicitado', 'Gasje co rihlaf pev gab dowjo tavwaf eti jaeci zu zeh ze efe toulakol poz wo zukgugva kanhiow aweufbe ge.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(49, 12, 8, '2021-03-24 12:12:00', '2021-03-25 01:21:00', NULL, NULL, 'solicitado', 'Jesu sanja ganikih tuped kef bipzepuv ojakan mubofe zofikme ehke tid hoavido jem hobagca babajaelu jiza mad cilebuvo uj nialne.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(50, 15, 4, '2021-09-27 09:55:47', '2021-09-27 14:29:47', '2021-09-28 01:35:47', '2021-09-28 01:35:47', 'finalizada', 'Levi usdi uhgew genaw laij cigaej womwej jezaguv rozfo cewpiv olriga azlilet zitpap benada gof gevgul afhissec doepoja ricegice goice.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(51, 7, 13, '2021-01-10 08:20:21', '2021-01-10 22:08:21', NULL, NULL, 'Anulada', 'Ukosokam apzas di cejag mefos warpa uwlobip fufaz lirih orsu bahlig ifocowwi midguol bogguf it fiped efhupdu tonipbi ugnakwod zimkef.', 'Forgimra siata hin dum hum usasahi irwafi himu sapo ji.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(52, 12, 20, '2021-10-13 01:38:34', '2021-10-13 09:37:34', '2021-10-13 10:09:34', NULL, 'enCurso', 'Efo haka fub viggoefa mosoboko kiupnis minhiz mag be ricek fitap lih ohohat wuma umku cu huwhun iha wawewo judzethe.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(53, 8, 20, '2021-11-20 12:00:52', '2021-11-21 02:08:52', NULL, NULL, 'Anulada', 'Puhboj hagji wewo le belit vo fuvanod napud maf wa tomem vu uc li jilce na koco bifuceok wo medtavwis.', 'Gefuremiz haz fa mutzaf zu liz jeco nubaj ru nutebo.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(54, 8, 23, '2021-09-01 07:56:11', '2021-09-01 18:48:11', '2021-09-02 05:24:11', '2021-09-02 05:24:11', 'finalizada', 'Ami puwzuna ku amefu idobzi nisadwa us jod cuv fica pespib ud fomsilluh caej mipcob tirnas vu zis da bofapa.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(55, 14, 13, '2021-06-27 08:20:32', '2021-06-27 23:18:32', NULL, NULL, 'aceptada', 'Jopkifzad zenujob ji fomupot pim jinenlo gatsoaha lumtuis zesvew ituji zi uh duj amaribdat lukuztuz bacaz fo zug to tobofeop.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(56, 4, 1, '2021-04-30 01:27:38', '2021-04-30 06:27:38', '2021-04-30 08:01:38', '2021-04-30 08:01:38', 'finalizada', 'Ac wetsir sob agenah usuutle ni ruv zivamne difda bus pimgu nubgez pup nievge awgacnag ul jizadeizo gedtegeh hoziz gevpim.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(57, 2, 13, '2021-02-02 04:59:35', '2021-02-02 10:54:35', NULL, NULL, 'aceptada', 'Cuufocod uc cofha hipbodi aho wu jebwaoc rove esa adhiudo ukago wuctiszi nishi harhowvi li ka ejovbeh pe so hahap.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(58, 9, 17, '2021-07-20 02:42:06', '2021-07-20 06:46:06', '2021-07-20 08:03:06', NULL, 'enCurso', 'Uzo lumi fo mepug heesucaw wabeguvuz wifgunuku socwe hija lurufe cita vekuh fo afu kakgokfab dosriztiv rockake ta hastuvoga odaum.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(59, 8, 9, '2021-12-14 05:07:25', '2021-12-14 18:13:25', NULL, NULL, 'Anulada', 'Ubu ujiza pakvazu rewaru mecol hirza jegor cewfe akani we cuwcic sismik bat mi jukejuez fufowpik coto tokkornu femov farzijaj.', 'Tuitu buog ceggew tisoklas mutgic reccow owewaar bozu ekwo man.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(60, 1, 11, '2021-11-26 05:57:36', '2021-11-26 08:37:36', '2021-11-26 12:58:36', '2021-11-26 12:58:36', 'finalizada', 'Gaple renon ulwu callowe wofceki ucva nita rul efaabajo woriwne iwozeg mu cirinto fefonzi os wijosoh ki woh je uha.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(61, 15, 21, '2021-01-12 10:31:51', '2021-01-12 21:55:51', '2021-01-12 22:19:51', NULL, 'enCurso', 'Pezazewi laspi wilne ut tittigfa raiko gi ukenun guul felcub pepi oc hivnivum zehil nawsucti hijnun zukmina nu reh use.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(62, 3, 1, '2021-11-03 06:35:32', '2021-11-03 15:35:32', NULL, NULL, 'aceptada', 'Fadube ogujo ho relcewfi egehi jagiilu bazocu teb nephasma dok mocid zoc miri gup vajazjo tozjaac ri lel feuv vunle.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(63, 9, 1, '2021-04-25 08:18:41', '2021-04-26 00:07:41', NULL, NULL, 'Anulada', 'Zo jave ba ojbikti nik tuj pehotu gicijbaz ovibup zawbucig mi ejwabul gadubdi wu musko we foel iju la kukdukgin.', 'Fehloeto amviftu duhewut kefpe jorheleb diruca zowsijko kubowhed iju zezvizdi.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(64, 8, 6, '2021-10-09 01:22:08', '2021-10-09 12:33:08', '2021-10-09 13:55:08', '2021-10-09 13:55:08', 'finalizada', 'Jobowud rufer vobkutbu wab tisen cogmoha jazoep dutakhoh zelwofes pusopa ron ajatuela upkemas kozel di meil ehducri cobenos cactic vinjefad.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(65, 15, 20, '2021-03-14 02:07:42', '2021-03-14 14:58:42', NULL, NULL, 'Anulada', 'Figi popbe li gu diputceg comi etu kupa julcur relkazpa kog suimajob upli ejiadaze fov macapgo ilafawe zotnuzva bekfizor fo.', 'Te lemiwen iwure gidrubzo epmug ero mo oku iwoasiku tetije.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(66, 7, 4, '2021-11-01 04:32:48', '2021-11-01 09:31:48', '2021-11-01 16:33:48', '2021-11-01 16:33:48', 'finalizada', 'Du ul haw bevdimab wi hugum tokakke fa al wiel did as hoil tos laru buj moet mus suszicac dirpik.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(67, 9, 18, '2021-03-08 08:25:03', '2021-03-08 17:42:03', '2021-03-08 18:18:03', NULL, 'enCurso', 'Ulazes bez ke ekepep wictopgi meop olalir hu emefat esnu am semja ovuivo rojwi jusu naz duijos zenuv poaha iweuccem.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(68, 14, 5, '2021-04-16 09:56:54', '2021-04-16 13:10:54', NULL, NULL, 'aceptada', 'Totozoz lofo lowi sage ol ficorco mobtem igkaoh mos lewe nesu wuhosdu ir woun juh coh al tu rem majlom.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(69, 3, 16, '2021-03-10 02:39:16', '2021-03-10 08:41:16', '2021-03-10 11:00:16', '2021-03-10 11:00:16', 'finalizada', 'Mecuf onu ariduh abahimnur re gobid rebkumov do gi wozenki cim kasu eca vak jipofpas owogovdun fiswadjo ezedoopo vu vo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(70, 1, 25, '2021-04-25 06:33:29', '2021-04-25 14:24:29', NULL, NULL, 'Anulada', 'Kikso mohisuf vihwudif pa takokaw mercuwle feafubom zutecwa puajmud ja pi itu legikofi riwujva efoner dadta ok jehtipges juvobe ded.', 'Fi wonahgu reblocuh nacfopru giruzaba lo wor bugjat kalme zisop.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(71, 12, 6, '2021-11-28 10:17:56', '2021-11-29 00:54:56', '2021-11-29 08:38:56', '2021-11-29 08:38:56', 'finalizada', 'Duze zag bi bos fazraab ul setzabu ossevu rulpad uru ida nok goobki ojugos buzkilaz eh mami wu ralcijca izuocotob.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(72, 15, 7, '2021-10-03 07:49:56', '2021-10-03 19:37:56', NULL, NULL, 'aceptada', 'Nisna fihkob gidlufuh docfago piczel ivvu jovgelih be hi kenar pehekuv toruf dog anahak vavu wofugin uj delerbap loge siljil.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(73, 5, 1, '2021-11-13 10:11:57', '2021-11-13 18:35:57', '2021-11-13 19:01:57', NULL, 'enCurso', 'Futoro pad nenegfi fabutar ecu mefawu cemi cuta jol fev fovivbo de zik abpe ho ikavapo amase bo jeepgu nuzom.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(74, 10, 7, '2021-06-10 10:21:29', '2021-06-10 16:27:29', NULL, NULL, 'aceptada', 'Relteh aligudo uf avulovag bet nad nakot aggebdin izicuwbo ta uvuiwa hujgo abima tekremnuw jaccoto teuk emo oje ropmiw tag.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(75, 12, 25, '2021-05-01 09:53:31', '2021-05-01 16:08:31', NULL, NULL, 'aceptada', 'Ot aclap fewa pawegdon jokmepir pekawa se re gewaskij nipbiip agmasep div nub johpa ebiweh itojogfaw ge latfubeh toar baiwige.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(76, 11, 28, '2021-11-14 05:01:51', '2021-11-14 13:43:51', '2021-11-14 13:49:51', NULL, 'enCurso', 'Uvokjud ud ev jajiti awa vitotmi tu gajo bujiwi pe puzdiwel taezo lasew omifa for zotinedi bolusa uvuba roed tolmaz.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(77, 1, 13, '2021-01-08 08:45:33', '2021-01-08 20:38:33', NULL, NULL, 'aceptada', 'Hedumal ejujif ekcaf mog guvih mulfeze pi ku neludacu udi lebu keh fufejwu tebas bepiv peweda edal mu garughi jih.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(78, 2, 28, '2021-07-06 08:37:04', '2021-07-06 16:08:04', '2021-07-07 10:14:04', '2021-07-07 10:14:04', 'finalizada', 'Kanez iwif ugzuj jit jojfe nij wuevanel tujovhuz vada huop sun jakpigigo wawpidra nez riboduac ohoepatut ziwe divub gupnad cuezi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(79, 4, 20, '2021-11-18 03:23:57', '2021-11-18 09:34:57', NULL, NULL, 'solicitado', 'Voap vimlah zesup isev uga dodubha lo hihnuw pi puci hulkafo edrasoz kod ubbuksop sivafmi faru vaj lid mepev emoju.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(80, 10, 14, '2021-10-16 04:58:45', '2021-10-16 20:11:45', NULL, NULL, 'aceptada', 'Vechid nijjeewe mubrij ozozaefa vo wo vochi napo pu wu jemolno vivta ife siasaewa oferutil ka po cus zudubi neham.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(81, 9, 5, '2021-03-03 01:14:43', '2021-03-03 11:40:43', NULL, NULL, 'aceptada', 'Ra worvef jucedle fedaina leenze javtes zedfe kezpafmul zun cepwemle obi nis buf ew depeafa cezuwpen ficpu wiji wikzomose buotoiju.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(82, 3, 2, '2021-06-28 02:41:31', '2021-06-28 16:29:31', NULL, NULL, 'aceptada', 'Da coni zubke juc dagdazjop ne lativ dep fiszovji muaj iho kok sojledir mir opor mahimec bis vinudmum vavfac osbadvi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(83, 13, 6, '2021-06-09 09:38:13', '2021-06-09 22:49:13', '2021-06-09 23:25:13', NULL, 'enCurso', 'Vohharzun tor kuwwovre opilibid rowsarpo cowtaj ufurigu bud biru debzo novet edodatab duhekto jicalo ufu tegacke luzwi becdunam ri hij.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(84, 4, 8, '2021-08-25 04:04:34', '2021-08-25 12:11:34', NULL, NULL, 'aceptada', 'Zabud kuv ham ciz bol tohibub zunim hikwumgam avjamzoh cin jow tupowcuw hidtur saf puleli nefa jabfo nulab sugufi wavi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(85, 9, 12, '2021-04-18 03:46:29', '2021-04-18 06:19:29', NULL, NULL, 'solicitado', 'Capij linifhi ha otbewin jaufupak secgo pub ni rokgug boov uriropdij lucudgip re vik kamodo tewgal da cobca fi ratda.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(86, 14, 27, '2021-12-28 08:56:40', '2021-12-28 22:36:40', NULL, NULL, 'aceptada', 'Johsal budfij cesjuoh tosutud umo pe nuup meb idsori cucimaco iditoz milsekbo jebca re bi fichu elo fed jatwatfo uj.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(87, 12, 14, '2021-03-02 07:46:20', '2021-03-02 13:33:20', '2021-03-02 16:00:20', '2021-03-02 16:00:20', 'finalizada', 'Safiaw lanif nah ci cismi ziklazlo di iji wawhihaj faj sul akulag olepojij ze vebdada hofeptap monsojrec enarif aw ejecu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(88, 5, 4, '2021-01-02 11:19:45', '2021-01-02 16:45:45', NULL, NULL, 'solicitado', 'Ifi refer lied wakofik ced sof oge telzezro hin wisvifmi lucaniguf ka ganiez rogniw re megfib aptefij wapipke tuv zumacurun.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(89, 1, 4, '2021-07-07 09:55:50', '2021-07-07 15:34:50', NULL, NULL, 'solicitado', 'Tiswibid nadbikiz valatma hob wohakuze kan zi comwum ochi zagofno avhew zahra ja sonojif tapirzoz zes nuif neh zirfel meco.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(90, 9, 26, '2021-03-04 04:09:42', '2021-03-04 16:21:42', '2021-03-04 20:09:42', '2021-03-04 20:09:42', 'finalizada', 'Mihju baarcid sov sul liahrel iru risrufkaf haroc sescur suuhhu ezcun olulim mebef luplavjej guwhikduz misev kabrimpi not tom toila.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(91, 11, 20, '2021-03-29 12:41:19', '2021-03-30 01:24:19', NULL, NULL, 'aceptada', 'Janjucsa wirafe no wofergik rogi ze hujdu debeba ok tahtapdov bu vuve mu walhadzez pelulisih pehug picoh cizci aknelel ud.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(92, 14, 20, '2021-03-14 01:34:37', '2021-03-14 13:39:37', '2021-03-15 05:46:37', '2021-03-15 05:46:37', 'finalizada', 'Lejrawru joofho kabkim ekavenepa habait suvrasub nadirdi olo kujo pariwe hecih gunpibu ege zaaneeho ceru upevib haw ad daj ido.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(93, 15, 14, '2021-04-26 07:10:29', '2021-04-26 09:57:29', NULL, NULL, 'aceptada', 'If fujgeva jo cueguce bapzoguk wurborhe dof sewmo waloz ubasol sevafdo keufwak kewnurim vup kuucfac voejhi jas cob dog sem.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(94, 10, 19, '2021-09-10 12:19:20', '2021-09-10 15:43:20', NULL, NULL, 'Anulada', 'Deiwaemi titise ubover wi awucoc ap ko nogupud tog loj covdagfi wa itezeis mopogupew lu jew helugaek uhmasrew amtef piobi.', 'Hiw fusiz nemrul ateuronad susoca udid mekvirma itjuwof zuz hot.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(95, 5, 15, '2021-05-14 01:50:54', '2021-05-14 05:18:54', '2021-05-14 11:00:54', '2021-05-14 11:00:54', 'finalizada', 'Del evhokiw wugca hus hiw no zebfu bogzim bo ze wukas co su vodef hanu erarol horekap wetner tih tadoita.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(96, 10, 4, '2021-12-30 10:54:38', '2021-12-30 13:31:38', NULL, NULL, 'Anulada', 'Ow aluncib sicugij funon juvpud ca du fev luras ku or nalozjo unmo ohonugpih zuvumib okacok botfi zad uwosogkum nezencin.', 'Vik kofiwro abezasfan osvabcek pulumuul budomok na bejome ku tigum.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(97, 15, 25, '2021-09-23 11:28:46', '2021-09-24 00:17:46', '2021-09-24 01:14:46', NULL, 'enCurso', 'Evori gaj mun pupuzu acri zerubje calrol vu fihvupji ne vobe woggemfok notgav rebkote wed jof der tulamog labakuk va.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(98, 6, 7, '2021-06-16 02:06:22', '2021-06-16 11:51:22', '2021-06-16 15:55:22', '2021-06-16 15:55:22', 'finalizada', 'Ko zeg codbe pobe jefamvum norhop pe otiduje hobzooli jo oj jesesca rav woaszi cowgiido taw udki gezegi pivotu miutir.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(99, 1, 15, '2021-02-20 07:28:46', '2021-02-20 17:57:46', '2021-02-20 17:58:46', NULL, 'enCurso', 'Foj apo cihav devo tu kezwasor sahut ni onla dopgirtut iv webra izehus uv erlo nog lap gah watveul guwhum.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(100, 13, 19, '2021-11-19 02:02:08', '2021-11-19 13:24:08', '2021-11-19 17:22:08', '2021-11-19 17:22:08', 'finalizada', 'Udaciz poflahso sisole nofari novci gew lucu zukolo umoci vupaj ka zute culhum sonpav segwaliw bohofaba dewha sojipvog nurubem begotomo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(101, 13, 25, '2021-06-30 09:49:22', '2021-06-30 23:36:22', NULL, NULL, 'aceptada', 'Pum lam am kolases ludbu va vem on wiralep abahomos legadlaj woftakfo jusebos cijpa izupat tewcekefu ehuumo geg sofuzi patcew.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(102, 8, 13, '2021-08-05 01:51:58', '2021-08-05 12:40:58', '2021-08-05 19:27:58', '2021-08-05 19:27:58', 'finalizada', 'Fethuum nosfepeb zohwuke mihtimen sa tuw goneg wacjoczu kawvono nocidhe amo bas enaolu pik majat wag kotagecu goli faben uha.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(103, 7, 25, '2021-05-09 11:47:05', '2021-05-09 15:27:05', '2021-05-09 16:14:05', NULL, 'enCurso', 'Kol bizoah tufdug zu jas nalisroh we isevi uru co cuwelle ditmizko negam wosuupu bilpevuro tippuwpan no okaga tomdo jajuoca.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(104, 4, 24, '2021-09-02 02:03:04', '2021-09-02 11:02:04', NULL, NULL, 'aceptada', 'Malco ta visa mi izuinfug ojatu gu binid ipkalic sa heno zore pevfegi kumoz butuv waz opubuaz pewnubtaj dupu ruz.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(105, 10, 20, '2021-10-27 01:54:13', '2021-10-27 10:23:13', NULL, NULL, 'aceptada', 'Inovdav lu guor ko hip zu nac amopej nilguhkih soz tup fakrisfem dit banduzapu fugdoaru tob lel ki diw ibdefzev.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(106, 7, 14, '2021-08-10 02:30:34', '2021-08-10 11:54:34', NULL, NULL, 'Anulada', 'Ni ihuit oveub ojaza utjuthi cuknof nalupez puhiheeva mivdecne comi lesim vesudeti tevrutoz fad koz ju japez so itu juvof.', 'Louma su vude tub rega we tar saewge abuji kipe.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(107, 12, 30, '2021-07-05 02:04:54', '2021-07-05 09:19:54', NULL, NULL, 'aceptada', 'Weh mod seos uruho roevja hincaje pibiile ni igaja peg fowbunij ir tut icji gahuka kiwigde es ga hu otajub.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(108, 8, 15, '2021-07-16 06:04:13', '2021-07-16 18:13:13', '2021-07-17 06:02:13', '2021-07-17 06:02:13', 'finalizada', 'Arte te uwejhi pa se godew limopnad bibruc vuobumah kipeke ifak meg paahuid kuk owe beduhan vo omipif ta riganiz.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(109, 5, 11, '2021-12-03 07:15:46', '2021-12-03 14:42:46', '2021-12-03 17:10:46', '2021-12-03 17:10:46', 'finalizada', 'Ler reghac fubnal bu gak tefwa hul gu ligiwin deshi wezasnak wuromah gim kicobein jeg mogzob hif kefita ugonerib olzodi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(110, 11, 17, '2021-06-19 10:34:10', '2021-06-19 21:38:10', NULL, NULL, 'solicitado', 'Doc gecejgep bi su mowgo neguna lijti guzda awosu nelucre hodafa faj gimavmi cariac zuctu ussovit ranmopme zeafasuv leguti cel.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(111, 5, 13, '2021-08-25 08:55:08', '2021-08-25 19:14:08', '2021-08-25 19:55:08', NULL, 'enCurso', 'Toc mandacube vow kafa etorivam cocabteh ar sutalakej icabuum opijiik tuzmag rimiz mujefo vowweppan du ekirovot lo onoavi lobsi mu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(112, 13, 4, '2021-01-13 12:39:25', '2021-01-14 01:05:25', '2021-01-14 01:37:25', NULL, 'enCurso', 'Pigi talritpav ka gurap wan podkap cumo esu am ra gadseja zi kezic ibu lenivuz woc beac umopu hi dobcidzi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(113, 13, 9, '2021-09-26 02:22:32', '2021-09-26 05:57:32', '2021-09-26 06:45:32', NULL, 'enCurso', 'Upopoedu jelidij gugdugu pul badku gif cecjamumu vatuwug lutruldim beow fu cemivu hujzu hitvas kel rivna ihu fotos repub ene.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(114, 13, 1, '2021-07-07 06:40:59', '2021-07-07 18:15:59', '2021-07-08 10:49:59', '2021-07-08 10:49:59', 'finalizada', 'Juijieje ju zour cepaco jefo hez ruczel viunune ugawag te sullowevo oghe iz id bosupez sip enu napuhga bizde jil.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(115, 3, 24, '2021-08-29 10:23:13', '2021-08-29 23:59:13', NULL, NULL, 'solicitado', 'Kiw vogluwef fe judaaw jekuzi falwuero nihba acceholi nol dofe tais kopuom gocewob mev vulowzo tiba sorozal koku nane bijaen.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(116, 5, 20, '2021-01-22 12:57:09', '2021-01-22 18:39:09', NULL, NULL, 'solicitado', 'Awa ekobevni jel timkeubo koahofon panbu vab jagub cisga peog pasjun huuke ciuturek vah iv rivic tufik ze da zak.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(117, 5, 15, '2021-03-24 10:41:51', '2021-03-24 21:02:51', NULL, NULL, 'Anulada', 'Owbuz ugja tiuja dudezfa vazamfam fiawimi ebaam buter julaved jooloda desmi funutzuw imema kawki ca zupu monraj bacuthit lilpulefa bu.', 'Juhuphij cegij hace ok nadak cogozzaj cosvik jejo bot dukuunu.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(118, 11, 20, '2021-08-12 08:00:10', '2021-08-12 12:54:10', NULL, NULL, 'solicitado', 'Selku ju mapte zafaf alupuv og do gu fagicedi gogzeiba semsow penuhij hin akuaso nergumlid meuzti uso woloren hegheso tiisi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(119, 8, 6, '2021-06-25 10:43:53', '2021-06-25 20:00:53', NULL, NULL, 'aceptada', 'Hien ca jaho wiaraeja lezu kopmajsog razlu zece inbel vuh obo kuvep ozofne vek lasucref hizsac gajnu ubo ak tu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(120, 15, 5, '2021-06-07 08:12:12', '2021-06-07 22:25:12', '2021-06-08 10:47:12', '2021-06-08 10:47:12', 'finalizada', 'Tiji socitja nabetne me tif cav vuvuak makajicah fojhoc hanode uma ervew tef lijhaeme fabzoj cewra jihaz mubuwokoj zis porahso.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(121, 10, 2, '2021-07-10 09:52:23', '2021-07-11 00:51:23', NULL, NULL, 'solicitado', 'Gi wejbiwri tonubiza aca ham co fobec na vi lobef ahducgaz eja ke ve ijagirog atligi pocimlud faduhara ikoimo lugema.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(122, 8, 7, '2021-08-08 03:33:41', '2021-08-08 09:55:41', '2021-08-08 12:02:41', '2021-08-08 12:02:41', 'finalizada', 'Tugap apcudig budjief mi vad idfin efsu matuc ugozwi rekcih dov lu muon tab ruw wo cel ke ig mumasu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(123, 5, 14, '2021-03-20 01:44:56', '2021-03-20 07:36:56', '2021-03-20 08:17:56', NULL, 'enCurso', 'Tabo uhlefta luver kodpozud egadapu ulnus kiparsu nuput weza vapo zutti mezsaf lir kadi cam gipeuz ki worukiune mu le.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(124, 2, 13, '2021-01-08 11:23:33', '2021-01-09 02:04:33', '2021-01-09 03:03:33', NULL, 'enCurso', 'Cifpem mepuczu erutowuf ikcocdeg ufokige vagbu usubudbu orloksa konon zalimonu sukinno talmawi wap goba suhum jipebpo zogajil cietu te nuh.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(125, 1, 22, '2021-01-11 07:52:30', '2021-01-11 13:48:30', NULL, NULL, 'aceptada', 'Sauzued gauhipo gevretasu febuj zuf bigawu ugoleluj ciocjo we rej porekton zukre colrap da sa to usluvcuk ewu mu ed.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(126, 11, 6, '2021-11-12 10:37:42', '2021-11-13 01:48:42', NULL, NULL, 'aceptada', 'Pumva tel ojgadun sizafek vundebom cubicber loegiwuz bav culropsi hubpala wof ta sadodki vamoul ozudu gu od zoscumam rod roawoli.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(127, 3, 11, '2021-11-20 09:03:26', '2021-11-20 12:55:26', '2021-11-20 13:16:26', NULL, 'enCurso', 'Teftuma utimceb bi fezoluniv omuiwu dekjo mufzi tolureg ohagitjal ze lajgewvo ur ileze vobed etweat epa hu pic etdinwi ziz.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(128, 12, 13, '2021-04-10 01:34:28', '2021-04-10 06:23:28', '2021-04-10 07:57:28', '2021-04-10 07:57:28', 'finalizada', 'Upnoomo fevih ifese pouh uliudo jus hohuci jiv ja dus ta su ivohec vasonra mi tabsedic togubooji adajug rude luzdonaf.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(129, 6, 15, '2021-09-11 11:37:55', '2021-09-11 16:45:55', NULL, NULL, 'aceptada', 'Buasojit epewe lucga aficoz cejeni pugteg dejak lodesuf tapsoep tug cat uwdabnez fe vakrugen opoupzi azho dif dim deomocik taanne.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(130, 14, 22, '2021-03-24 03:28:40', '2021-03-24 18:36:40', NULL, NULL, 'Anulada', 'Avoguwet keskaduj odmi iv fura gi bantob loslijjen lidgoc sajesiciw wom mebzascew hunzibdo rutur da nouku ge kabizeke kahutewas peepho.', 'Zo orehoftu ab cafefzow irtat etpacceb eco oki aze ina.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(131, 2, 1, '2021-06-22 11:52:18', '2021-06-23 02:00:18', '2021-06-23 03:36:18', NULL, 'enCurso', 'Webiceda uk nirnecjo uho iziwu ecoad wa izotetip re mifepu ab koz guworko wag jaov juv bozwoj heiz tibecla bas.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(132, 6, 28, '2021-12-15 08:04:40', '2021-12-15 13:50:40', '2021-12-15 15:02:40', NULL, 'enCurso', 'Tucevpa jasvicbuh os loswisac hotiwet faloc ku fe malima sibog zojaw tiljira fabmiv vukgeznes kadibze wadbi ca etopeho ci nod.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(133, 9, 22, '2021-09-16 02:13:44', '2021-09-16 07:04:44', NULL, NULL, 'solicitado', 'Cow akodi ko neg nezosetim fiwna ba ge si libob bigweug caj pinwupin hatezki denveha vikra jalu nah tujoz cogodim.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(134, 13, 23, '2021-12-12 08:44:08', '2021-12-12 22:49:08', NULL, NULL, 'aceptada', 'Zomogim ohe fivez jolo majigo ja mazpafecu wep foubofo famdej beznelap sabuf pomokup fami lop mi kutojo dakwicop massa mokna.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(135, 1, 24, '2021-10-08 10:46:46', '2021-10-08 15:20:46', NULL, NULL, 'solicitado', 'Bi og dif uki uvaneze zu te pacno edalut ro egzaci ije misulaji enuvepube abzutvoj gamevam vere ud mevjuv abupez.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(136, 7, 3, '2021-03-10 01:06:00', '2021-03-10 12:41:00', NULL, NULL, 'solicitado', 'Isi azracu nicsohu toj ramtujog bumsar vihar puvimnuv dadgucguj denu gieceza kujsek ehre ruugoisa cenu care izepinjew kujwe wot ci.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(137, 2, 18, '2021-09-16 04:53:02', '2021-09-16 09:52:02', NULL, NULL, 'aceptada', 'Cuhwimo ukawoki re jane ultudca ced kaso jofozfo ukeol azolav zop zagizhel fo fe asrolaju redti his noca lanpatomi ufewwe.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(138, 1, 17, '2021-02-22 02:48:02', '2021-02-22 17:09:02', NULL, NULL, 'solicitado', 'Folol befora wumzaco buha ofuwokajo juge fibrimwal ivnecju ugte le hebodi zafolo wikeru elegi ijimihaf wuoze juvbu hi lajudi ikuwoton.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(139, 6, 21, '2021-04-13 03:04:02', '2021-04-13 16:46:02', '2021-04-14 08:39:02', '2021-04-14 08:39:02', 'finalizada', 'Sa ecaufu vatap gophum tocomo ha ovulacolo direlag nalreh zawocbu nizlo moteb ef jejeggi vazatahu usuze jedgim cujgamac iconu ozdojto.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(140, 14, 10, '2021-01-25 02:00:28', '2021-01-25 17:18:28', '2021-01-25 18:54:28', '2021-01-25 18:54:28', 'finalizada', 'Sof laja edcok sojuiv ja zomgevem rewmomuj winka cetjerve cuhobu ezohode moh vutidi deenibuh koj os nauhi cegis ni on.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(141, 11, 17, '2021-10-18 04:26:25', '2021-10-18 13:32:25', NULL, NULL, 'Anulada', 'Wiwumataf digu egeca sa zer feghu nu dilewwa uztu jehac bedlekaj ze zapdegwa buum muchic bimzap mubaumo wajosile kurdekpoj zumdidhan.', 'Nussas lem liruzav ow debinpap danhiab kunbi dig ab miv.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(142, 4, 24, '2021-01-21 08:07:19', '2021-01-21 20:54:19', NULL, NULL, 'Anulada', 'Ede zujal safwob ke ho pi kipropzi jobzit so dogguvaj si go ha vawar cufugcu cidmev veri hiczew notkuzne ne.', 'Wosar odti vu ze ul puan asuzevu ojoh kuw divfaoso.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(143, 4, 15, '2021-03-21 08:20:39', '2021-03-21 20:45:39', NULL, NULL, 'aceptada', 'Liwigoca hej coceusa orikuav rarugo okfuzhak lirwad ajlos misun zokotmom ofruw sirwoj ibuto ogujardi go wew fuvavijat dihar ewebic couv.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(144, 7, 23, '2021-09-24 01:08:16', '2021-09-24 09:50:16', '2021-09-24 19:47:16', '2021-09-24 19:47:16', 'finalizada', 'Vi sunlal di fawse zu cim nierimud oha haote kagbum iz co ce curodra wu zoofe dod hu iviap eh.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(145, 15, 9, '2021-04-04 09:49:13', '2021-04-04 21:39:13', NULL, NULL, 'solicitado', 'Lo losawusa wecuz hih gonweseh coluvlu me givaruub za rol be id sik tolinzob zuto rihobal fij gamecoba luzagnik dahical.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(146, 11, 23, '2021-01-01 07:53:58', '2021-01-01 11:33:58', NULL, NULL, 'Anulada', 'Vegukusop vid ferig irconesu luzmih eknigon zati juhdihcun cis huknuwap la zu bere uwuhejuta tilruhor vicu ejaakuhap no foocikoz dut.', 'Gemri lu jifawip oc wi uzteec dibow ca dituc aripu.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(147, 4, 30, '2021-09-14 10:11:16', '2021-09-14 18:09:16', NULL, NULL, 'aceptada', 'Rolnuwwom comosame zu sob bojcoow haf ki sateta net witholuj zuporte ponar sotgidav de uh zegpulfov zajcen mit fuscup ojsegmim.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(148, 8, 9, '2021-10-25 03:44:00', '2021-10-25 14:39:00', '2021-10-26 02:08:00', '2021-10-26 02:08:00', 'finalizada', 'Zetoz renesep kapus aj lucowzu guru malnipac onufi vak mugucut wegdov gus kibko er wen kobbev vanulo kurgaz kiestev ji.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(149, 11, 30, '2021-11-16 01:51:20', '2021-11-16 16:10:20', '2021-11-16 17:44:20', NULL, 'enCurso', 'Mosza zuhmuiwi nul hen gibip tuwhewni mefser horesbu jiji laifu midzaebi pi tongup medcep zaze gim ubgulwa nubelvo dudbarlo weke.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(150, 9, 14, '2021-12-05 06:29:58', '2021-12-05 22:01:58', '2021-12-06 06:11:58', '2021-12-06 06:11:58', 'finalizada', 'Uj zuj pasrid iwseime fucowo otiegsac duvri hecuzah imcofec rirnoggid opejin ovufiwa joh ibi te gi du dojial kezeto numune.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(151, 15, 26, '2021-09-08 06:06:29', '2021-09-08 15:59:29', NULL, NULL, 'solicitado', 'Lu la bu loje je peftawal vozcavo wewdozre naome rubvid nic veh salfaz pa juwiw zuheuf ic suzizi iku ru.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(152, 4, 13, '2021-04-15 06:05:57', '2021-04-15 20:17:57', '2021-04-16 11:03:57', '2021-04-16 11:03:57', 'finalizada', 'Afituubo pahpapco ge indisuge temidaz alsine sonja werer irocodi dulzithi hepcidmuj wuluk egsifof keudtu pitpesa nisuk alpazon leun huhafa tew.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(153, 1, 4, '2021-09-22 02:12:42', '2021-09-22 16:37:42', '2021-09-23 05:56:42', '2021-09-23 05:56:42', 'finalizada', 'Ikoneznub tabdawec mapracni hudnewuw reheka do tive vicos per biipalot ihnigfa cetogabo rudihos pucjemac tomvarko madu betago juzeta duja omaco.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(154, 3, 5, '2021-01-01 06:49:04', '2021-01-01 11:33:04', '2021-01-01 12:39:04', NULL, 'enCurso', 'So jot tot owmakpef vov ilerofgi goc renuaku zotbalvij fez ommi dopnusheh husu zaug pope ko les jowisrah ed fufemefik.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(155, 4, 12, '2021-01-06 06:56:58', '2021-01-06 19:56:58', '2021-01-07 13:22:58', '2021-01-07 13:22:58', 'finalizada', 'Ur uco unwece gow nimenetu obzi geri ezgiv ga wuwina pirar nijke asfobow wage cozizoz dipvargef me em oherid ludicze.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(156, 5, 11, '2021-12-08 03:07:48', '2021-12-08 18:23:48', '2021-12-08 18:35:48', NULL, 'enCurso', 'Lohirni zojgibbem baki dinulo welvovtif oh bepedap cahiac wof awme kosami zalod du cienigug wufu ve hemusu luwevnif tezawoiko zuh.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(157, 3, 22, '2021-09-15 09:23:53', '2021-09-15 22:25:53', '2021-09-16 07:44:53', '2021-09-16 07:44:53', 'finalizada', 'Zeil zo bevi bubtoap danwop pije lute nefow wev nin ec zowema do geosro imi kumifba wauhese gucezida vuzko uwdizoj.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(158, 8, 11, '2021-07-14 11:27:25', '2021-07-14 17:08:25', NULL, NULL, 'aceptada', 'Juzes mu camfe an tejni aleopruh vopahem rob ejrow vuc tedimmah dewjel dahgoj ruh ke iwojo fosi wa bu nikowke.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(159, 2, 13, '2021-08-16 01:23:49', '2021-08-16 06:38:49', NULL, NULL, 'solicitado', 'Mannejleh evasil abu biesdu jovvuc itenu zuhsem mifi rovko ibajitosi vo vumokgoj alca ri vareaze vu we poviwa famce huvurih.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(160, 2, 29, '2021-08-05 09:05:59', '2021-08-05 23:02:59', NULL, NULL, 'aceptada', 'Fesuvcas pumefsaj ek kajaiw opuzire hekilo iplip zow pokakocu maki pif kupcucap rar diciruzu favlaffe ajpepfe neosgif sejukoki rogkocah wa.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(161, 9, 25, '2021-06-20 01:42:59', '2021-06-20 16:53:59', NULL, NULL, 'aceptada', 'Me pipta curodzab gerepegar lekso nu cetre laceco cujnufik wiv hufdacam jipon sazru ivihi sozip otu muwov riuhome fachucrob utubfe.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(162, 11, 14, '2021-05-31 07:25:17', '2021-05-31 17:44:17', NULL, NULL, 'solicitado', 'Kaasma ha tecari rafaisa wofjeljeb lulog jo rejduh wij wupis red vemvem ci ollot juwut juku iwmi jabni ivrufe juprilej.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(163, 6, 20, '2021-06-17 12:35:08', '2021-06-17 15:34:08', '2021-06-17 21:26:08', '2021-06-17 21:26:08', 'finalizada', 'Viudajot zosozija lone bahtek wingobsag hogdagkud mi jacpeji be fokab comiw gaed nole cib tojpip da huej ehufab afivlan viuto.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(164, 12, 22, '2021-06-26 10:17:19', '2021-06-26 14:37:19', NULL, NULL, 'solicitado', 'Vuwajot atfis kanbowi wuhfisde pebzeja halohu gufekro sialu deh ubo kukus ruivi wi jef oki tahuso mag nebasze dotcibwa mugukehu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(165, 2, 20, '2021-03-06 10:12:56', '2021-03-06 19:32:56', NULL, NULL, 'Anulada', 'Omejiv pozitlu viba gawepvak is vu kaga suke bablagdo muhi elcehod rewcoc ecuj juzako tun taguv gapid vad abe me.', 'Pubareful sati jovu taebo oguso na avdew kevatzot pa tiwior.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(166, 2, 13, '2021-05-08 10:49:06', '2021-05-08 21:59:06', NULL, NULL, 'Anulada', 'Ebo abmod po rewha luete nib fupenep ezkamwe ralhab wanij oz disjij azozuf eb rofen but ge esow ezmi ziru.', 'Bowiul ja vekoluceh taj va elewi fak jivek up weed.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(167, 14, 29, '2021-11-26 10:23:35', '2021-11-27 00:45:35', '2021-11-27 13:41:35', '2021-11-27 13:41:35', 'finalizada', 'Lilfodwod disledih fanjigfi natapo mabfim nenuz an tah hilbik coku pe tosod seve huworid pebapaoz pezle hezi ke labzaere roh.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(168, 2, 14, '2021-07-17 05:25:58', '2021-07-17 09:25:58', NULL, NULL, 'Anulada', 'Kagob obupupihu ebefosa bovomah tob dapawgi men ge damejre war ziz ovipej kekih jupenre hej kiwzeuv heko koipu ninieho rimwoz.', 'Uwiwim neciso oc pukdof lebertej ta dohipago dupit wanri cuj.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(169, 15, 14, '2021-10-28 12:47:02', '2021-10-28 22:03:02', NULL, NULL, 'solicitado', 'Kur mesu mu imme nibef muc tinud awge mesow mezjukke pelotdav hazfutun ge rupira bo arekadzos pi hofravrug ce pisivmaf.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(170, 2, 6, '2021-02-16 02:50:55', '2021-02-16 07:20:55', NULL, NULL, 'Anulada', 'Lijbutu olu camobok co kepu fit givvehju tanol ofagu wija nunowaz hu ganbefop cijud cura ef hewu gocpegko ibhaz fin.', 'Juthiti loelo te ahmu pukdidi zubnobi re vaffelif hun kouci.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(171, 3, 10, '2021-01-18 03:52:59', '2021-01-18 15:07:59', NULL, NULL, 'aceptada', 'Volat beco jepevjur jubbe filacne awofuilo are cipud lojtuj toalu resoj apbez pi arehaj kim wujmo nil ir zaimo ar.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(172, 6, 29, '2021-10-09 12:26:56', '2021-10-09 20:50:56', '2021-10-10 03:44:56', '2021-10-10 03:44:56', 'finalizada', 'Afa boguncos vamakla na uh pi cam huh lahioke ejiril ferug gipebsoz iro der odabit josebik min tocikuuwa guk zowe.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(173, 10, 16, '2021-02-22 07:18:24', '2021-02-22 09:50:24', NULL, NULL, 'solicitado', 'Fenuta vidahefe mi guton faj dume omatopa aco vi ma peha nah isieha jazbisaw oj panroggo bifenul jizejmo tefe deibu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(174, 13, 13, '2021-12-28 08:11:32', '2021-12-28 13:40:32', '2021-12-29 03:22:32', '2021-12-29 03:22:32', 'finalizada', 'Zuhuj medocfe sumej tigevuw mapzow jodezzof lotam seohiise wifidgun abewis mak ki ipdirez us nefvebzu op jusul wuscinkaw nezhin ahanaggi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(175, 2, 23, '2021-05-27 10:33:57', '2021-05-27 17:27:57', '2021-05-27 18:47:57', NULL, 'enCurso', 'Agazic cab moc cawijpa taharlo cuv pafsuk cajuffu il fuj kuisiok fafnonon bofadruc cabipo osi ovvivev ekja povovu hun pikimig.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(176, 12, 9, '2021-08-30 07:20:56', '2021-08-30 18:31:56', NULL, NULL, 'Anulada', 'Ovedovbel vug amow lobpenac ice suw ri jolde edpiup gow edsi doeweaw oh lume wajir li ohcapabe mewesi poluhubo fi.', 'Haduho kak uw zot zedoc cagfidi deffoof eluej si geerul.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(177, 2, 1, '2021-01-13 01:45:18', '2021-01-13 14:06:18', NULL, NULL, 'aceptada', 'Tefe jimnozut cafakge ca hero lezukgum rij im lok ata kanasuce ifbu bocunuh ledacena hiod jusombo we eherikso epa bozipi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(178, 8, 13, '2021-01-26 02:33:02', '2021-01-26 18:03:02', '2021-01-26 18:57:02', NULL, 'enCurso', 'Su bad volboede cuhsag onjivran hokojheg jo vezlilit dek zek lizrutuj nimofzo hew wic caztot jigpebpah bi upuzupop jovehidu olvi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(179, 8, 3, '2021-11-08 11:05:31', '2021-11-08 16:32:31', '2021-11-08 18:01:31', NULL, 'enCurso', 'Betak foleskig cajdos dubu te fur ca zovafcu zopleg litici cebad sukegi samodge bub rok li tuwhudi uramanbi ori vehga.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(180, 6, 26, '2021-08-21 08:32:10', '2021-08-21 17:48:10', NULL, NULL, 'aceptada', 'Nukajnov cerivme cuwvebvu uhugoczaf rob hiuco nib erbokga gi geh sewisar hikehe fijgovaj niw ihfeg kojejteb copro ga kudworzup asu.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(181, 9, 28, '2021-12-05 06:00:25', '2021-12-05 17:59:25', NULL, NULL, 'Anulada', 'Tasjubnu kiag saucenuh zedho povopil vewber nidehaka ham winum woscuvun neg hu ijjici fam wukirje solili isiepote ko fu pouje.', 'Geophu ofeinoupi dukjub tiw warwe kumbetna dep toka fogevu oknatgi.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(182, 7, 14, '2021-02-13 02:41:35', '2021-02-13 06:39:35', NULL, NULL, 'solicitado', 'Sotfawo onmira abolilce torub ifoca mogegbep nos mo ce joncu du nanisom udfowfez damef wikjuzda ujadur faf idu pelmok jutbes.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(183, 15, 17, '2021-07-31 07:24:22', '2021-07-31 10:28:22', '2021-07-31 18:35:22', '2021-07-31 18:35:22', 'finalizada', 'Fu izkozfun ha lohfomur do dijuhza zik cep apa zin pev majud geguldu mi pabvem pa leswajno en mavgif esa.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(184, 3, 17, '2021-09-11 05:18:41', '2021-09-11 09:45:41', '2021-09-11 10:54:41', NULL, 'enCurso', 'Vuhre sonwo buv vakiano ji moaf ma ulorofuki kifkavevu buw uh amorudliv dawir uzufaug comimco kid witcaswur ipge rorhor amuzecki.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(185, 2, 29, '2021-01-28 07:00:53', '2021-01-28 19:42:53', NULL, NULL, 'Anulada', 'Gezu wozi gat hojip zutojog zawdujac zih rawkages ti lu hocun usu vemit unugobi hamguwez kapifop hibnapdip burwo redotiz cuv.', 'Pambanig ruvoej iwi patijde sog ne tuf zun gi potvul.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(186, 3, 25, '2021-02-18 03:09:16', '2021-02-18 08:45:16', NULL, NULL, 'solicitado', 'Cabril dujkuz rawipos tez gavcajuji olkavu lunum nij igfuh ojguzo biclo li enuenu dav vicok mibicol wo gafzesvip atireju wuit.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(187, 11, 24, '2021-02-06 07:49:14', '2021-02-06 19:23:14', NULL, NULL, 'aceptada', 'Ru opugo ewkaiw niwko ilisuafi idakacem guwzirleb uritituh ojazikad om cefgufgu deap mewoh gi wulovka fijcazda goluzufuk lopodguk eh ha.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(188, 1, 25, '2021-05-15 02:13:25', '2021-05-15 13:58:25', NULL, NULL, 'Anulada', 'Cola letosu ra nimu toc femuut sicti go el agruvat roit ucuojuv ishaug le siak rew azivef mahifsod do tabot.', 'Ja ha lejbon ca vahigeag osvuhuz lahevle vadacwen akokev udhaki.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(189, 1, 7, '2021-04-28 05:08:43', '2021-04-28 13:51:43', '2021-04-28 14:45:43', NULL, 'enCurso', 'Tarazhi aka riozha lomif pi tug wugla unoengi keus jojifrev focrone vud ujaulfo kos culhe gagurmo hehup cisfi fa lod.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(190, 15, 8, '2021-11-26 02:39:23', '2021-11-26 08:49:23', NULL, NULL, 'Anulada', 'Zufi keslonmej abeodizi civnem wadet daawuavi sowsejruf baander ruf bi jaba govtajpu rezguv dos oti su lelimiv in meile lucid.', 'Corfes hoh osmuut izu ha wuhaf zis so ohiahi so.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(191, 8, 20, '2021-12-27 03:30:55', '2021-12-27 17:15:55', '2021-12-27 23:19:55', '2021-12-27 23:19:55', 'finalizada', 'In nohak gi amtedoh sujuz cudta utovoija pibudpus asla melfacgu nufatohu tesbov puk mof viez efoimuzu vatahab zimhecke birderwo tabioc.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(192, 3, 11, '2021-06-27 07:53:24', '2021-06-27 18:15:24', NULL, NULL, 'aceptada', 'Hedeniv guhug padopkor bah waz letut zujdilli bucwirac becba eladi ce citbi ad hipgerub num disju kumocfi vibhe zosher jamasca.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(193, 8, 9, '2021-08-21 11:12:44', '2021-08-21 14:27:44', NULL, NULL, 'Anulada', 'Hoaw gar buzheur guwmakli vijri ruv mupabike vuza evzozca piw hol tape lusicu gedi wukowe romakim bafe muzupni ifizabhis gej.', 'Gitja del edgega pajbospuc lugra ojout zi teplesuj ge zococ.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(194, 13, 28, '2021-06-04 02:03:00', '2021-06-04 13:33:00', NULL, NULL, 'solicitado', 'Pentir sishinwa wurohak isvi pogucdi ave cesij donaj of sekpoh etime rufned zotopeleb re jeiv siiv lik ok asalizes rukkal.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(195, 3, 13, '2021-03-16 10:45:36', '2021-03-16 14:07:36', '2021-03-16 17:32:36', '2021-03-16 17:32:36', 'finalizada', 'Zagu mufe hifrig ivunu reuteoga ukezuz lotidehor bidluni teum mo kail uroruzju aka jeduz bomewo lovowo kimzohtu defes if fesobari.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(196, 9, 22, '2021-08-30 02:10:37', '2021-08-30 13:07:37', NULL, NULL, 'aceptada', 'Koptemub zasopib noglub wo sucif vo ehupi paluro rioc lo sirikkup noskaf du perut godmuk mamwowa ucamon bifgedu tu nunzanamo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(197, 10, 9, '2021-09-10 08:46:36', '2021-09-10 11:30:36', NULL, NULL, 'solicitado', 'Tenur zal fasusa heweda jefav divraz kuzol docuw vif la ovo uwego jo naab wi nuzimosac fazdiv bec oj fe.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(198, 10, 18, '2021-06-04 09:36:46', '2021-06-04 16:45:46', NULL, NULL, 'aceptada', 'Cokfenba toc cakgogo hoviica mapadra zuwala kita pol ep rov kaen kujo se jeacaaso genwuvod hoal pavpi popi jaezlu iwewo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(199, 13, 28, '2021-11-29 01:04:15', '2021-11-29 09:16:15', NULL, NULL, 'Anulada', 'Buv goj welobhe jolfeljo ta fin oda nup luw vipgukgu wib cehoz udosiba duru akzuzuv kov va biwauda ekocuzjop kicnoif.', 'Ziacu izpupgi hi hegjodad fidgigrud tu huimjo ru sawtov sebket.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(200, 11, 24, '2021-06-05 09:19:08', '2021-06-05 19:09:08', NULL, NULL, 'aceptada', 'Bi kotozza zanku peca po cuv mouci ofi tevsi duroci few oge larze lo nih sogmobig ewfamsi supifuso ihu uski.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(201, 12, 13, '2021-05-24 01:47:22', '2021-05-24 06:07:22', NULL, NULL, 'solicitado', 'Bag lisliw renawa wouwuiri oko kejic wufiv muzhofed bo rakzi peh uzino hebhe redfup me febluap wal censedal gu ke.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(202, 10, 14, '2021-08-03 01:39:05', '2021-08-03 12:33:05', NULL, NULL, 'solicitado', 'Limiva huazeowa wi miveh rovmeciw nahrurni cep buv semempu zemum kabujakud edi va et le johut datil mopzo ocugopup vugo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(203, 9, 6, '2021-10-22 01:53:23', '2021-10-22 13:38:23', NULL, NULL, 'Anulada', 'Piw vakus poz oseke ohafunta elewoshe matzavi lamnemijo vu laha lubahec meb wom gukiv sohzuvja jedij iz etsa henitowe cohcam.', 'Cuho jipumogi rara buzgipuc no gelarkow eb ehuli to jewizne.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(204, 7, 19, '2021-10-01 11:14:03', '2021-10-02 00:42:03', '2021-10-02 02:10:03', NULL, 'enCurso', 'Id lo sef vose pobhiug wislif recut hak apnamfer ceuwucep pebhesne fihores jeh vizbus cogwip mov mowikob wut tidro ro.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(205, 4, 19, '2021-01-11 05:46:35', '2021-01-11 21:07:35', NULL, NULL, 'aceptada', 'Unwutreg amjurura maub gehe puhguje ob aduvo zunmow sukneb li sevi fehzuaw zofewon ca fi sekpizja kamcu aciavem was epaleez.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(206, 2, 13, '2021-12-30 07:59:29', '2021-12-30 18:33:29', NULL, NULL, 'aceptada', 'Mocto jet segvij rareb bon gagokesiz wecu jofhor zohcec za vibeune giffe zu ruh vevowmi uvdul zeje safka ogefufuz apvejvid.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(207, 1, 2, '2021-09-02 05:51:24', '2021-09-02 21:02:24', '2021-09-02 21:22:24', NULL, 'enCurso', 'Dokegupo mof tuezu geajre vi babpopwus om upo wi javeola alo nemana tudod let oc cebolsi vipbaun so gowogfat sijum.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(208, 11, 17, '2021-02-16 07:38:34', '2021-02-16 16:39:34', NULL, NULL, 'solicitado', 'Veujo geemu zoclon kiz dibpu izova so cejlem tur usedoduko faihimi povigeci pasab mobkozar pogut mocekres tecow iveviwum cuzsof ma.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(209, 10, 27, '2021-12-21 01:44:07', '2021-12-21 07:12:07', NULL, NULL, 'aceptada', 'Eleufti renofa ca ju ojegag isife nazuga vesimdog upu sad camho supmug dehid tuzafow dopup ha arola sohbave telput gurjo.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(210, 3, 14, '2021-06-24 01:45:57', '2021-06-24 08:13:57', '2021-06-24 09:39:57', NULL, 'enCurso', 'Jap rokre lesje afdit agufuro meaci vehit mol kac jojeho suvzipic asefofo gehebev eji zikilo enuli urkif mo wepi azedi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(211, 14, 12, '2021-12-11 06:00:47', '2021-12-11 20:16:47', NULL, NULL, 'Anulada', 'Rotuca suokihir ozozebi fefa hekid maw vu zu ivu cosufle me ifemi ema zij ulhahda korirom vaheku fuzizwi erdizab hi.', 'Fijjudu zanrez hijnid zudkupwu hu manirozi ma tez dajdaw nahikvif.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(212, 5, 11, '2021-07-06 03:06:50', '2021-07-06 08:37:50', NULL, NULL, 'Anulada', 'Ifazekih pugzo kulalsi ji guhu gizbibzoj hofi ga bokekol pepuvha isotojgol kukab zabah huvok tive ahumaj isaki zim as he.', 'Nih adowulu lihas cal sefeh buzega wunu jub mivovu ruike.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(213, 12, 20, '2021-02-04 05:37:11', '2021-02-04 18:25:11', NULL, NULL, 'solicitado', 'Se viaf osobuhpoc gufij edkon ifeamta fa humicjul mubela ofo awanac pivuve zabgahge vu kejruc sa wuzu agitegpo kiacu siki.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(214, 9, 20, '2021-03-17 07:35:08', '2021-03-17 14:38:08', NULL, NULL, 'aceptada', 'Az zibkaw za oh sivihem lioshef coved vir imekufa dogkilsi kebfume mecob itiab mifwetle ribelotak porzave ci ha oma fi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(215, 2, 15, '2021-07-15 02:27:17', '2021-07-15 07:20:17', '2021-07-15 23:35:17', '2021-07-15 23:35:17', 'finalizada', 'Gakpa ov sawpak debewu zugvilha rad womujo esedoc nismiw bi foeme fazo zezi kutisweg bak puk ciil lokorivaw gefohehi pache.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(216, 8, 4, '2021-11-13 09:07:07', '2021-11-13 16:14:07', '2021-11-13 16:18:07', NULL, 'enCurso', 'Zeb taz ehotuvog follorse opgoufo pondo inudof etorezto olgeror damap usu adati game pekci suc jiszo rifmuwiw ked tovikog pa.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(217, 6, 24, '2021-02-18 07:58:24', '2021-02-18 22:27:24', '2021-02-18 23:09:24', NULL, 'enCurso', 'Cengow mistebal duto mam poedte gaj li ibemi susded kos gohgoj umosod utku we pokhu ujafuk ganuti atogev zoded iruffa.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(218, 4, 27, '2021-09-26 04:59:49', '2021-09-26 08:56:49', NULL, NULL, 'solicitado', 'Taoviso egi mez uksam amcadtav oguguvi izhuwve usa dujce uvriw doh ojeti uda ucunuh befebzog fudaf erimocbek sohibahi odjupi kupeeni.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(219, 6, 10, '2021-01-28 12:11:53', '2021-01-28 19:33:53', NULL, NULL, 'solicitado', 'Ahkes votog ho aba ojvut waz labfanawu ho ukumce mibulob bipaz hebu watge fe zep zidgalute rumdo eza uvi zumaw.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(220, 10, 14, '2021-04-30 09:11:37', '2021-05-01 00:19:37', NULL, NULL, 'aceptada', 'Reohwu kiin orukul at voefu lez vahe tojvabego cat gasguzovu gadomkah da guro jelobcu ezdodloj lohka julmegec ruspuhi bon mew.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(221, 12, 4, '2021-10-03 07:25:08', '2021-10-03 18:19:08', NULL, NULL, 'Anulada', 'Jud tu copnit sazazjiv koik mahluw ri esfaez kecam neho gemejsi ufi powhis heuf sic kah kuujsaz mogecu isaro kezke.', 'Saribelu po du gabwut vobo kit okuewuwi ve vofhut ipubuva.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(222, 8, 30, '2021-09-18 03:05:04', '2021-09-18 17:47:04', '2021-09-19 09:32:04', '2021-09-19 09:32:04', 'finalizada', 'Enu kunu romuami dewdu weifirar he zizidipo sinme aheweuk fisba roblozvu zotem wuluzoiza huuv fodzucvoj zuj nioha melodoet danfo ojizin.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(223, 2, 9, '2021-05-21 08:46:57', '2021-05-21 17:26:57', NULL, NULL, 'aceptada', 'Zotha am zuhop atiadetu wuputja waho in iz suso doga laebaut ofazifoj de eb foglifim sigi nu vit awaof ni.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(224, 13, 6, '2021-11-24 09:40:51', '2021-11-24 13:35:51', NULL, NULL, 'solicitado', 'Diz zot zaham zeh jem ne gafuweob bolug an te ke efimevor mo pod raconnol vu uvep jud opdo bagbor.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(225, 15, 22, '2021-10-23 08:58:23', '2021-10-23 17:48:23', NULL, NULL, 'aceptada', 'Nezmo vuzmiwet ruh dojemenok fum zol nibe ebe buig riac zuvo sa la okis kozib ma zeluwlud retpata na ved.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(226, 8, 8, '2021-12-31 05:45:09', '2021-12-31 09:40:09', NULL, NULL, 'Anulada', 'Feriw mablo kaun wicmime vumpof zu feic ruv tiru wihface co faskeh bouzi cuvsezow none havwolom cuzuefa rusilo tohunu bedkagohe.', 'Nenzic ipakepo coduk zes afva sejhofsar ivsu lis puno esu.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(227, 1, 27, '2021-07-28 04:21:16', '2021-07-28 13:04:16', NULL, NULL, 'aceptada', 'Mi ha ga fisbew mi akukib up jefhe cuiw betpa berbikim ro mitrom oba otih etapoj hevnih judgooc akmulvo gugauro.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(228, 8, 26, '2021-09-30 04:41:23', '2021-09-30 08:00:23', NULL, NULL, 'Anulada', 'Nohtoev du tare so sinore soc jukekhep faarpaw pesiw muf nazawfe sitdep ujure firak sa asoge har ogsaadu gatkuovi et.', 'Mak ladkac betde sebnunhur pime ho kaveczi lavusi pag akeihi.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(229, 10, 26, '2021-12-05 11:25:32', '2021-12-05 22:59:32', '2021-12-06 04:17:32', '2021-12-06 04:17:32', 'finalizada', 'Gojloohu lom woca usnut muosha zafile kozed elruez levwa so eju inapum fo guvralrom nak atcamde ubfan ef aw jep.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(230, 10, 10, '2021-01-25 03:51:25', '2021-01-25 19:19:25', NULL, NULL, 'aceptada', 'Ovlez razvaj jip zavi ancuc tudki pap tazvi junzeldun gen tacijewe ufamod podo givu pubeffac mildel owlekfut gubnob kulvuzwi ke.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(231, 10, 5, '2021-04-29 05:25:50', '2021-04-29 14:51:50', NULL, NULL, 'Anulada', 'Mad kizuhnav ificilluf baebhe picpikaw zibfu zos ijdasa ajpop araro majewvip no homja ihwud uvuem waesaj uvjemte kik ruci jeku.', 'Cucgeufa mobur afgi safo ezauc juzovil bihemani pepajji kas solza.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(232, 11, 3, '2021-07-29 05:29:12', '2021-07-29 16:53:12', NULL, NULL, 'solicitado', 'Lapouz katobi rel us nagduec hagcovi vorkine iwevivve tih disged fa ripzat jeopirob deh re nef hesieho ev koabvan cuwdewjac.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(233, 14, 16, '2021-10-12 07:58:59', '2021-10-12 17:03:59', NULL, NULL, 'aceptada', 'Abjuud miodhel mibsuluj ilicim esejivjur lag it or sa se gu ceju pejukevi ostem pocewpag liho lo devkazpe muzvosimu wod.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(234, 5, 28, '2021-04-22 03:21:26', '2021-04-22 16:39:26', NULL, NULL, 'Anulada', 'Wik take nozino calkef sahki romiad ijueggo urbaru ufiriv rod si tebic ila dolel dan ishutgi ullu suhitihe zupli ufeujfu.', 'Nowu liosesi fi aredci igo puv cewojef cadgajni entoc git.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(235, 3, 12, '2021-08-11 02:37:56', '2021-08-11 05:42:56', NULL, NULL, 'aceptada', 'Remgekpeh tovi fa sivfeki pihted pil uh hisies dud cibag vuf hihhi efmurbot guc he tasep ezi fe cog epez.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(236, 2, 5, '2021-07-07 08:20:14', '2021-07-07 16:54:14', NULL, NULL, 'aceptada', 'Luku cisehi joregamef ucovuw gukuav ki kavu fuh lisez se lepiv li uk hocju doj bulusuhe rebezeh fosep jobaci he.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(237, 9, 17, '2021-07-23 08:45:55', '2021-07-23 18:34:55', NULL, NULL, 'solicitado', 'Mowlaocu ko wid uprutvu begi vodamov vebufavam kulibo vin gatlovir itenenmo la zi lep fezos nosbabi ufzu namipomib pal tigragmi.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(238, 7, 13, '2021-10-20 11:46:38', '2021-10-20 16:09:38', NULL, NULL, 'solicitado', 'Zu jeida vorelo mejiin ageciifu cesumeije mafoz jonibi fed jo cuwrime ga ullupaw latego tuhkawsu ral inipo punombi on kalak.', NULL, '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(239, 9, 26, '2021-07-31 10:53:31', '2021-07-31 15:43:31', NULL, NULL, 'Anulada', 'Cet zienpu uwpiec zawoc repic urriwe tedvezar ecopibgec kegar rid ciis iwenu zipo cu cunfutub puvlasid pejroduh ekekuk sulki zuup.', 'Zoore ge lohup eso efarilasa cafsel cuade litzab semigco wuc.', '2021-03-22 22:26:00', '2021-03-22 22:26:00'),
	(240, 14, 29, '2021-03-31 05:45:26', '2021-03-31 21:20:26', '2021-04-01 03:26:26', '2021-04-01 03:26:26', 'finalizada', 'Roruk ibuvuh zestujdo bomti opinul ikpoz ajege isjep lawovo ridu sesow fun iz loz owu hufupguc rokittil luj nutivler labar.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(241, 13, 4, '2021-01-20 03:50:42', '2021-01-20 18:30:42', NULL, NULL, 'solicitado', 'Ero umrer hij nimtig garfew vikseoce emfocnun kidugoek putkaki zazergo gikiiga tu erasicu oje ze eho wojudodo antor ojuog eli.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(242, 2, 21, '2021-01-07 10:33:37', '2021-01-08 00:11:37', '2021-01-08 05:27:37', '2021-01-08 05:27:37', 'finalizada', 'Fu ocago kutobbuf vulevuc wa rofedte hotomku fihog abogaf unamiz libna navpofrac ozzuog ocrofu vil bije toro caciolu kejastit pu.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(243, 3, 27, '2021-01-21 07:28:40', '2021-01-21 17:51:40', '2021-01-22 00:27:40', '2021-01-22 00:27:40', 'finalizada', 'Jajjialo ker vatalpi doev igzewum mukarbeb donuew tohabiso bonzas fid sod ujfifjop bac ulumereg pidukol bac be vuzil obufog zesen.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(244, 5, 22, '2021-04-11 08:31:27', '2021-04-11 15:47:27', NULL, NULL, 'Anulada', 'Nicipkom epni zudut so jec jo un kekomri ewu urusejo nahzoful zodom dogiodo ubeno wot wiv hegvufip coci levlaw zu.', 'Nadahej finif duiluku folo afwab nu na veh ziv riar.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(245, 2, 25, '2021-07-10 06:40:24', '2021-07-10 19:18:24', NULL, NULL, 'solicitado', 'Saruwdu wucab kugfazu tenkuhid obhiuhu utawel direg wiwaczep za eb hunpab rahbof mofgokupo dutun bir somafzun romlurer ozdehpu vuili geg.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(246, 5, 10, '2021-10-22 10:05:20', '2021-10-22 20:48:20', NULL, NULL, 'aceptada', 'Ugka lu duvap fuc racaomi werpiniz lamar depit mijiwi rijfodih urhitgur movvun pu dejjefac le pe rovigce oci ubabudvu wuoti.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(247, 15, 3, '2021-08-10 04:58:46', '2021-08-10 14:41:46', NULL, NULL, 'solicitado', 'Ripzi popuv seros macjow jocoli lud mahbiveg zadabuk dood ojed mopulhac tiwur so kacco ubiitpuz cukriw le tir giudidoj polemte.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(248, 3, 6, '2021-05-26 04:08:12', '2021-05-26 16:40:12', NULL, NULL, 'solicitado', 'Pam sudte nimituh uhuvupru huez pag dezobdi eplidzoj ci ezij uwusoj ufo umi ku emu biotca pob ninunwaj posbehra kolageij.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(249, 1, 30, '2021-12-07 02:02:29', '2021-12-07 11:03:29', NULL, NULL, 'solicitado', 'Mec hunkom vinjowu ca ha so vov duhnita gim sel mapozoh imsot imebedwel igkerbi ufgo fijcom zirlevuv utogi cem vozceb.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(250, 5, 21, '2021-12-14 05:39:27', '2021-12-14 11:56:27', NULL, NULL, 'aceptada', 'Togkewu pi bobva tu dab sazojdi kiknojar huvap etpaad lamesuze lebetbuz zucmean bawta cum kehneop ve oz tiloj or hi.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(251, 10, 11, '2021-06-23 02:39:10', '2021-06-23 16:59:10', '2021-06-23 18:27:10', NULL, 'enCurso', 'Bombuj fegzoggal ner bostiwfew vu ajatabek kestiuj emo pesfiibu rupmaniha di vohif ledeboz cehuppis bumfu enpoztu vubo booroef cecnenfi finpilo.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(252, 3, 10, '2021-06-21 08:40:23', '2021-06-21 18:20:23', '2021-06-22 09:30:23', '2021-06-22 09:30:23', 'finalizada', 'Nofzamjoj gu kawfusle uzitot goczo geto tetit zice kohinbug zejeguri nikulu ezlup zatik evoade gid baheplin cebpov jo mogeaw idodiz.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(253, 3, 19, '2021-06-11 02:20:13', '2021-06-11 14:46:13', NULL, NULL, 'Anulada', 'Tuhzohwi pejsuha obriwos kues fidi edvov nidmij umu jetivuuhi epapa zoawuez ek lap lil iwve gadtej suwgotpa etrumma ubi kebok.', 'Ijoluj uziku su icec ube fulogut ehhi sodfe wigek asapubje.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(254, 5, 9, '2021-04-30 01:00:20', '2021-04-30 14:18:20', '2021-04-30 16:07:20', '2021-04-30 16:07:20', 'finalizada', 'Zuv lug nolsajej gevci gaw vopapfa luz pamu zulov jizu ge foccame zesgi ribhonnej rubak juwdejgos tuwrem epa sovew hofidhah.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(255, 6, 26, '2021-08-07 12:36:34', '2021-08-07 18:36:34', NULL, NULL, 'aceptada', 'Goimiula kebnobjew ro vilbezuh jubedtop hej juv ri eg tiv geha ez naubeca ih udauviret hacafiw ho fosulic la mup.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(256, 1, 5, '2021-05-26 05:22:40', '2021-05-26 17:37:40', '2021-05-26 18:30:40', NULL, 'enCurso', 'For fiducju hib culben fohcib johwe iki hubep heliul hocazasa lardutcot op vuwahib dazwiubo repaiwe razasa hebfizo omje zidrel deiwded.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(257, 9, 8, '2021-03-24 09:40:12', '2021-03-25 00:02:12', NULL, NULL, 'aceptada', 'Raasjo jitfapepa ow vob aja gasab jih tobaahe jinupuf keivawa uwe so edwehip mihustip de cokow uno hiubi wurjeto doutima.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(258, 3, 5, '2021-11-02 07:51:39', '2021-11-02 12:35:39', NULL, NULL, 'Anulada', 'Ownim vom kakkogi hagkijkik jagup bekecgaf galob cespanodo evgom di vemadi lij zug vetzaduv dis falutum hufik ovmoob pishe lad.', 'Zo wo gutu wecukulo civohge heag gifodliw hiudcug woh go.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(259, 3, 30, '2021-01-17 02:21:43', '2021-01-17 09:31:43', '2021-01-17 22:06:43', '2021-01-17 22:06:43', 'finalizada', 'Ezulop ipidup vopu ensisi wuro gocguke tejguvot mohi goema ademubka omiv ritbozro fatwan ir beable owenufil vofoki jekirgor juv hu.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(260, 15, 24, '2021-07-01 02:55:33', '2021-07-01 06:36:33', NULL, NULL, 'Anulada', 'Jomdabwew socfo memupcu duhecgek ufivowura nauno zirfiwuf imvacuru nodbuv giwte le fuvbe otfuw pezwig uru tum ucazecwu icedlu goguwzam zemami.', 'Dajoz piha ru isa wughanfar zilvesre cozim daknevew pa taugzu.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(261, 14, 7, '2021-04-25 05:17:37', '2021-04-25 12:40:37', '2021-04-25 13:45:37', NULL, 'enCurso', 'Ha eb higjizar uvo egtofec gihok od poziw ra ibozu pod kow zagpum juggifak zadibiwuc bas puwulo munite digden udo.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(262, 15, 8, '2021-12-08 05:05:26', '2021-12-08 08:39:26', NULL, NULL, 'solicitado', 'Caup wudja tab cu esoit ituhafiki wod cuzru ciise sama ce cow uszuji hu agosa ide vipiniwu utimev pewa dik.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(263, 2, 5, '2021-08-12 09:16:50', '2021-08-12 15:15:50', '2021-08-12 15:39:50', NULL, 'enCurso', 'Lada furnu levju iro iv pima zuenagoz kefnuvha ururortah di te kaf eki neohaiwu titu lijmul pu todvof dabbo lawzig.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(264, 11, 10, '2021-02-26 09:38:13', '2021-02-26 21:49:13', '2021-02-27 07:45:13', '2021-02-27 07:45:13', 'finalizada', 'Odeunenin zolbom nilviblus po jatan vuzijvep daf muabu ti vekpo ru me duhhawori uz ki we dopcuh zeumhe gaiwzar uhocabic.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(265, 5, 12, '2021-11-10 05:06:05', '2021-11-10 16:46:05', NULL, NULL, 'aceptada', 'Vuwcuker me vu el gutnat kefizvoh nughenih zocuho zu dibej mu mup geke mov ep jacug cil ilenaci aju dug.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(266, 11, 3, '2021-12-12 05:38:22', '2021-12-12 19:48:22', NULL, NULL, 'Anulada', 'Zevapzir ehiri tifa ve midunvim iwu duk ka mitozcu ecpa laasa kusuwse jo vowi zadi cejo fuwrigone nogi ne kemap.', 'Ibeke ifawan ufifepar ive wap paakela udo ce cepbo fo.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(267, 11, 18, '2021-01-26 02:47:55', '2021-01-26 05:58:55', NULL, NULL, 'Anulada', 'Gul olzo pothub gijre busej wofjiem pilupow gahip juclacruj todom rova kebicge ekse agregzi odepen zodvab meroswi cesaf iziutu pom.', 'Le vo atsido tod mez beoke geziz vuodofar idan akuban.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(268, 11, 10, '2021-11-30 12:04:31', '2021-11-30 19:32:31', NULL, NULL, 'aceptada', 'Enomekoh doovebe womuv nuedavu gohouw pici sabto zesuago iglezwu okjukfop hu bipvoma ni pes helokazu nepe gi keel nu wacson.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(269, 8, 4, '2021-12-05 11:38:59', '2021-12-05 16:13:59', NULL, NULL, 'solicitado', 'Ho odu giik po wehunab mubgide jetu catipne catetja kozop dicgip mo abvor hasre lakomo utuwef oti nu cizapome timra.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(270, 13, 25, '2021-01-15 01:23:32', '2021-01-15 04:31:32', NULL, NULL, 'solicitado', 'Edrap gomo rabpe zuvpulek ugomi mit bewjenda bup gumukgu wascudej za salzega elzemoci agofikhes fuhiv nofebse jogtu cup ene ejujiv.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(271, 11, 29, '2021-02-07 09:52:01', '2021-02-07 12:40:01', '2021-02-07 21:56:01', '2021-02-07 21:56:01', 'finalizada', 'Buzejova cuv mikbo dej purjowca ude ba ukamagi kowvo salacah luzutete epod tassi ijuwiro we gi hocikfa muz rulisu pip.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(272, 11, 28, '2021-09-04 04:32:06', '2021-09-04 13:17:06', '2021-09-04 17:19:06', '2021-09-04 17:19:06', 'finalizada', 'Gokutiji azi hud legeivi timto cifkizne fadfidun efsiw re wo bobgowgo buduk erileef ci ponu ca hud iv kitceni or.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(273, 10, 25, '2021-10-19 12:42:35', '2021-10-19 21:29:35', NULL, NULL, 'solicitado', 'Unuzeb fak muso niz ni aggumuco wikjil roav vetoz zusocarab ata ni kib nahzub fepsuvoc usieg lucadput seninap dunpidzi urieviri.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(274, 6, 24, '2021-03-11 11:55:19', '2021-03-11 22:27:19', '2021-03-12 06:20:19', '2021-03-12 06:20:19', 'finalizada', 'Igatuno cumob ecedeg fu ja hocet apoce rouruuso him runej gag ihe ed letzobmip aljontil asaj gez puev mi ju.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(275, 13, 17, '2021-11-06 11:20:49', '2021-11-06 14:56:49', NULL, NULL, 'aceptada', 'Muflav ituadasu evo najupic kosed pive da sekumdiw vu asicep asokud ofevapo nu najli jimtato lo mujliva dabsancoh vorineret fewuh.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(276, 1, 20, '2021-05-13 05:29:00', '2021-05-13 14:30:00', '2021-05-13 15:48:00', NULL, 'enCurso', 'Zez ozgabjan uvjis lif ruviv uvi limaz zucgawci tar igu ruruf ofjoc owozuuru ika neibte coriweja re vuk okezod su.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(277, 12, 27, '2021-12-05 11:13:42', '2021-12-05 19:30:42', NULL, NULL, 'solicitado', 'Oge peban ut weuna ralen jajawir dubirzo aniefdif hut omajefap wusi vouce lupikbu du ha lo cem zit arhaf azgecneb.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(278, 10, 15, '2021-02-14 09:46:02', '2021-02-14 23:23:02', '2021-02-15 05:30:02', '2021-02-15 05:30:02', 'finalizada', 'Vas pilimnoh bilumetu nuso vo du cu cezop gec tu isioj junnabtu jezkonaki rohmifes fuwagow logpewon ecapara sijhitfu in su.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(279, 5, 29, '2021-10-23 08:28:45', '2021-10-23 14:26:45', '2021-10-24 02:47:45', '2021-10-24 02:47:45', 'finalizada', 'Nobsijop fiz ociip elorep usugodil ni sir ino no waw es noloc huret mimobbur durip nuttag co zuzokva riapiedi unova.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(280, 9, 26, '2021-03-11 06:42:43', '2021-03-11 22:21:43', NULL, NULL, 'aceptada', 'Liz bavorij kecik mil bowlep zikpe ceh uvcejir fanak buzorlun tueraip witpuz ukimitec kefip mekdu sucguiji fasafi tidsaj iwi ucozibu.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(281, 5, 8, '2021-01-26 01:31:01', '2021-01-26 07:20:01', '2021-01-26 07:29:01', NULL, 'enCurso', 'Nesufip losiig pon zihtob volkevoz re niwenacu arde eto hid ule go ne buzzug tantik anaito vojiwi nukeho ke kejuhbi.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(282, 4, 22, '2021-03-14 10:01:44', '2021-03-14 22:34:44', '2021-03-15 10:39:44', '2021-03-15 10:39:44', 'finalizada', 'Cagheh fofcasaz vuzozu opru pi jacuw cuz linubleg ho norci mine ho rollonna cicosiila tefoz gefsup ru ahujobfep upe fizmiw.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(283, 5, 8, '2021-05-01 10:12:49', '2021-05-01 22:22:49', '2021-05-01 23:31:49', NULL, 'enCurso', 'Pep satuep dukwunam of zugako hosbimje numsiz jegku doul idwe rukifrij ovemu rore kocme gisosgo carasoba zi poitoiw ap fiv.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(284, 12, 21, '2021-04-07 04:58:45', '2021-04-07 11:58:45', NULL, NULL, 'aceptada', 'Mahu mu teuli kodufnow duju okwisu nizava ofu fezlil wane jotgul nefi ropas avaz ile zo gojatekic razrutib kozo faafnom.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(285, 12, 30, '2021-06-12 04:00:06', '2021-06-12 14:07:06', '2021-06-12 15:27:06', NULL, 'enCurso', 'Tidgissu tokum ictusa ufomej vuf jub kun fezo kouhaguv dawad fi efhezmir lidibo hapu ejosdo vijef ate pecu ud zal.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(286, 8, 11, '2021-09-02 09:43:20', '2021-09-02 22:37:20', NULL, NULL, 'aceptada', 'Tadi ketunem miw timehahu podehva motisepu welbuwo kav vefem wo ukaon abe huri uw bebfarlum jasa apekago la johkulsu hepiv.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(287, 5, 19, '2021-12-30 10:11:03', '2021-12-30 14:18:03', '2021-12-30 19:18:03', '2021-12-30 19:18:03', 'finalizada', 'Ara majafhol pu upolafa no co tansoh fecgoz gevdez ehi mil cova netidku awefiveg pegmi akpif ju dicra irosivpi cepfam.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(288, 4, 10, '2021-11-18 01:59:08', '2021-11-18 10:23:08', NULL, NULL, 'Anulada', 'Ciftil gahdofkeg piog ulninir goret miz kijam zehra nocahij jarbo oruzof suf iwufkel sofuduri de dejgurig eci zicibuc liho uri.', 'Vin dofhetju wacoje kekuw dahojofe werfok nuvsi wazus sujotif unooc.', '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(289, 12, 1, '2021-01-21 06:57:03', '2021-01-21 22:02:03', '2021-01-21 22:34:03', NULL, 'enCurso', 'Fibgadi sulkup pes deujiih ihiwog cit jet naragof juugofe ehtez feiho cul daembok hutgul lemijnoh ka ulvorco ti rep zem.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(290, 1, 15, '2021-10-08 05:02:13', '2021-10-08 12:03:13', NULL, NULL, 'aceptada', 'Vakniz ba sewzet oksoku efuzartan cevuno ikkis ek niwtigi nor jeh zadva gunemgog jijdilos atebuovo vah watan jejlod rora ughaw.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(291, 12, 18, '2021-09-18 12:26:56', '2021-09-18 16:56:56', NULL, NULL, 'aceptada', 'Avuhake gotal tuf gopafte velo re cogsi pazav zuvzivi hagvuj ehiegote sa je ahboctoh abifu jogiv pautate petuz fautuwi mon.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(292, 5, 27, '2021-11-01 07:04:34', '2021-11-01 13:58:34', NULL, NULL, 'solicitado', 'Tot faib zeig jicwafa mirerac alpig pumim ra sidufeap viplab rugpab azolemjem gomi zu po om icvupar jiz jurta kad.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(293, 5, 3, '2021-06-12 09:04:07', '2021-06-12 22:49:07', NULL, NULL, 'aceptada', 'Wemuctah epesuvez vi iwikufa epaf zol apa nagikeki toksew dandikkam turocnoj tep zercuhin givtas wemij magle daj udi cujref cim.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(294, 4, 25, '2021-01-15 10:18:04', '2021-01-16 00:21:04', '2021-01-16 01:04:04', NULL, 'enCurso', 'Bobut mutnofel den wuce wutuf mewuhil ebotehte jalcuta mizcupuh racepo kufisi muw icriri kamabeh cazre uka fa vi opizibare dofji.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(295, 12, 3, '2021-07-13 11:33:40', '2021-07-13 23:36:40', NULL, NULL, 'aceptada', 'Vaz walnufos laj jeniz wobzeskew me jezmiwzik rumivhu lawgakhor fej abuput wezen za ropgazuh zajapvom hoscuga atcakur ho lezsupceg uka.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(296, 12, 4, '2021-08-01 07:50:42', '2021-08-01 17:54:42', NULL, NULL, 'solicitado', 'Javo luwu pob ukuace lika tunje tasreek ku dil pepu ben keiwo avu duzkepok mokmogluh sot evwum uzutotow zajwije haghug.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(297, 7, 17, '2021-10-24 03:31:32', '2021-10-24 14:05:32', NULL, NULL, 'aceptada', 'Umo sat ti te vaozear nah aguan emiloroj iva jev het ewadugfat ra gogjoven tutatlej jufgetu sankad eci denve digorwe.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(298, 9, 9, '2021-01-23 11:35:35', '2021-01-24 01:54:35', NULL, NULL, 'solicitado', 'Ruzizof wonaca ve kojinki iz eja veirvej ilso ced aluvolza beada fozisu lu sog tukuh kugupol tekudi botmej fodapvi jejro.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(299, 4, 14, '2021-07-30 01:17:42', '2021-07-30 15:49:42', '2021-07-31 02:30:42', '2021-07-31 02:30:42', 'finalizada', 'Virnife tivvad beakecop nef jalizmu fefavgi fogneotu sij japekiju dupocben copizu cepev riane cu sucojsed ewgoja vis zegpaan ejiusosi kekhos.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(300, 1, 16, '2021-09-21 02:35:34', '2021-09-21 15:58:34', NULL, NULL, 'aceptada', 'Pa lojof noz ri ravoce kancasub su arkiklew peze kipti rule zuk cagah nul no pu eztu ejbo vopvu mumumo.', NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(301, 1, 1, '2021-10-29 12:09:50', '2021-10-30 03:53:50', NULL, NULL, 'solicitado', 'Ossup lotfilwo ipocinoje luemu mivo ojepju ka cewaof ge gibudan cirtaw barme ninmud veb fugkiib iwsa cu kad jihapze tubinec.', NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(302, 2, 10, '2021-02-08 10:14:05', '2021-02-08 18:45:05', NULL, NULL, 'solicitado', 'On gikafu hul res goj ko lum vivaja hawike mofnatak afsa tekmetof tejbe cimcezan vuvtok ivebejjej mo zeuviguw iwofe ude.', NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(303, 3, 14, '2021-11-27 10:09:57', '2021-11-27 16:12:57', '2021-11-27 17:11:57', NULL, 'enCurso', 'Bewfe toran imohoha teol gefez roef wembido fonvo rud heje wimev be hir zu mignami zim mevpa olkunjol bezic aruwivtew.', NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(304, 4, 17, '2021-09-03 06:42:22', '2021-09-03 11:28:22', '2021-09-03 21:47:22', '2021-09-03 21:47:22', 'finalizada', 'Wuz iv ledibha cigius pibaija purunoj dapjezsiw tarihipo oc cakmif fietaki mew puruzi desju hukis bisoh edipeuli eziviim ezo odkusma.', NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(305, 5, 25, '2021-02-18 07:52:09', '2021-02-18 21:52:09', '2021-02-19 12:44:09', '2021-02-19 12:44:09', 'finalizada', 'Cobid mum re lipak vefukjo vor vualize be ejaace keh be ma rarpa vuf suzmaof jelaw ofvo sovlojgud sekogku fetu.', NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.tokens
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`),
  KEY `tokens_user_id_foreign` (`user_id`),
  KEY `tokens_token_index` (`token`),
  CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` (`id`, `user_id`, `token`, `type`, `is_revoked`, `created_at`, `updated_at`) VALUES
	(1, 30, '320223ac-ff91-4975-a5af-b4ff029c70d8', 'remember_token', 0, '2021-03-22 22:28:05', '2021-03-22 22:28:05');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nif` varchar(9) DEFAULT NULL,
  `name` varchar(254) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `perfil` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.users: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `nif`, `name`, `phone`, `mobile`, `activo`, `perfil`, `created_at`, `updated_at`) VALUES
	(1, 'ikgui', 'ikgui@zonafrancavigo.com', '$2a$10$hc.RLtWExMfOatRB9Lh0eOld6Rs89E8B/4KgT7amR1tgbI4jh5nUu', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(2, 'gevom', 'gevom@zonafrancavigo.com', '$2a$10$yLTcSAwSMQ9HMVZnI4S.w.1OeZiZigs0Tz6oNNh3v6haBFhyog4O.', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(3, 'pifir', 'pifir@zonafrancavigo.com', '$2a$10$p3AhPdwZX4lk.l.IM26zGOWJcNt8ym5I.kpBQZPT5hruj48bpD6mm', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(4, 'bitie', 'bitie@zonafrancavigo.com', '$2a$10$TcoEg5oXbTYRBCFKqps3oOOK/CW8kYT3Fr5HZ.SvMZ3S4LkHhICwO', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(5, 'hicka', 'hicka@zonafrancavigo.com', '$2a$10$21nR.Xvld./zDdl8zZ5xxe2FwmFIlJIX9a9K.l1tKCCHpVBnhc5Ge', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:01', '2021-03-22 22:26:01'),
	(6, 'betik', 'betik@zonafrancavigo.com', '$2a$10$eljzxFK5kUI2b5eH8/AmQOLPZ0FuFY.F9kWYL6t2Ut3mOL9ihq78G', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(7, 'gufiz', 'gufiz@zonafrancavigo.com', '$2a$10$JxVAlJFm0SP.p0y4DpvhbODymhPMYuBiI.4US1vdPuloWaw/d6sra', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(8, 'avuto', 'avuto@zonafrancavigo.com', '$2a$10$PkBCktMDWiidrTDQ1B4Qs.0udhVN5iWY.8K.J8fyYg1DnFzONSdMm', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(9, 'satko', 'satko@zonafrancavigo.com', '$2a$10$MV/5JexD1QkpAJPVs9rdt.M0cMMGN1uC.FBvdwfuhzMZfaqzqOg1.', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(10, 'gegol', 'gegol@zonafrancavigo.com', '$2a$10$ex4Fqjc5HtJ2R1E1XH98ceA3uM6UE2Lz1x9Zy87zzeo4cmp2kAhOO', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(11, 'vuzom', 'vuzom@zonafrancavigo.com', '$2a$10$2wXs0Iud7ExGCqbm4K/Rre5kKvB6u8IuMCa4GxD5V895pNLuAgLnK', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(12, 'dufje', 'dufje@zonafrancavigo.com', '$2a$10$Rdhbc5fvGUYcZ9P.UXNjV.tQqcf7DU0Y4nJvWr0XJUyPsxKZnmaF2', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(13, 'gicub', 'gicub@zonafrancavigo.com', '$2a$10$J6xFxFOU77GByjag5WoCfevd.np7ipg/I8FVm2K2xv9zeFZmtR8dS', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:02', '2021-03-22 22:26:02'),
	(14, 'recfe', 'recfe@zonafrancavigo.com', '$2a$10$A2divY8xc/EC3N2a.Xi15OKeLlCmipUc/mwD2dR87g.XywQD6VTZu', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(15, 'vuhpo', 'vuhpo@zonafrancavigo.com', '$2a$10$kzxG2LHIOCqPEAnx9/Tu7OfqU.niG1bjKtw5yw77C9XKtVMfah8J2', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(16, 'idput', 'idput@zonafrancavigo.com', '$2a$10$uvz2btPZHeiTS7evf9aZY.03dHS/0XqRIjR1m/2jNqvrKs4EemvgC', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(17, 'jevad', 'jevad@zonafrancavigo.com', '$2a$10$v7kG2usFACR2edGthOg4rOboyEj82cU/L78B8M4l5PHK71fCYyZ9a', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(18, 'suhop', 'suhop@zonafrancavigo.com', '$2a$10$0Mocs0C3sysAgX8iV6DpmemUJ1xPafWzLHErQKWcvSSkiBr5Ofiyi', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(19, 'irzaj', 'irzaj@zonafrancavigo.com', '$2a$10$.zn3aM09397UZrrtmB/LOuiHqujcu5aH8XtI0Egzd1tKii./afjgC', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(20, 'pepur', 'pepur@zonafrancavigo.com', '$2a$10$uTBGmP1JyyOUZ7WBPyQavuoBDthzNspG0wktFmHDQ6Xxcyn8Niira', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(21, 'gafef', 'gafef@zonafrancavigo.com', '$2a$10$csErZRZ.7KBpDqfxEYgGau5ldA.a4iBOmniqdai7XfFie2pQ.sXqO', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(22, 'pakra', 'pakra@zonafrancavigo.com', '$2a$10$BBQH7gDuKMmSZSqXdnWyPuCWgRpANk8b4kZjQevFc2lyv/znCYUCK', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:03', '2021-03-22 22:26:03'),
	(23, 'sifon', 'sifon@zonafrancavigo.com', '$2a$10$Byv6fKmvbmLKg2pdBAiCZeQqLFlO9H2Lc77f9uWHHlBmGyxX84Oea', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(24, 'huwov', 'huwov@zonafrancavigo.com', '$2a$10$8WZaHpu5o5Jd2xciO4EIoeoN7PzExN/na1jspOtI32.Y2tOU7zX.i', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(25, 'gigab', 'gigab@zonafrancavigo.com', '$2a$10$doQpnEXAP7rseZpBpetCouHUcD/NRYzfR2jlFkgKXtlXzkOQLBEsy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(26, 'anugi', 'anugi@zonafrancavigo.com', '$2a$10$7RrCf4wr24XmSFUlS/Kro.g8odbQ7QubwSB6jHkaO.axuhAGyyQbu', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(27, 'omaap', 'omaap@zonafrancavigo.com', '$2a$10$8NCYv4g59WYE7EsY5h9NQ.Bryx835FrhkF5gZjsGqkv2lLDbhLZku', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(28, 'zeuvl', 'zeuvl@zonafrancavigo.com', '$2a$10$rhXwrWcJJ2Z6EAalwEkrzuxMqG7DK6U.GXii7p.4avdLkrc/QLjcK', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(29, 'zovel', 'zovel@zonafrancavigo.com', '$2a$10$JeqcxFLoZp9DvM0FMamFG.BDj7j25Zadd0TyX6Bg/X1zwEFGw2mBi', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(30, 'urba', 'urbano@zonafrancavigo.com', '$2a$10$UwsFlf8tgjOoG4wc9GeIcuEmIgR7mhWqLQApd8HpJZJhD/mVBRt/q', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 22:26:04', '2021-03-22 22:26:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla vehiculos.vehiculos
DROP TABLE IF EXISTS `vehiculos`;
CREATE TABLE IF NOT EXISTS `vehiculos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreVehiculo` varchar(40) DEFAULT NULL,
  `marcaModelo` varchar(100) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `anoCompra` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehiculos_matricula_unique` (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vehiculos.vehiculos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` (`id`, `nombreVehiculo`, `marcaModelo`, `matricula`, `anoCompra`, `estado`, `observaciones`, `created_at`, `updated_at`) VALUES
	(1, 'Kujji bidpeuji kikah fefi.', 'Maek juvpasmi govu uv.', '4241MPC', 2015, 1, 'Tibvet owode kiw hejecpen rol cuktouko udof wofrup les mehat lotisap wudwaklu lo evipa giogi.', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(2, 'Nemgab tan ire pupaveal.', 'Mihhul uwliv sahvudud al.', '7791AMN', 2017, 0, 'Alaucru ezoru do ono forfed da zingitu op ke hazdaevi zitaje sapopinu nenvabvu coaj delpaado.', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(3, 'Uv le gokej ub.', 'Onepok du tis todiroh.', '0232WMZ', 2012, 1, 'Moftocif liiwi jekgapvi ka kafa vo punkoh kit dud lir ihneroso bi ajidub uncogib vemfoz.', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(4, 'Izcevec mihin bakip sedce.', 'Ninu bislico ip oge.', '6891YAM', 2013, 1, 'Gegowjis siku za am baura ul lowij amiejmu wivtun vaubu hezbazje vanmus zo jelomfaw wowudo.', '2021-03-22 22:26:04', '2021-03-22 22:26:04'),
	(5, 'Rapoka matbi mivtihup roz.', 'Kul otawe wo cepfocaj.', '6142SOB', 2017, 0, 'Dokouv pofcobon guz sori duvbul meewufa li ci wul cid pufigbe rofipic nekku cis zor.', '2021-03-22 22:26:04', '2021-03-22 22:26:04');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
