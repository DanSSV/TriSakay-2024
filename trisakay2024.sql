-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 02:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trisakay2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingID` int(11) NOT NULL,
  `commuterID` int(255) NOT NULL,
  `plateNumber` varchar(255) DEFAULT NULL,
  `toda` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pickupPoint` varchar(255) NOT NULL,
  `pickupAddress` varchar(255) DEFAULT NULL,
  `dropoffPoint` varchar(255) NOT NULL,
  `dropoffAddress` varchar(255) DEFAULT NULL,
  `pickupTime` datetime NOT NULL,
  `dropoffTime` datetime DEFAULT NULL,
  `passengerCount` int(255) NOT NULL,
  `fare` int(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `eta` varchar(255) NOT NULL,
  `rating` int(255) NOT NULL,
  `bookingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `commuterID`, `plateNumber`, `toda`, `status`, `pickupPoint`, `pickupAddress`, `dropoffPoint`, `dropoffAddress`, `pickupTime`, `dropoffTime`, `passengerCount`, `fare`, `distance`, `eta`, `rating`, `bookingDate`) VALUES
(1, 1, 'XYZ 5678', 'SJDD', 'completed', '14.954283534502583,120.90080909502916', NULL, '14.954031086368913,120.89256763458253', NULL, '2024-02-09 07:55:32', NULL, 3, 52, '1.074', '', 3, '2024-02-09'),
(7, 1, 'XYZ 5678', 'SJDD', 'accepted', '14.954238150291411,120.90063983097771', NULL, '14.970697458929555,120.88707447052002', NULL, '0000-00-00 00:00:00', NULL, 4, 58, '3.28', '13', 0, '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `commuter`
--

CREATE TABLE `commuter` (
  `commuterID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `profile` mediumblob DEFAULT NULL,
  `mobilenumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `otp` int(255) NOT NULL,
  `noshow` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commuter`
--

INSERT INTO `commuter` (`commuterID`, `email`, `firstname`, `lastname`, `profile`, `mobilenumber`, `password`, `status`, `otp`, `noshow`) VALUES
(1, 'dnkrtdev@gmail.com', 'Dan', 'Salazar', NULL, '09505887362', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'active', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher`
--

CREATE TABLE `dispatcher` (
  `dispatcherID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `toda` varchar(255) NOT NULL,
  `mobileNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` mediumtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `otp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dispatcher`
--

INSERT INTO `dispatcher` (`dispatcherID`, `firstName`, `lastName`, `toda`, `mobileNumber`, `email`, `password`, `status`, `otp`) VALUES
(1, 'Ricardo', 'Cruz', 'Piel', '09123456789', 'Ricardocruz@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'active', 0),
(2, 'Ernesto', 'Santos', 'SJDD', '09376543210', 'Ernestosantos@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'active', 0),
(3, 'Benjamin', 'Reyes', 'Sabang', '09209876543', 'Benjaminreyes@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'active', 0),
(4, 'Fernando', 'Garcia', 'St. Barbara', '09461234567', 'Fernandogarcia@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `toda` varchar(255) NOT NULL,
  `profile` longblob DEFAULT NULL,
  `qrCode` mediumblob DEFAULT NULL,
  `bodyNumber` varchar(255) NOT NULL,
  `plateNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` mediumtext NOT NULL,
  `mobileNumber` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `otp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverID`, `firstName`, `lastName`, `toda`, `profile`, `qrCode`, `bodyNumber`, `plateNumber`, `email`, `password`, `mobileNumber`, `status`, `otp`) VALUES
(1, 'Gabriel', 'Cruz', 'SJDD', NULL, NULL, 'TN-1234', 'XYZ 5678', 'Gabrielcruz@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', '09171234567', 'active', 0),
(2, 'Diego', 'Fernandez', 'Piel', NULL, NULL, 'TR-5678', 'AAA 1234', 'Diegofernandez@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', '09209876543', 'active', 0),
(3, 'Mateo', 'Rivera', 'Sabang', NULL, NULL, 'TM-91011', 'UVW 910', 'Mateorivera@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', '09353210987', 'active', 0),
(4, 'Carlo', 'Santos', 'St. Barbara', NULL, NULL, 'TS-1213', 'HJK 456', 'Carlosantos@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', '09468765432', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `farematrix`
--

CREATE TABLE `farematrix` (
  `fareID` int(11) NOT NULL,
  `baseFare` int(255) NOT NULL,
  `perKM` int(255) NOT NULL,
  `nightDiff` int(255) NOT NULL,
  `farePerPassenger` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `DateCreated` date NOT NULL,
  `adminID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farematrix`
--

INSERT INTO `farematrix` (`fareID`, `baseFare`, `perKM`, `nightDiff`, `farePerPassenger`, `status`, `DateCreated`, `adminID`) VALUES
(1, 30, 10, 3, 5, 'active', '2024-02-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `provinceID` int(11) NOT NULL,
  `border` mediumtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`provinceID`, `border`, `name`, `status`) VALUES
(1, '{\"type\":\"polygon\",\"latlngs\":[[{\"lat\":15.014282441877164,\"lng\":120.889949798584},{\"lat\":15.014152775237394,\"lng\":120.88920414447786},{\"lat\":15.014199455236781,\"lng\":120.88874816894533},{\"lat\":15.014163148571475,\"lng\":120.88852286338808},{\"lat\":15.014183895238114,\"lng\":120.88747143745424},{\"lat\":15.014355055161035,\"lng\":120.88616251945497},{\"lat\":15.014640321394486,\"lng\":120.88474094867708},{\"lat\":15.014769987738289,\"lng\":120.88386654853822},{\"lat\":15.014775174390406,\"lng\":120.88315308094026},{\"lat\":15.014671441324179,\"lng\":120.88271856307985},{\"lat\":15.014474348359553,\"lng\":120.88212311267854},{\"lat\":15.014240948560987,\"lng\":120.8816295862198},{\"lat\":15.014043855199185,\"lng\":120.881307721138},{\"lat\":15.013794894903267,\"lng\":120.88104486465456},{\"lat\":15.013426640600256,\"lng\":120.88063180446626},{\"lat\":15.013234733176652,\"lng\":120.8804225921631},{\"lat\":15.013219173107732,\"lng\":120.87998270988466},{\"lat\":15.013053198968649,\"lng\":120.88005781173707},{\"lat\":15.01265900987154,\"lng\":120.88003635406496},{\"lat\":15.012280380185546,\"lng\":120.87960720062257},{\"lat\":15.011948430319775,\"lng\":120.87838947772981},{\"lat\":15.011574986104298,\"lng\":120.87765455245972},{\"lat\":15.010978511350721,\"lng\":120.87691426277162},{\"lat\":15.010407968723996,\"lng\":120.87624907493591},{\"lat\":15.009650700702885,\"lng\":120.87547659873964},{\"lat\":15.009225384610035,\"lng\":120.87533712387086},{\"lat\":15.008826001654597,\"lng\":120.87542295455934},{\"lat\":15.00872226569993,\"lng\":120.87571263313295},{\"lat\":15.00871189210167,\"lng\":120.87609350681305},{\"lat\":15.00910090169099,\"lng\":120.87660849094392},{\"lat\":15.00957289904184,\"lng\":120.87696790695192},{\"lat\":15.010314607058213,\"lng\":120.87761163711549},{\"lat\":15.010506517104718,\"lng\":120.87797641754152},{\"lat\":15.01071398723139,\"lng\":120.87834119796753},{\"lat\":15.01079697522566,\"lng\":120.8788025379181},{\"lat\":15.010874776441007,\"lng\":120.8791619539261},{\"lat\":15.01079697522566,\"lng\":120.87942481040956},{\"lat\":15.010667306470449,\"lng\":120.87981641292573},{\"lat\":15.0102782997327,\"lng\":120.88011145591737},{\"lat\":15.009811490712615,\"lng\":120.88015437126161},{\"lat\":15.009515844472418,\"lng\":120.87992906570436},{\"lat\":15.00903347341292,\"lng\":120.87912976741792},{\"lat\":15.008638539771544,\"lng\":120.87877035140993},{\"lat\":15.00804205682117,\"lng\":120.87829291820528},{\"lat\":15.007481880012723,\"lng\":120.87818562984467},{\"lat\":15.006558622439078,\"lng\":120.878604054451},{\"lat\":15.00600362860758,\"lng\":120.87946236133577},{\"lat\":15.005562744630193,\"lng\":120.8800256252289},{\"lat\":15.004919571079286,\"lng\":120.88059425354005},{\"lat\":15.004048171568378,\"lng\":120.88099122047426},{\"lat\":15.003773491019315,\"lng\":120.8810877799988},{\"lat\":15.003140685954039,\"lng\":120.881125330925},{\"lat\":15.00258568324841,\"lng\":120.88090538978578},{\"lat\":15.001947687703957,\"lng\":120.88045477867126},{\"lat\":15.00169871331649,\"lng\":120.87993443012239},{\"lat\":15.001351186082557,\"lng\":120.87945163249971},{\"lat\":15.001299316297695,\"lng\":120.87910294532777},{\"lat\":15.001397868878149,\"lng\":120.87802469730379},{\"lat\":15.001014032256037,\"lng\":120.87720930576326},{\"lat\":15.000765056781379,\"lng\":120.87692499160768},{\"lat\":15.000215234914464,\"lng\":120.87682306766511},{\"lat\":14.999577232296838,\"lng\":120.87682843208314},{\"lat\":14.999240075673214,\"lng\":120.87704837322237},{\"lat\":14.999022220341395,\"lng\":120.87742388248445},{\"lat\":14.999089651777338,\"lng\":120.87806761264802},{\"lat\":14.99942162161352,\"lng\":120.87886154651642},{\"lat\":14.999732842866905,\"lng\":120.87959647178651},{\"lat\":14.999883266310329,\"lng\":120.88040649890901},{\"lat\":14.999950697474754,\"lng\":120.88086783885957},{\"lat\":14.999888453323718,\"lng\":120.88128089904787},{\"lat\":14.99982620915458,\"lng\":120.88174223899843},{\"lat\":14.999815835124645,\"lng\":120.88202118873598},{\"lat\":14.999701720761955,\"lng\":120.88235914707184},{\"lat\":14.99969134672595,\"lng\":120.88253617286682},{\"lat\":14.9995616712336,\"lng\":120.88280439376832},{\"lat\":14.9992763848736,\"lng\":120.88315308094026},{\"lat\":14.999089651777338,\"lng\":120.88352859020235},{\"lat\":14.998970349991577,\"lng\":120.88392019271852},{\"lat\":14.998674688757406,\"lng\":120.88443517684938},{\"lat\":14.998088552119794,\"lng\":120.88522911071779},{\"lat\":14.997673587157333,\"lng\":120.88547050952913},{\"lat\":14.997367549981647,\"lng\":120.8857172727585},{\"lat\":14.997004454459427,\"lng\":120.8860605955124},{\"lat\":14.996558671536869,\"lng\":120.88593184947969},{\"lat\":14.996148890710185,\"lng\":120.88567972183228},{\"lat\":14.996200761744293,\"lng\":120.88501989841463},{\"lat\":14.997046257826813,\"lng\":120.88439226150514},{\"lat\":14.997824318753223,\"lng\":120.88387727737428},{\"lat\":14.998119981163068,\"lng\":120.88290631771089},{\"lat\":14.998073297651851,\"lng\":120.88267028331758},{\"lat\":14.99809923293713,\"lng\":120.88258981704713},{\"lat\":14.997995491777168,\"lng\":120.8820426464081},{\"lat\":14.997819131689758,\"lng\":120.88154911994936},{\"lat\":14.997575339564746,\"lng\":120.8812862634659},{\"lat\":14.99675059393259,\"lng\":120.88102877140047},{\"lat\":14.996449742532983,\"lng\":120.88113605976106},{\"lat\":14.99607108413541,\"lng\":120.88142573833467},{\"lat\":14.995956967774545,\"lng\":120.88196754455568},{\"lat\":14.995993277532317,\"lng\":120.88309943675996},{\"lat\":14.995531624438602,\"lng\":120.8840596675873},{\"lat\":14.994784677996902,\"lng\":120.88459074497224},{\"lat\":14.993642611560281,\"lng\":120.88477849960329},{\"lat\":14.992584427320496,\"lng\":120.88539540767671},{\"lat\":14.991827096170782,\"lng\":120.8854115009308},{\"lat\":14.991240940769362,\"lng\":120.88520228862764},{\"lat\":14.990748154012422,\"lng\":120.88453710079195},{\"lat\":14.990691094419873,\"lng\":120.88424742221834},{\"lat\":14.991080136794478,\"lng\":120.8833944797516},{\"lat\":14.991360246866199,\"lng\":120.88292777538301},{\"lat\":14.99170779033428,\"lng\":120.88180124759675},{\"lat\":14.991733726391367,\"lng\":120.88128089904787},{\"lat\":14.99127725132763,\"lng\":120.87984859943391},{\"lat\":14.990800026356078,\"lng\":120.87934970855714},{\"lat\":14.990400608985576,\"lng\":120.87909758090974},{\"lat\":14.990037501638144,\"lng\":120.87907612323762},{\"lat\":14.98929572328472,\"lng\":120.87939798831941},{\"lat\":14.988611002522397,\"lng\":120.87970912456514},{\"lat\":14.987915904962202,\"lng\":120.8800631761551},{\"lat\":14.987526856834878,\"lng\":120.88036358356477},{\"lat\":14.987262303704306,\"lng\":120.8804225921631},{\"lat\":14.98684213041305,\"lng\":120.88034212589265},{\"lat\":14.986660573797415,\"lng\":120.88037431240083},{\"lat\":14.986380586719424,\"lng\":120.88056206703187},{\"lat\":14.985913725532734,\"lng\":120.88063716888429},{\"lat\":14.985405364415776,\"lng\":120.88054597377779},{\"lat\":14.985114871806871,\"lng\":120.88068544864656},{\"lat\":14.984559822332892,\"lng\":120.88064789772035},{\"lat\":14.984092957174962,\"lng\":120.88049769401552},{\"lat\":14.983999584021193,\"lng\":120.88058888912202},{\"lat\":14.983703902098888,\"lng\":120.88061034679413},{\"lat\":14.983320033730859,\"lng\":120.8805137872696},{\"lat\":14.982837603589504,\"lng\":120.88020801544191},{\"lat\":14.982287735651122,\"lng\":120.8797198534012},{\"lat\":14.981945364334539,\"lng\":120.87921559810638},{\"lat\":14.981805303183599,\"lng\":120.87841093540193},{\"lat\":14.981582242642958,\"lng\":120.87747752666473},{\"lat\":14.981348806944567,\"lng\":120.87646901607515},{\"lat\":14.980928622046145,\"lng\":120.87621688842775},{\"lat\":14.9805447487021,\"lng\":120.87488114833833},{\"lat\":14.980119374733254,\"lng\":120.87317526340486},{\"lat\":14.979704218869333,\"lng\":120.87162494659425},{\"lat\":14.979595281286308,\"lng\":120.86992979049684},{\"lat\":14.979501906171004,\"lng\":120.86852431297304},{\"lat\":14.979408531015,\"lng\":120.86719393730164},{\"lat\":14.97933590586551,\"lng\":120.8661425113678},{\"lat\":14.979216593066456,\"lng\":120.8645385503769},{\"lat\":14.97907653013056,\"lng\":120.86235523223878},{\"lat\":14.978962404707646,\"lng\":120.86077272892},{\"lat\":14.978863841793482,\"lng\":120.85934579372407},{\"lat\":14.978604465486745,\"lng\":120.85548877716066},{\"lat\":14.97853702759555,\"lng\":120.85468411445619},{\"lat\":14.977971585979926,\"lng\":120.85056960582735},{\"lat\":14.976656001254467,\"lng\":120.85066616535188},{\"lat\":14.975411764957503,\"lng\":120.8507412672043},{\"lat\":14.973582679168587,\"lng\":120.85084319114686},{\"lat\":14.971986889383569,\"lng\":120.85095047950746},{\"lat\":14.970243818606589,\"lng\":120.851047039032},{\"lat\":14.968571516616349,\"lng\":120.85114359855653},{\"lat\":14.967358769177071,\"lng\":120.85103631019594},{\"lat\":14.966234267180376,\"lng\":120.85090756416322},{\"lat\":14.964845485214719,\"lng\":120.85076808929445},{\"lat\":14.963347920619379,\"lng\":120.85063934326173},{\"lat\":14.960605738069594,\"lng\":120.85040330886842},{\"lat\":14.959160206845043,\"lng\":120.85025310516359},{\"lat\":14.957786862429446,\"lng\":120.85012435913087},{\"lat\":14.955988157313516,\"lng\":120.84995269775392},{\"lat\":14.95447436375124,\"lng\":120.85005998611452},{\"lat\":14.953324009553356,\"lng\":120.85015654563905},{\"lat\":14.951940299858329,\"lng\":120.85026383399965},{\"lat\":14.9505913702167,\"lng\":120.85032284259798},{\"lat\":14.949369947582653,\"lng\":120.85046768188478},{\"lat\":14.948046943128043,\"lng\":120.85076808929445},{\"lat\":14.947123429302502,\"lng\":120.85097730159761},{\"lat\":14.947081922969854,\"lng\":120.85049450397493},{\"lat\":14.945912912543216,\"lng\":120.85095047950746},{\"lat\":14.945426184034671,\"lng\":120.85109531879426},{\"lat\":14.944788018236677,\"lng\":120.85087001323701},{\"lat\":14.944295124655147,\"lng\":120.85054814815523},{\"lat\":14.944014953062172,\"lng\":120.85098803043367},{\"lat\":14.943138117380613,\"lng\":120.85032284259798},{\"lat\":14.942769741558456,\"lng\":120.85100412368776},{\"lat\":14.942209394025452,\"lng\":120.8507788181305},{\"lat\":14.940621158843783,\"lng\":120.85081100463869},{\"lat\":14.94059521660104,\"lng\":120.85125088691713},{\"lat\":14.940704173999467,\"lng\":120.85196971893312},{\"lat\":14.93985845559882,\"lng\":120.85206627845766},{\"lat\":14.93816700880514,\"lng\":120.85219502449037},{\"lat\":14.936297636305358,\"lng\":120.8523452281952},{\"lat\":14.935763214713281,\"lng\":120.85240423679353},{\"lat\":14.935576426270407,\"lng\":120.85245788097383},{\"lat\":14.935348129064124,\"lng\":120.85268318653108},{\"lat\":14.934683990357026,\"lng\":120.85298359394075},{\"lat\":14.93403022681176,\"lng\":120.85324108600618},{\"lat\":14.933879757142691,\"lng\":120.8532625436783},{\"lat\":14.933641080899719,\"lng\":120.8534073829651},{\"lat\":14.933635892282807,\"lng\":120.85356831550598},{\"lat\":14.933241557029985,\"lng\":120.85369706153871},{\"lat\":14.93267080735579,\"lng\":120.85392773151399},{\"lat\":14.932675995996021,\"lng\":120.85419595241548},{\"lat\":14.932624109588053,\"lng\":120.85472702980043},{\"lat\":14.932551468595877,\"lng\":120.85501670837404},{\"lat\":14.93233354547196,\"lng\":120.855370759964},{\"lat\":14.932183074614521,\"lng\":120.85552632808687},{\"lat\":14.931980717088397,\"lng\":120.8561271429062},{\"lat\":14.931539680794108,\"lng\":120.85622906684877},{\"lat\":14.931539680794108,\"lng\":120.85606813430788},{\"lat\":14.93134251133442,\"lng\":120.85594475269319},{\"lat\":14.931083077559169,\"lng\":120.85545659065248},{\"lat\":14.930932605825983,\"lng\":120.85532784461975},{\"lat\":14.930704303684765,\"lng\":120.85523128509523},{\"lat\":14.930424114361738,\"lng\":120.85461974143982},{\"lat\":14.930258076071976,\"lng\":120.85459828376771},{\"lat\":14.930045339325734,\"lng\":120.85463583469392},{\"lat\":14.929557600624715,\"lng\":120.85459291934968},{\"lat\":14.929111370630658,\"lng\":120.85448563098909},{\"lat\":14.92881561303097,\"lng\":120.85450708866121},{\"lat\":14.928457590128836,\"lng\":120.85473239421846},{\"lat\":14.927897205258551,\"lng\":120.85490942001344},{\"lat\":14.927441433959762,\"lng\":120.85548877716066},{\"lat\":14.92701076590316,\"lng\":120.85527420043947},{\"lat\":14.926777270812886,\"lng\":120.85473775863649},{\"lat\":14.926331035045854,\"lng\":120.85424423217775},{\"lat\":14.926144238403191,\"lng\":120.85486114025117},{\"lat\":14.926004140814644,\"lng\":120.85530102252962},{\"lat\":14.926087161618879,\"lng\":120.85631489753725},{\"lat\":14.92613904960523,\"lng\":120.8571892976761},{\"lat\":14.926216881561299,\"lng\":120.85814952850343},{\"lat\":14.926222070357353,\"lng\":120.85912048816682},{\"lat\":14.926216881561299,\"lng\":120.8600699901581},{\"lat\":14.926248014335828,\"lng\":120.86082100868227},{\"lat\":14.926263580721406,\"lng\":120.8623391389847},{\"lat\":14.926216930004417,\"lng\":120.86350858211517},{\"lat\":14.926149475644143,\"lng\":120.86525738239288},{\"lat\":14.926066454863978,\"lng\":120.86672186851503},{\"lat\":14.925905602011158,\"lng\":120.86863160133363},{\"lat\":14.925926357224748,\"lng\":120.86985468864442},{\"lat\":14.925210301198126,\"lng\":120.87006926536561},{\"lat\":14.92478481750176,\"lng\":120.87018728256227},{\"lat\":14.924764062177957,\"lng\":120.8699941635132},{\"lat\":14.923985736088666,\"lng\":120.87017655372621},{\"lat\":14.922831795192574,\"lng\":120.87047159671785},{\"lat\":14.922484140096133,\"lng\":120.8705359697342},{\"lat\":14.922427062340008,\"lng\":120.87047159671785},{\"lat\":14.921259559458008,\"lng\":120.87071299552919},{\"lat\":14.920418953457522,\"lng\":120.8710938692093},{\"lat\":14.91917879416016,\"lng\":120.87172150611877},{\"lat\":14.918120242491337,\"lng\":120.87209165096284},{\"lat\":14.91829147914397,\"lng\":120.87293922901154},{\"lat\":14.918234400274896,\"lng\":120.87359905242921},{\"lat\":14.917570208684765,\"lng\":120.87397992610931},{\"lat\":14.917456050548637,\"lng\":120.87419986724855},{\"lat\":14.917834847767306,\"lng\":120.87480604648592},{\"lat\":14.917051307577722,\"lng\":120.87705910205842},{\"lat\":14.915863019326606,\"lng\":120.87885081768037},{\"lat\":14.914794073194882,\"lng\":120.88065862655641},{\"lat\":14.914918610881678,\"lng\":120.88093757629396},{\"lat\":14.91480964040968,\"lng\":120.88110923767091},{\"lat\":14.914508674057373,\"lng\":120.881307721138},{\"lat\":14.914062412828892,\"lng\":120.88160276412965},{\"lat\":14.913522746850798,\"lng\":120.88223576545717},{\"lat\":14.913175076705588,\"lng\":120.88240206241609},{\"lat\":14.912619841129429,\"lng\":120.88337838649751},{\"lat\":14.912298115186603,\"lng\":120.88330864906312},{\"lat\":14.91183628194383,\"lng\":120.88453710079195},{\"lat\":14.912235845593715,\"lng\":120.88543295860292},{\"lat\":14.91168060759364,\"lng\":120.88604986667634},{\"lat\":14.911784390506284,\"lng\":120.88729977607728},{\"lat\":14.911805147082806,\"lng\":120.88766455650331},{\"lat\":14.910632397369922,\"lng\":120.88846921920776},{\"lat\":14.909562208694373,\"lng\":120.8889949321747},{\"lat\":14.908187066838309,\"lng\":120.88970839977266},{\"lat\":14.9067859698723,\"lng\":120.8904004096985},{\"lat\":14.907118082570525,\"lng\":120.89078128337862},{\"lat\":14.9076629538559,\"lng\":120.8915537595749},{\"lat\":14.908104039124192,\"lng\":120.8922725915909},{\"lat\":14.908721556981046,\"lng\":120.89277148246767},{\"lat\":14.90939096509318,\"lng\":120.89317381381989},{\"lat\":14.910755720917853,\"lng\":120.89344203472139},{\"lat\":14.911749794413321,\"lng\":120.89346885681154},{\"lat\":14.91284470126759,\"lng\":120.89321136474611},{\"lat\":14.913711282362959,\"lng\":120.89280903339387},{\"lat\":14.914764666658481,\"lng\":120.89224040508272},{\"lat\":14.915646807173735,\"lng\":120.89165031909944},{\"lat\":14.916492620858621,\"lng\":120.89136064052583},{\"lat\":14.918573412147401,\"lng\":120.89071691036226},{\"lat\":14.919751307518897,\"lng\":120.89048087596895},{\"lat\":14.920856551493387,\"lng\":120.89022874832155},{\"lat\":14.921282042964325,\"lng\":120.88988542556764},{\"lat\":14.921863200686156,\"lng\":120.8893918991089},{\"lat\":14.922574078977778,\"lng\":120.88896811008455},{\"lat\":14.923471754046233,\"lng\":120.88867843151094},{\"lat\":14.924535468205466,\"lng\":120.88844239711763},{\"lat\":14.925189260637904,\"lng\":120.88831365108491},{\"lat\":14.926232211116123,\"lng\":120.88830828666688},{\"lat\":14.927352988078255,\"lng\":120.88814198970796},{\"lat\":14.92799120568111,\"lng\":120.88820099830629},{\"lat\":14.928582722742622,\"lng\":120.88851213455202},{\"lat\":14.929343512179909,\"lng\":120.88924169540407},{\"lat\":14.930054365732273,\"lng\":120.88986933231355},{\"lat\":14.93034350119488,\"lng\":120.89027166366579},{\"lat\":14.930462841181164,\"lng\":120.89087784290315},{\"lat\":14.930483595954616,\"lng\":120.89149475097658},{\"lat\":14.930649634070111,\"lng\":120.89199364185335},{\"lat\":14.931064728797525,\"lng\":120.89271247386934},{\"lat\":14.931552464077525,\"lng\":120.89362978935243},{\"lat\":14.932263310322018,\"lng\":120.89448273181917},{\"lat\":14.933936142913113,\"lng\":120.8954966068268},{\"lat\":14.935248857164742,\"lng\":120.89583456516267},{\"lat\":14.935800465812253,\"lng\":120.89597404003143},{\"lat\":14.936827858371593,\"lng\":120.89669823646547},{\"lat\":14.93786556384122,\"lng\":120.89716494083406},{\"lat\":14.939001845579284,\"lng\":120.89735805988312},{\"lat\":14.939800871146254,\"lng\":120.89736342430116},{\"lat\":14.940506501642277,\"lng\":120.89764237403871},{\"lat\":14.94169465363492,\"lng\":120.89825928211214},{\"lat\":14.942338017035365,\"lng\":120.89892983436584},{\"lat\":14.942929494589627,\"lng\":120.89965403079988},{\"lat\":14.943770012521444,\"lng\":120.90067327022554},{\"lat\":14.943863403199598,\"lng\":120.90115070343019},{\"lat\":14.943692186925249,\"lng\":120.90134918689729},{\"lat\":14.9438737799391,\"lng\":120.90177834033967},{\"lat\":14.944833626174795,\"lng\":120.90211093425752},{\"lat\":14.945462001822325,\"lng\":120.90213239192964},{\"lat\":14.94587187959916,\"lng\":120.90232014656068},{\"lat\":14.946022340865142,\"lng\":120.90278685092927},{\"lat\":14.946344080906156,\"lng\":120.90352714061738},{\"lat\":14.946861700309634,\"lng\":120.90413868427278},{\"lat\":14.947671073179208,\"lng\":120.9045571088791},{\"lat\":14.948677596720348,\"lng\":120.90479850769044},{\"lat\":14.94964260970327,\"lng\":120.90503990650177},{\"lat\":14.950368960698835,\"lng\":120.905259847641},{\"lat\":14.950861840331228,\"lng\":120.90541541576387},{\"lat\":14.951702327198149,\"lng\":120.90544223785402},{\"lat\":14.952646573948487,\"lng\":120.90546369552614},{\"lat\":14.95387616376201,\"lng\":120.90563535690309},{\"lat\":14.95463881719362,\"lng\":120.90589284896852},{\"lat\":14.955432596457017,\"lng\":120.90640783309938},{\"lat\":14.95610827955422,\"lng\":120.90635955333711},{\"lat\":14.956824232546177,\"lng\":120.90663850307466},{\"lat\":14.957503866870837,\"lng\":120.90714275836945},{\"lat\":14.95829763553104,\"lng\":120.90785086154938},{\"lat\":14.9592003492603,\"lng\":120.90852141380311},{\"lat\":14.960217194657075,\"lng\":120.90891301631929},{\"lat\":14.961337794203008,\"lng\":120.90942800045015},{\"lat\":14.962883796925619,\"lng\":120.91022729873659},{\"lat\":14.963475217837766,\"lng\":120.91095149517061},{\"lat\":14.963968067351555,\"lng\":120.91237843036652},{\"lat\":14.964144455323257,\"lng\":120.91371953487398},{\"lat\":14.964035509828449,\"lng\":120.91547906398775},{\"lat\":14.963138004359715,\"lng\":120.91619253158571},{\"lat\":14.963132816455921,\"lng\":120.91823101043703},{\"lat\":14.963106876935008,\"lng\":120.91991007328035},{\"lat\":14.96323138660674,\"lng\":120.92137992382051},{\"lat\":14.963506345209002,\"lng\":120.92218995094301},{\"lat\":14.96508345943556,\"lng\":120.92032849788667},{\"lat\":14.965960205418188,\"lng\":120.91966867446901},{\"lat\":14.96715859205484,\"lng\":120.91888010501863},{\"lat\":14.967796691296344,\"lng\":120.91869235038759},{\"lat\":14.968325845323907,\"lng\":120.9182095527649},{\"lat\":14.968180587485652,\"lng\":120.91757655143739},{\"lat\":14.967931573819605,\"lng\":120.91681480407716},{\"lat\":14.967796691296344,\"lng\":120.91608524322511},{\"lat\":14.967916010455872,\"lng\":120.91543078422548},{\"lat\":14.968237653076713,\"lng\":120.9148943424225},{\"lat\":14.968668238410217,\"lng\":120.91486215591432},{\"lat\":14.969207765799661,\"lng\":120.91463148593904},{\"lat\":14.969856234422172,\"lng\":120.91451883316041},{\"lat\":14.970188249597289,\"lng\":120.91436326503755},{\"lat\":14.970494325631147,\"lng\":120.9139931201935},{\"lat\":14.970494325631147,\"lng\":120.91349959373476},{\"lat\":14.970655145066935,\"lng\":120.91320991516115},{\"lat\":14.970904155568077,\"lng\":120.91315627098085},{\"lat\":14.971116851808658,\"lng\":120.91321527957918},{\"lat\":14.971329547838074,\"lng\":120.91316699981691},{\"lat\":14.971827566983446,\"lng\":120.91280758380891},{\"lat\":14.972040262307328,\"lng\":120.91233015060426},{\"lat\":14.972527904448015,\"lng\":120.91185271739961},{\"lat\":14.973207488984297,\"lng\":120.91125190258028},{\"lat\":14.973108923421862,\"lng\":120.91094613075258},{\"lat\":14.97309336043416,\"lng\":120.9107691049576},{\"lat\":14.973347555758192,\"lng\":120.91046869754793},{\"lat\":14.973438969351344,\"lng\":120.91002345085145},{\"lat\":14.974019985854282,\"lng\":120.90941727161409},{\"lat\":14.974398683262375,\"lng\":120.90926706790925},{\"lat\":14.974398683262375,\"lng\":120.90877890586854},{\"lat\":14.974668439911902,\"lng\":120.90832829475404},{\"lat\":14.974772192378953,\"lng\":120.9078884124756},{\"lat\":14.974922633366914,\"lng\":120.90751826763154},{\"lat\":14.97529095396043,\"lng\":120.90743243694307},{\"lat\":14.975887528225941,\"lng\":120.90748071670534},{\"lat\":14.976469910320937,\"lng\":120.90745925903322},{\"lat\":14.97695235480868,\"lng\":120.90757727622987},{\"lat\":14.977310296790874,\"lng\":120.90728759765626},{\"lat\":14.977673425726703,\"lng\":120.90681016445161},{\"lat\":14.978716121105926,\"lng\":120.90639710426332},{\"lat\":14.980367475570121,\"lng\":120.90593576431276},{\"lat\":14.982253683656094,\"lng\":120.90534567832948},{\"lat\":14.982869379266393,\"lng\":120.90520083904268},{\"lat\":14.9830146271437,\"lng\":120.90529739856721},{\"lat\":14.983113188147179,\"lng\":120.90565681457521},{\"lat\":14.98335180933611,\"lng\":120.90635418891908},{\"lat\":14.983528181348298,\"lng\":120.90642392635347},{\"lat\":14.984020984729757,\"lng\":120.90624690055849},{\"lat\":14.984482662657852,\"lng\":120.90610206127167},{\"lat\":14.986059622453505,\"lng\":120.90553343296052},{\"lat\":14.986578356688943,\"lng\":120.90515255928041},{\"lat\":14.986874034640593,\"lng\":120.90499162673952},{\"lat\":14.987195648790879,\"lng\":120.90440690517427},{\"lat\":14.987916685210152,\"lng\":120.90417087078096},{\"lat\":14.98834723097842,\"lng\":120.90380609035493},{\"lat\":14.98855472260563,\"lng\":120.90388119220735},{\"lat\":14.988834835983205,\"lng\":120.90393483638765},{\"lat\":14.989000828922851,\"lng\":120.9038007259369},{\"lat\":14.989052701690095,\"lng\":120.90355932712556},{\"lat\":14.989052701690095,\"lng\":120.9032589197159},{\"lat\":14.98947287064123,\"lng\":120.9027546644211},{\"lat\":14.989815229917378,\"lng\":120.90227723121644},{\"lat\":14.990119389178787,\"lng\":120.90190708637238},{\"lat\":14.990472121904165,\"lng\":120.90168714523317},{\"lat\":14.990845602979586,\"lng\":120.90170323848726},{\"lat\":14.990985658214797,\"lng\":120.90188562870027},{\"lat\":14.991156836711115,\"lng\":120.90234696865083},{\"lat\":14.99226689999989,\"lng\":120.90277612209321},{\"lat\":14.99274930888612,\"lng\":120.90283513069154},{\"lat\":14.994020165798208,\"lng\":120.90236842632295},{\"lat\":14.994466260720039,\"lng\":120.90222358703615},{\"lat\":14.995150962743791,\"lng\":120.90216994285585},{\"lat\":14.995472564453006,\"lng\":120.90185880661012},{\"lat\":14.99598608876039,\"lng\":120.90197145938875},{\"lat\":14.996463302163043,\"lng\":120.90179443359376},{\"lat\":14.99713762363414,\"lng\":120.90183198451997},{\"lat\":14.997941619532545,\"lng\":120.90192854404451},{\"lat\":14.998373866968228,\"lng\":120.90185880661012},{\"lat\":14.998602097049883,\"lng\":120.90188562870027},{\"lat\":14.998897758384434,\"lng\":120.90177834033967},{\"lat\":14.999436004306947,\"lng\":120.90182662010194},{\"lat\":14.999866526891733,\"lng\":120.90220212936403},{\"lat\":15.000945423055278,\"lng\":120.90252935886384},{\"lat\":15.001142528497017,\"lng\":120.90279757976533},{\"lat\":15.002138426897957,\"lng\":120.90348422527315},{\"lat\":15.002314783422994,\"lng\":120.90374171733858},{\"lat\":15.00286978683188,\"lng\":120.90444982051851},{\"lat\":15.003274367848123,\"lng\":120.90501844882967},{\"lat\":15.003383293375535,\"lng\":120.905619263649},{\"lat\":15.003865677186896,\"lng\":120.9061771631241},{\"lat\":15.004363620624632,\"lng\":120.9074753522873},{\"lat\":15.004156144333194,\"lng\":120.90801179409029},{\"lat\":15.004042032287082,\"lng\":120.90831756591798},{\"lat\":15.004176891971415,\"lng\":120.90860724449159},{\"lat\":15.004316938476627,\"lng\":120.90860724449159},{\"lat\":15.004659273991983,\"lng\":120.90908467769624},{\"lat\":15.004928992496747,\"lng\":120.90922951698305},{\"lat\":15.0053646909009,\"lng\":120.90893983840944},{\"lat\":15.005644782263172,\"lng\":120.909041762352},{\"lat\":15.006345009063063,\"lng\":120.90880036354066},{\"lat\":15.006741975408893,\"lng\":120.90890228748323},{\"lat\":15.007338461987823,\"lng\":120.9089505672455},{\"lat\":15.008095738202677,\"lng\":120.90870380401611},{\"lat\":15.008453628082794,\"lng\":120.90819418430328},{\"lat\":15.0086403529997,\"lng\":120.90756654739381},{\"lat\":15.00854699056164,\"lng\":120.90714275836945},{\"lat\":15.007540748362661,\"lng\":120.90684235095979},{\"lat\":15.007110305798951,\"lng\":120.90635955333711},{\"lat\":15.006701190860738,\"lng\":120.90565681457521},{\"lat\":15.006530024806738,\"lng\":120.9050238132477},{\"lat\":15.006270682039473,\"lng\":120.90448737144472},{\"lat\":15.00621362658844,\"lng\":120.90415477752687},{\"lat\":15.006327737475265,\"lng\":120.90331256389618},{\"lat\":15.006561145917651,\"lng\":120.90236306190492},{\"lat\":15.00682048833247,\"lng\":120.90184271335603},{\"lat\":15.007162819838152,\"lng\":120.9014940261841},{\"lat\":15.007318424886751,\"lng\":120.90126872062685},{\"lat\":15.007671129244127,\"lng\":120.90101122856142},{\"lat\":15.007863041664661,\"lng\":120.90108633041383},{\"lat\":15.008335041749552,\"lng\":120.90087175369264},{\"lat\":15.00867737082921,\"lng\":120.90078055858613},{\"lat\":15.00928422557728,\"lng\":120.90046942234041},{\"lat\":15.010492743147282,\"lng\":120.89970231056215},{\"lat\":15.01075726754051,\"lng\":120.89938580989839},{\"lat\":15.011167020365871,\"lng\":120.89918196201326},{\"lat\":15.011623452967651,\"lng\":120.89909613132478},{\"lat\":15.011950216617754,\"lng\":120.8989405632019},{\"lat\":15.012686729678942,\"lng\":120.8987206220627},{\"lat\":15.013127598958501,\"lng\":120.8988118171692},{\"lat\":15.014227174844306,\"lng\":120.89875280857088},{\"lat\":15.014746976003288,\"lng\":120.89873671531679},{\"lat\":15.01538493333727,\"lng\":120.89857041835786},{\"lat\":15.016012515522165,\"lng\":120.89801251888277},{\"lat\":15.016733454764463,\"lng\":120.89707374572755},{\"lat\":15.016754201181467,\"lng\":120.89662313461305},{\"lat\":15.016660842289115,\"lng\":120.89622616767885},{\"lat\":15.016411885043361,\"lng\":120.89581310749055},{\"lat\":15.016105874697892,\"lng\":120.89563071727753},{\"lat\":15.015919156305614,\"lng\":120.89507281780244},{\"lat\":15.015498910198408,\"lng\":120.89406967163087},{\"lat\":15.01561301612647,\"lng\":120.89390337467195},{\"lat\":15.01573230862244,\"lng\":120.89357614517213},{\"lat\":15.015747868508301,\"lng\":120.89311480522157},{\"lat\":15.015737495251187,\"lng\":120.8929753303528},{\"lat\":15.015887907430116,\"lng\":120.89254617691041},{\"lat\":15.015400364120573,\"lng\":120.89184880256654},{\"lat\":15.014975059473647,\"lng\":120.89178442955019},{\"lat\":15.014669047069725,\"lng\":120.8913177251816},{\"lat\":15.014420087502431,\"lng\":120.89063644409181}]]}', 'Baliuag', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `todaterminal`
--

CREATE TABLE `todaterminal` (
  `todaID` int(11) NOT NULL,
  `Toda` varchar(255) NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `DateCreated` date NOT NULL,
  `Status` varchar(255) NOT NULL,
  `AdminID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todaterminal`
--

INSERT INTO `todaterminal` (`todaID`, `Toda`, `Coordinates`, `DateCreated`, `Status`, `AdminID`) VALUES
(1, 'Piel', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.952606079606278,\"lng\":120.89787847559734}}', '2024-02-03', 'active', 1),
(2, 'SJDD', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.956319116713315,\"lng\":120.90238940371549}}', '2024-02-03', 'active', 1),
(3, 'Sabang', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.961114144732555,\"lng\":120.90076314356054}}', '2024-02-03', 'active', 1),
(4, 'St. Barbara', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.956882119229656,\"lng\":120.89181723907254}}', '2024-02-03', 'active', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `commuter`
--
ALTER TABLE `commuter`
  ADD PRIMARY KEY (`commuterID`);

--
-- Indexes for table `dispatcher`
--
ALTER TABLE `dispatcher`
  ADD PRIMARY KEY (`dispatcherID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverID`);

--
-- Indexes for table `farematrix`
--
ALTER TABLE `farematrix`
  ADD PRIMARY KEY (`fareID`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`provinceID`);

--
-- Indexes for table `todaterminal`
--
ALTER TABLE `todaterminal`
  ADD PRIMARY KEY (`todaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `commuter`
--
ALTER TABLE `commuter`
  MODIFY `commuterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dispatcher`
--
ALTER TABLE `dispatcher`
  MODIFY `dispatcherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `farematrix`
--
ALTER TABLE `farematrix`
  MODIFY `fareID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `provinceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todaterminal`
--
ALTER TABLE `todaterminal`
  MODIFY `todaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
