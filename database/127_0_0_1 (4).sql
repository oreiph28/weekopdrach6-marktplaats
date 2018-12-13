-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2018 at 01:24 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_dbase`
--
CREATE DATABASE IF NOT EXISTS `crud_dbase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud_dbase`;

-- --------------------------------------------------------

--
-- Table structure for table `crud_table`
--

DROP TABLE IF EXISTS `crud_table`;
CREATE TABLE IF NOT EXISTS `crud_table` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_text` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud_table`
--

INSERT INTO `crud_table` (`id`, `crud_text`, `email`) VALUES
(1, 'text1', 'a@h.nl'),
(2, 'upd1', 'b@h.nl'),
(4, 'text4', 'd@h.nl');
--
-- Database: `dbase`
--
CREATE DATABASE IF NOT EXISTS `dbase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbase`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`) VALUES
(1, 'Intro SQL', 'Lorem ipsum ...'),
(2, 'How to use JOINs', 'Lorem ipsum ...'),
(3, 'Integrating with MySQL from PHP', 'Lorem ipsum ...');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

DROP TABLE IF EXISTS `articles_categories`;
CREATE TABLE IF NOT EXISTS `articles_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `article_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Database'),
(2, 'PHP');
--
-- Database: `myblog`
--
CREATE DATABASE IF NOT EXISTS `myblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myblog`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=815 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`ID`, `name`, `title`, `email`, `blog`, `file`) VALUES
(813, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image9', 0x6e656c696f312e706e67),
(812, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image8', 0x6e656c696f312e706e67),
(811, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image7', 0x6e656c696f312e706e67),
(810, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image6', 0x6e656c696f312e706e67),
(809, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image5', 0x6e656c696f312e706e67),
(808, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image4', 0x6e656c696f312e706e67),
(814, '', '', '', '', 0xffd8ffe000104a46494600010100000100010000ffdb0084000906071313121513131216161517181817181818181517181a1a15181618161d1d18181d2820191a251d151721312125292b2e2e2e181f3338332c38282d2e2b010a0a0a0e0d0e150f10152d1d171d2b2b2d2b372d2b2b2b2b2b2b2b2d2d2d2d2b2b2d2b2d2b2b2d2b2b372d372d2b372d2d2b2b2d2d2d2b37372b2d2d2d2d2d2dffc000110800c2010303012200021101031101ffc4001c0000020301010101000000000000000000030400020501060708ffc4004110000201030302040402090302050501000102110003210412310541132251610632718142910714235262a1b1c1d133e1f01592435372c2f17382a2b2b334ffc400160101010100000000000000000000000000000102ffc4001811010101010100000000000000000000000011013121ffda000c03010002110311003f00fac6c13e7c9a710a8e31554b8aff006a0ded312666456876f5c59e24d0c02dc9815dddd957ef54183e6a06ecd8503d7de96d488396c57033118902af61509c9934160b23c98fad05801c9dc7bd39a8da0731492baafcb9341a16888a5aeed1c09342f11fe6911e9563ab9e049a0e82dc93156b7aacc7354f0bbb9e7b570dcfdc5c5013524119a25a5523cb49158c9324f6a2072703ca280d6ec8932668d76ce318a4582ab0c99f6a65c1ee46df7a0a0bc1703cc68a2e08f3089a5fc451f289351ad9e5c9a0651001e5a5d95f2cc6a8d74c8080d362e088689a058df2d000fbd51936f2734d369bbad2f734fb72726818b76c119a5f6a29c66a83736060558baa8819340c305619114aa328303f3a35bbc488681f5a097130a28193667268ca2052e9a88c1ae2ea493818a025cd4a8aa170c3b8ae5c45e7bfa52e8c58e30282e48518126ad6109f98d43780c449ae2d866326819f007a0a944551152812049108207ad1ed5d0a219a4d2c88c7330b46d3da4ec65bfe7f2a067047a4fe7403a70a2624d07c0692588028abacc850091eb403966c130284adb4f9735a172cab734a5cb2ca7ca31f9d070a13973f6ff6a3586432179a548cf9ce6a4e7c8bdb9ff98a027eaad39c8a25a6830ab42175d3920f78ef4dd9d486ed416d46d89614a6e66c28814dea6f8514aab3b718141c854e72689b778938a0ddbabe9e6e38effdeb884dcef005031611248993ef54bf61a727cb4266504409f7a7cdc1b65b1f5a057c5030827de99b66479809f4a5b4d794922224ff004fe9576d341dd24d056f820c0103d687b1572492d5c3799e427aff00ccf6a62c6880cb64ff002ff7a0e69cbb7b0a6f6d76a540bdeb33c18a5ee204ed26b42b845066ae9d9cc9c572190c6de7bd6952fa9bac060550b8b5dd8d54dd3c20aa25b2d25da00ab25decbfef406b16732c73e956bda59c8314b5cb10259a0d703b90147e740e59d381ee68ccc077a4d5c27264d71adf89e692282cfad13528516c62a505edda77f9b02388cff5a178bb0ed419ed20cfe5dfe98a3696c5c2db99a26311dbb88981fcfebda8dad42636accf27bc7b644fe740bf82c7ccec477e7fc7fb54170f0a879f724cff0043f5ae35900cdc78246063740e78c607711ef42d3ea8fca8ab92720731ea3f0fd6483ea281bd9b72cc73c40c9efc09f4ed5dd3ebb718da7fe4d18a164f32a96f43244f6cd26d72e65026c3ed9fbc910449f591e940db695499fce3bfd697b81c1daab03db33ef3fdab96d3c3f33b67380188fbff00f0051b4dac0ff84face08fcc77a058db413b8cb7247f93fe6aa2e3b600f2e413c7d208e7ed4e0d126e98f78ed3eb4b5ef14b405daa0763e5e07b4faf13ee38a0634c432901a7b7d3f3ef4b7eaec06c2dcfb9fee647f3aa59b96d7690dbdb2a39001f43fbbf43f9514abdcce02f6e0ab4fb8338a08ec89103719fcbfdff009d0ad297962c02e67d3f2fee6ac2e2a1200df119ce0fe59f68dc698b7a95e2e00246e131047dfb8f4a003dd55c26488fcbdaba4493bd80e3062685aad422478733300e181e2467ea318a7ed2971e748f43dfeb1cafd28133a99f2db1ebe84f138cd39a4461f31fe9fccf6a47feb3a74636edefbaca4865b28f7769ee19941553ec483593a5f88ae307b5afe9f76d212505c086ed9752606e5596b72399103d6a02f55f8b02add5d0e9db5b76dfce2d6d16d0e70ce4c16c7cab27e95f3ee95f15e8f5ae6df586bd6ef2b9dbe7b96ac5bcf9405420db6103ccfdf835f41e89f098d0dd67d0b05b1748372c3962a0f67b4f92a40c6c208200e229df893e15d26b9635164161c5c595b8bf4719fb19157202f49d01b6aa6d6a9eed93daeb0bd8fe1bb86ffb8b56b57c82f7c13d53a5b1b9d33506f5a9936885dd1ef6d8ec7faaed6adaf84ff4977355bac9e9f75b529822d902dc83077b3c783079067da78a41f449a8696bbac16d035d8431900eecf700c0ddf58acbfd66fea71687856bbb9e48f6ff006a81cea3d592df9479dfb22e4fdfd28da2b971966ea043e80ce3dfd3e955e9fd32dd9f944b1e58e49ff14e502d774a0fb50751282147df9a7e2a4528c8b3058ef6fb1fed577bf3e5407fbd357b42ad9e0ff2fc8e0d06ea35b10831113dc1fe734035b5b4f9b27fe7e74cab6ec460f7140b36b01ae63ea724fb88c7daa7881fc8a76e63ebf7ed5459ac5b0626a553f503dc89ff009ef528076ed03372e5d82085f294660782a601127f840241e2698bbaf6242aa9c9ee3244739e3b73eb92281a9d1da25ae1b923780d001699005b902594923ca4189c476edbd4cca58b6506e2a4ede18c416590c01c032382083414bba70b9761b9892a849de62621d2488127cabf526b96f56ce02da40927041079e5a4295899c8248c48e4572ee955033df78ee76b1766807cc7ca0ab0264140b119357fd7bcc52dab2e03f9550bb13dc963b483006ff3039f308a80d60f8261de0b962132d27d9c81e623f0f19c55d2f0bd2a372e39c11130411ca9f5183e8697b7ab45376ddd65655dade6104076dbb4ab3125777e3f973138aa36ad8bec4b3848dabe604c8272c308080624329e37038a06c8f0ad4dd25d782a0160338c9c81c658e3b9ef40f19dfca80a282b0576fb1c9dd1b239dbcf634d5b44b31e72aa702dc86126063048c9ec6334ae9dd5f7a5bdd61d8968027e5892562124e0c413c83de81a6d48b63cd25c9f9419938c20278cf1cf38aee9fa82b0248223bf2a4cc4061de71b4c1f6a0d9e9ca0c5c225f712820a3c63f10dc40998271344ea1a7761b542ec221842ccfaf994861ed83ef5446e9e010c8012380c4c47a08cfe7207a52d72ddebbe561b04647e0fa6643833cfa0e051ecb8b2a4162e4000a2cb8520090305bdc0249818146d26a92ea9c76018730483891827e86833ee009e552198283bbf12fa104e23d8b4f6069dd2b1b8bb6e2488e63ca60c7cafe6071de7d8d0f53634f655aede65545124dd20a2019996e335f3ef8a7f4b2a97059d32380609bee86761e5ad597da5f1c3340f6341eefaaf52d26857c4d45e4b409805da58fb28f99a3ef028f79d755a5b9fabdf1176dbaa5db643052ca406047704835e73e1ce97d335686fdad9aeba479ae6a4f8970346032b8fd90f65503d0565fc37d5ba6aea8d9dbff4fd65b72b72ca5cdb62eb089008fd9dc06444857fa66a0cde93f166afa4585d1eafa6bb8b7212ed99d9704cee2db48dd9c9993c90291d47e917abea9b6e8f466d83c6db572eb7d4dc70117ee2beb3d6baaa696d1bd715cdb58de514b955eec546768ef13fca95d497d4db4bda2d685c1da42a5db0f31f30c37fdac08ab47cff00a5fc35f115cf3dcea5e01e61983b7deda26c03ee6b7fa17c43adb1acb7d3fa92db77bcae6c5fb385716d4b3075204185e40ff34d74cbfd62e5c7b578696c6d00ade5b572f5bb80920edfdb2946183b581fbd1ff56b1a5ba6fddb8fa9d595dbb9f6caa9fc288a02da53e8327bcd41e96ea82ac1b8820998c1e720e3eb5e7b4da8b5657f57d0590792481e593cb331cb12796639f7a28d15fd4435f26ddb9916c727d27d3ef9fa561af5a57ea377a70bbfaa5bb488446d5bba8671262e34ed50238f31cc1c506de8f4768de2b7efaddd4001cda2c30ad3b4ece5860f68c56f578cf887a1f49b5b6e6b2f32324ecb97357a83757ff41370b0fa0aca4fd2ae834ebb05dd56a8038b8c88081d86e7d9bbea44d51f48a95e4be1dfd23f4ed638b76efecba784ba3613ec1be527da66bd6d4d12a541593afeb614ecb23c4b9c40e01feff6a41a3aad4a5b5dcec00ff9c7ad27d33a89bc588b455070c4f3f6a4ed74a93e2eadf71fdd27c8bdbfc638ad7bcc424a286f41200889c473fef540afdb476da4f98719139e60360d47b6517c8b24f27bfe5de91d3d8b973cd724000c960013f4047947193453aadadb50965584218313bbf0c37cc4983d8f6c5000e92e3798a9cfac038c7ef54ad6b0e59412a549fc24891f91a9419d73a728dcd79db6ae3e6670eb19de8c0e3da4fae3b00f531bc5bb4a155964301e2313b80560aa61ad4637ab344e42f346d28bd681b972e0ceef23b924b0908aaccdb1412790a09c4819a574dae60ce42840e5030441e25b69825eceddf9930f2e320c00093072c596f157c424162556e0742ce08257636de60c4a806265b0274ee59b968b3590ae99636405432724a30fc46787c13195ef8b7acb43b5e6dce9b0b22b4bc11b4310b3e144c8b9682920657115b0ee45b57d380e1c025c34b180029dc41de47b8271c1e2801d534898b8dbe5981281edab4c004ab132ad000211803f7ae0bd6af0f0951ed79bca55565584fcc9076189ff0051608220cd0ad682e18bb7ae940249f33879300479bf664c090a42b63c80f15bbac42a6d5a453b97c86ef9fc710cde4961e241826581124c0c483ba6e910ccd70832c588127734001fcd2d6da310adb7e93423ab7045a4b171139c608591bf2de40d9270c4913deb9a5bd76ca06bbbfc3e3666edc5e36b0690c579f210ef9e68afd7127ca37ac812186e20c651488b801c101a441c76a04d7488a8ced7d096f3db75326547cf2181bb8ec663b9357b7aebce36a904b0e47a36e0bb95598d89da61c6f5ee638a7753d16cbb13050b61f66d01f9e410448fde10def4f2da02768027ed27dcf7fad023a2e95001b9b588839512ad2589f139264f6da04600ac1ea3f1eda6be349a236f51a86900b3ecd3a91ccdc00ef6fe14938ed5e6ba86bf5573a8dbd37565f074773725b4b6cc34f75cff00a61eee0bcf9bca76898f2fadbe2afd11234be8585b6e7c1b84f878fdc68dc9c70647d2a8ddd08eb76998ea5349acb44cedb6de15c5f650ebb5808c06333deb7755a1d3f50b1b753a662b246cba852e230e76b0c8f665307d6be49d2be3aea3d32e0d3eb2dbdc41f82eff00aa008cdbbbc5c1f59e7915f57f867e2ed26b87ec2e79c096b4fe5babebe5ee3dc48a6e6e0f9afc41fa2ed4e96e1d474dbacf1c2eed97d41e42b881707b183f5a43e14f8c74da753a4ea1d3edc090f73c29bb27937adb8dcec7bb032678afba9af2df197c1b6fa83d9375d52ddb259caa0f19b91b45e27cb6f3911c806694074df12e8edd9163a72feb4e4136ec5a2ce1777fe63398b36c670c460401dab2ff0047ff0003ff00d293c6d46a8ef6501ada3116703f74e6ebfbc0fa56d69351634a834da0d389fe11209eec4ccb9fe2263de91ebbabb1a4517ba8de2f718136ec5b2599e3240504481c1e14773506b1ea17b524ad85d96e60dc31c0e73fd87dc8a4ba6751d2f8d734da3ba97b58885b7b6e368190082cb8067b093ea6bc5e9bf491a5d71b9635a1f4fa5257c2160dc048120addb969be5208f2858c73453fa34e9faa5373a5ebe19728a2e2dc453f511753f3356237aee83a868b51fafdebedaeb65365eb48a6d9b484862f6ad062afb638237104e6b57ac7c3bd3fac59b77980b8a57f677ad98703d27d8fe16060f6af9bf47eabd7b4cf72c2137ae59f9ac5d22ebecece9256e5cb6780cac7e82876bf48274b7cdd5d1be9aedc69d469cf96c5ecf9ae2ab856b57bf88060783eb48af407f429a64961aad410013b512cef3198076e4fda9ff86fa7f40b04106d8bc391ac2c9754ff00f4efc6cfb2e6bd9fc39f1058d6d917b4ed2386538746fdd75ec7f91ed55ebff0f69b58bb751695a3e57f95d3dd6e0cac50794f8d6e6835ba77d358b0babd43022d780922dbf019af28d96d47393918835ea3a6b1d2692c26aaf6eb896d55db92ec0660727eb40d475c0b1634c0dd70a04f23889c7cc7d4f156d2f4601c5cd55c0f718c05246d9898c81b8fb0818e2a016fbfabc2fecac704f761fdfed8ad3d3e9ad69940581300b31f31fe5fc840a2754ba56d9fd99610776d6dbb40138820cfa011ee456268f4972ec5c62cc0032ce4163b78f0e40001cf9841e0ef6aa1d7d7bdc6d8b853103bba9026704a0991b8023f881ab222e9d43b920e014412b96e602a8e07ce4003326856ba95b45db6d4a98dc59d774f209255a6e1c096123d4d034ba3720dcb81b399dc37b6374eef95140240610463399a819bccf7e576c0c189c02248248593323d3d89a2b35ab3c90d73ff00d678c2885e798931de905d6852de10281f68ced5c98f329563e264c16da493cb019ad2b7bfc23e304c28005c127767e7824193185fccd50b9bf7db2b254f054a811da01527f33528d67acac7994cf787b718c63f69fef528082c1bf6c8bd6cab01b77108091e52c4212e154911b5a640cd2ba5d4da40174ca2eb05e77ab36c07cc04b02003b7c9e5037081dab9aed0bdd3bbc547b67ccac60a2e202b5a3e4baad246ef2b0f5ef421a8b01419b81ed1de7783bade18057660592c933992207cd1505ac68eede3bae081b98ab6f65b8806e03c30a3ca4cac9dd042fca262acfafb76b7f829bee72ed0aa09460970b1055778c12a2091c03c53dd2b58f7079d08c6edc14aa41236804b1de60cca92b8a57aee98c8b82c789b47cc8c05c078123692500cca92e3f08340b1d1bdddcd72eb04631fb49400c2985b6de57b64c81bd55c1590c706b45f40f6fcd6184e4b2dd2efbf100788c4b247680464e0d658b17750a5545b16d428512c6d811810562e81b4028ca194f0d911bba1d29b6bb7733607249020462492073c93f5a01a28bf6c8b969d33f2b1820a9f99590faf0c08344d2e892d962a32e416624b33408124e4c0a66ab41f2feaff00a55bfa6d55cb37b42aaa8d1b7c5878fc2c1b69560c08200fceb6ba67e957a75c8171ee5863ff009884affde92a3ef15a3f1afc36da955bf6362eaecc9b658064b8a7e7b57011e64618cf07222bc26ab4fd13516379b1734fabdc6db6974d26f8babcaad8ca913c36d03d4d6bc1f524b9a5d65a2a1acea6d30c8052e2907d409a7ad5b0aa1544000000760303f957c2f4ff00a27d7ed37adb5bb4f3e447b856f04fc3bae5a5daaffc231ef56e91d67aed9d51d1a5c6bf752375b6d97d124482d7794107bb0fa76a9307da3aaf4ab3a9b66d5fb4b750f661307d41e54fb8335f1ed77e8cae9d71b7a1376dd94826fde95f0dbb0b4c087bb8ee23ddabeabd26e6a2dd92fafbd64b9331690aa263e50589370cf781f4a5aef52bfa86d9a65289306e18f5839edf4127e940a68fa7e9fa7cbbddb9a8d515dad76eb97b847a0e45a49ec39f7ab6a3c6bc86f6a6e0d369d7cc4340c0cc9ddfd5bf2a2e9b48a8971f4fe16af536ced3bae28557c4825676100ce7cd5f3efd207c2fd62e15d45cb8ba908438b76018b2cb994b4c0f891fbd963c44507a7bbd43597adece8fa45b76c8ff00fd7a8fd9eee3296d86f6c7e2658f415a1d2babf50b309d4745b8600d46962eae4c79ad01bd7b49511ec2bc87c29fa5f322d6bd38217c6b6320f1fb4b5db3c95fc851ba0ea3a89bf76f7495f13a797f2dbd4dc8527ff13c3dc4dcb63703138cf1c507b9eb3f076835526f696d963f8d41b6ff00f7a437e75e33a9fe86ed4efd26aee5961c6f1bff002742ac3eb9af75a2d5ddd4d9b88f6afe8eec1527c8db491f35b7cab8f7807d8578de97fa427b1aa6d07515dd711fc35bf6549df203216b4be604a95f901ef88134a3cd758f863aedad8771d4f84dbad5e4747bb6e3986b805d86eebe604735edbe0ef89075156d2ebf4846a2da82eb72cb786e38de37ac21267ca7df6cf6f6cc40127006493803f3e2b075bf1133b785a51bdbf7b95fb0f4fe238fad40bd9e85d3ba7dd6d4dbb7e13baedda8efb587b5addb71eb1026ba1753ade66cd83f9b7f2f37de07d698d0741457172fb07bac640249123eb1bc8fa40f4a67aa756400a05f158c864c81b72af90a770070d13b673140ce9b496f4f6db6a9800b3100b3b40cf19271c0ac5ea1d41af3359d8bb4f0846e6628c37eee4059f2ca875f564fc2c74537fcbb1d5ec86218b963204ffa7b9430ce325963838abeabaa052c9fab32ddb8a64b2da0ad1200dfba2e9893b449001c76206d2936166f5ec301b50c00a40f300cccc4927d5a06222bb6babdb7dc971764ccab49943225844a88e77000131279aced2694de647662acc9b839292ca48dde100dbd140d933084f299804d6ddb0a3c2408360373c46d811472cc1b80d2278da083e9140f6a059b2c37333341296d98bc6d20c853244103cedc7a89a45efdcd446d80b865077c03c7cfe4209dd830c0e63b537a2b2ee3f6eaa42480ed2b7700798300bea7cc0271811928ea2f29b7e0db76756f382ca0e0b4c4784c5d5bcc7c42a664f9a60d068109a71c16776da39cb1f941393f7cb44f6100fa5bc2f295b89903ce22524120ed712a6194e27708c81599a1e9008f11e2da91b986549924b6edde641818dcca4765a06a75785550a0a926db59dc9b872c1533b94e0ca789c6400681dbef6958a955241896d40071ea19a47d0d7295ff00a4ea4613c155ec0dcd529ce4c8b6caa0c93c01f4a941b0ba8b5792e2ba8da015bb6eea8c08921d4e088cf7047134a5cb1a7b2c818b31009b56f371957f16d0a0dc36f890495e31c0a05cbb791b62036c7096c042acab81e0dcdb08fc4a5c1f42079a8d63a41693758c13bb68f2924810c609f06e8920b5a600cce2817d47552d89d96cced36cacca123e7276142a6483b0a951cce36741bf602ee589c82400402060c2acff00da3f95156ca81f28e6781cfafd7df9ab9354788f8b3f491674c8e74e8da9653b59d41fd5edb670f786241ec3f315e6be05f8f2d5cd41b9d42fdc5bede5b64b14d22ab7e108a615a47ccf338cf6afac8b2bb4aed5da665606d33ce38af9b7c5ff00a27b5766e6848b370c9369a7c26ffd27ff0008fd011ec283e993806641c83d8cf152bf3d746f89fa8747bbe05c46d83274f767647adb7cc0f7595f6afae7c3bf1fe87569bbc55b2e079edde2108f5827cae3dc7f2a40deabe2cb36b57faa6a15ac9700d9b8fb7c2bdc6e0ac0f95812043473ee2bcefe913a7b692ea756d22c6a14adabd6c2922fa5c2ab042e4be173e807a0a57e32d0bf5b6b36b4800d3da6667d5ba9f0d8b2eddb69706e8e6488598ce2bd674e4b5d3b4c960deb978a0c6f3b9cf1ff006afa0ed414f8735bd42f917751a7b5a5b5b7fd225ae5e627824c85b63da093ed46bfd56da314d3db56b8e658aa8019b824c65ce39fe74236afeabe7fd95af4ee7d31827ea71ed44ea5a2d4dbb6134096559c9df7af16253b83b00fda133c4803d0d0774dd0dee1f1352c589e101303ea476f61f99a07c45d0355a9fd926aff0055d36d00ad848bcc7b837261538c2804e66be59f167c13d52d5cfd62e6a2e6a0347897ad35ddc9ea4da521b6819f20fb0a3747f863ab5eb62ee8faa2deb7d88d56a0107d0aba9dadec73483d8f46e9baae8e86da5afd6f47b8b96b4a17556c992c59262f2fd0c8af5dd13ade9f569e269eeadc030c06194fa3a9f32b7b115f2d6e9bf1427cb79d87b5cd2bff00fd00ac7d7f4eebc6e8befa6b8b7d7ff1ad2585b847a31b27f68bde181a41f55f8a7e06d26ba4dc4f0ef76bd6a16e7b6ec438f6607da2be59d4fe14ea7d1dcea2c5d66b432d76d48581ff009b69a71efe61ee2bd97c31f1ceb54adaea1d3f533c78f6ac5c23ff00bd1571f55fc857b8eb7d2ec6a2decd40dd6c10c4177453b730db48dcbeaad8f6a70787f84fe33ea3afb5b6d696da30f2b6ad8b0b02304adae5ee0fdd0db477238adae9dd1b49d3b75e62d7f54f2cf7ae435e62df34702d27681188e69bbbd54b458d1a08510080005031e51c28f73f951b43d112dfed6f7ed2e4cf058027d0004b1e327f95026962feb086b9fb3b1c8504c9f4c77fa9c7a0af41a2d1a5a5db6d60773c927d49392694ea3d57630445dee78e0260c18624077024ec53bb1db159d63537a5ef1702de259bc464501bce16de1b7c29105576fab41a037c402e3ee4364b5b00321546b8598153b6148d99064cac79486e6067a181b8ddb9049950bb9a76896dff008afcc490dbb8c922b42cf555de55a155a3c37e51c1f4b83cbb8e31cd5f5dd32ddd9ddba4c6431231c795a567de2a0c94ea7711adda50d21442bed767ddb8824a70607f0a0fde3c0d2d4f515458d42c7941611bd01ce263078e401ef55d4de3a7b445bb63bed24b1b62632e554ece498036e391341d10f1cee7b790205f49b6c382164121d7332ace87331c500753ad5baed6ae58171206d4d9fb41b8eddd96f22813e78032218d3434166ccdd24ba84c03e1b0da36907805a3f7989804e726bb77a379425bbbe1a8cc0507737f1c11287ba2eccfd6955e8db9b3685a60079d21ecb64fca8486b6f926576c13f335068eeb5a9b614cc3057dbb8ab0124293b5b8907daa9a3e9088771f390495900053fbdb042f8993e700120d28b74d92512d26e601a4e6e980092e0478c44b6518912314cf4fd7312a1c4ab922db82cc64496571b14ac6d3923d8e62403afb379da0a1203f9768436f6b1825f75c0c4810700104182662a970dbd341281ee193bb0b8244cdc6983c005cc9e2699d4dff001095b3a909706e512aae858738305ca9ecadec696d3f4aba6e333b32ee5da595ad1633b4794f86201032614e064e2014bfd4f53b8ed2a1670363f1db8b4c3f2623d09a95adff0050d3212b216090404204c99e07acd7281cd36a95c16460c260c7208e410720fb114506b1fc6549ba859c984bae5496550095664014b0cc6e8300fa535a0d76f2ca42c80183236e475248041e4191953c7bd03f5c35ca9505854ae4d7055197f14f4bb7a9d3ba3e9975040251198279bb1173943ee2bc5fc2ff00a2ed36980bfae64bce3210ff00a287b08226eb0f538f6af67afeb6a8765b1e239c003227edcfda8367a4dcba77ea58fb20311f971f41f9d072e754b974f87a658031bc8803d3d97fad35d3fa2a5b3b9ff68f3327807d81fea6b42ddb0a36a8000e00e2ad41626b86b952a0e835e77ab7c236ae5c3a8d3bb69353deed9801fdaedb3e5ba3ea27debd0d4ab83c5dff008d2e684adbeab6b66e9d9a9b0ad72cdc8cc14f9edbc7683df35bbf0efc42bacdcf6acdf16446cbb713c35b93cec563bc81ea40153ad741d2df7b77b52bbc5892aaec7c204c798a70cc23134bea7abdcba7c2d2a9f778881edd945069f52eae964798cb764044fdff00745652e8efea886bc7c3b7385189e6207fee3f9539d33a1adb3bdcf8973993c03ec0f27dcd3daab8ea090a5e780a048c1930c46eed819aa259b36ecdb3b161541260162607e6c714b3ea2cdffd93165624c292d6dc94c92854f980efb498e0fa55741ae768ddb0a646f0488698da4328f34c88e4455b53aab56d9f685f17682f03201f94b900ed07393e99a015ce9b6d3735d60ca7041503c427b3aaf96eb4c4424fd6af6facaef2206c1015977316320050a163ea2656323d13bb65ef9c7feaf3957b43e50202961220b0821b38614db3ad80c637dd8da0b3005fba82e70a258c07338e4d012e74eb6373b2ec0770b880cdbb8189037244313cf139833431d4b04222a03b56cb3ee547fc24794796230a6098c452b77c4bae604b28e3ccaa081957530577024643861c11cd31a3b6d691ae1b4c5c00a1413254760a5d822cf604e3d78a0d2b97d5237b2aee214490a0b7a093c9f4e688046008edc560b3b5f62bc88e03128a5799952bdc4adc507d27b3c196c00a4b1765f2825ca92a3214b485c9c027d2280faed50b6bb883b67cc730a33e630098c471dfef599d63a8b400b2a8c4c329dc6e01b70361dc2776366e6c1f2c569e975a19b6ed656026088ef1f5efdc0abdad322b1655da5a262403efb463767989a0cdd0f47014f88a0201fe9c023cb3968f2b1c0208556ec66a6bf5eee36db0c15d65586f04c6705677623cab9e788a15ce9e49ff004c83b8c6d03c11ba658a97e783202b4cc516d9b7a7f991b748f3ed5825a061c9f2899cdc327393500974b69141bca021db2a158a02a07fac0920bcc1048c1192699eaf6ee5d4f26d6b6769f2b905a0c9e1183af18e0e668166e1777536e496524ac5b6407779d8ee0c4f20403307241c376d6cd8624bc33c162c79ced13036a89c4e249ef419afd01db3168481826fac606211f68fb62a5688b7a8fdfb6d92410db04124af976370204c9989ef5caa09d434cb8ba15772c19c2b1db9005c3f28e7eb3407eabba3629527e7dca7727aca8cfac34114bdd5676dc59636c00e1c5b218c32b23643c7047de9b296ad19cb5c55214125982f70b2640f6a0b749dc14ab36e51e60cde5b9927e75881c608807d053b6ee86120cd615c3e2b87f2860a728fb593246588860444a30ed4cdbb696545c7da6e05322dac4e33b5464f02a0d0d5ea56da976981e826b10b5fd5617f676bb9f5ff003fd2b657588554c887e3b8cf624629898aa14e9fd3add91e419eec793fe3e94dd726a4d076a54152a095dae552edd0a0b31000ee6905eb3fa97574b382773fee8fee7b5676a7abdcbcde1e994fbbfa0ffda29ce97d156d9dcde7b9ccf207ac4ff5a04ed682eea487be76a765183f61dbea735b56d12d2401b5064ff927bfde87abd601dc9f5892018e1a33de62b32dd97bae5b99e4c90aa320ecc6e53eb6dc199e6a86359ad6659556d87823cac60c1c310d04e31ce334c78b75149705fd36a82571cb010489ec013f5aedad32d959542ef014903303d8180bec291daf79a196369f49404011e5215a0c72320d03b63aa0206f81380c0ca13e9bbf09fe1600fd6876f428d04170abf80ee0ea707caf3b907a804820f6ae975b40dd71bae664aa95246ec797d071b8fe74bded7396dcbbb1e60808865e1b23cae3b8218113c1a071fa825b3b4a94513e60be51044e0640961988a5757a5f0ff696d8c361bca092ac777cdb4f97dd834026229cd33f8a25edaca9c18244e32a58038e263b50fa85abcd3b488ec279e2774833ec411400d3eb02db4b76f69c10196026e07840d0ae3907338a6bfea08a9bae1f0a2370623ca4f19188f7aa5bd22fe3862277000857ee0b2643308e739a1a6b8ee2e10786c20c006e3151cc7e35027893ed415b9ad6f118a84642251ed9de41813bedc8de44488331db9a0693426e4b03e57c9b9f36e99189c9022365c5603b715a07496f7862a31e600a8c13c10489079c03de91d46b15caba6f583b4b0852730010d2067f0b81338340c5fd6a5a52968030093b7b0ce70209f6240fa512c6a4c78aec552000a42ed999de18493208ef03342d26948f3dc3b42312b95f2ac77392a39f2ee22a9aaea04821372f10dc122390a72cbeeb27da81eb7ae42db660e22442b48fc0dc3fd8e2a9aad0abcb4b2b1fc4ace3b4700804fd697d3e939670154418dd21c6df31b8a542cce64007d684759e65369cec2b85284a9e00daa20858eeb3ee2819d44dab7b6d205e482012ab9e480267df6903bd5746ed770ca193f7e76b488200284861df72910444537a6baccb2c850e707fafb4fbe6bba8b7b94aeeda7d44f68c608c1e0c7ad002d5db36c786a000b8808c7be73064cccfbcd4a05cd01264dab0c7d4ef93023ba93fccd4a0b3ba5e1b1b7238cc4ed607d411c8f718a1ae8cf98dc78edb9495dc07761c06f71cd52f7ecf66c8639104f6e480ddbe94d26a52e234e00c30388f506833b5d765986e3b000657e648efb08f3afbe68f6748ec4b1683101c410c222406ca34629cd3e9944104b4020126601f4340d5689a6518c4c9424807dc3723fa50745e55dcb69016e5b100f6267827da87a0671304959c873b8827276b0e47b1e2ad6f4aaaa5ae1ef3927ed31f311eb5cbfa96610032ce3744fd0c8ec7fbd03da7d52bced391c83861f5078a35665bd2705e06d882198b739963983e9465d7aef8fc3186ec4fa0a0762bb35c0d58fd535178b7876d089fc5fefda819ea7d5edd9e4ee6fdd1fdcf6acdb5a3bba921ef12a9d947f61dbea698d17494b5fb4b87737326481f414f5cd72c794863db38cd104b5a7089b6d80bfe7d4fad64ddbd7432876d84c824c9b7726602ed8287be7f9d5f437ee1668933248249519ecdc8fa1ad4bd782ac9f6fcff00b5159da4d216d8ce4ab4495e4c71b4b88dcbec7344b9af5da45bf2aa982dc011cfbaff00ea222857af1b98330785f21c8ec41e44f714c2d84401dce40c4e76e3201e48f63400d3ea6e62de641f98c124720e3111df146d76ab828c4c44952bb649ee0e0fd24513576cdc51b5b1c91986f631914b2e982c17531c47cdb63b330f997ea2807a347bb25829124adc1b83419c024c823d38fad3be22db95412dcb01c99ee40199f6a05ed7481b2403ec323b6d9c1fa552d68c110ec441903831ebeabef0682da6bf7258cc8dc0798ed0a39f96398f434d1d68e003bbf74e0fd7dc7d26877964ab5bdac048dbc020f71ef546d3ee32c085e595883db057f74fb8a002df37491b371e4066809ef2073839067dab42c6915720066cf9881ba0f6903f9d289aa83087cbef807e8fdcfd6bba13727991bb2589e3d00fcb33415bf6ef3b00514a9ec72a38f43278e6241a35cb696a5fe66fc219966312a18f6fa9fca9c79831cc6278fe559645cdc37182396c0107983dc7f09140f59d52be3b91f29e7fc1fa8aa3dab69e6f4cc7201ec42f00e791546b8a8360f31209819c1e4c0e07d2924059e40f34723103d3747ff8b0a07ee85ba3cb7322786ee7d63e943d36982799c839c01f2fb60082fef02acd716daeecb13038ce4fa7e1148f8649608209c8130bed8e227ba90680edabbac41459131df07f8a3b1fa08a6c5bd89e580727cc59f27273327ff8aa2c5b9272d001c924c7b1cc7bd2371dee6d9009990071cfaf07b60c1a076d7502403e1367d1ad91f99607f954aa8e9e0e58c9249276a8e4cfa576816b1a281bae600fa091fc5da7dead7b52bb76a47d08fe83bd52e31b93cc7f4f6228fa4d324020cfa7b7d3d2805a27220fca0fe1391f55f4a77576d9802ad0467d8c7afb566b07dd0cbbd679e08fcb9ad0d2a44c71e94012cd706d64820f3dbea0d5deeada0725893f5ff829b2291fd47324889c18cffbd02cd698eedb2431e2653fc834dada5b63ced381ce623fe73555d405dca838e7dbfcd0914dc111f79fed40c5bd7e6369cf069ab77646447d692f25a06327fe7e54af88d70ac903db341aba9b3bc46e2bee0c1a41f445412408ee07e2fa8f5fa5386ef86be73268b6ae0613409aea804012048c1cc4d77a6ef886cae7279a39d2accff2ec7ed4beaef102002071c500f5162dab794999060476febf4ae9b1e27995b7a922412711e9e95db1a4cee688ff0099f6aedcd585116c638341773e11100b6ee73271e9ed4cdad42b0c1fa8ff003594d68933bbcbde9a5f0cca0313c9f5fbd010adb077633f94fd3d681fad12df20238f71f59aeae99b741f329fb455af30b67107ea73406b1a5504301b4fa5575165f30c483da73f63da92fd63c42201041e3207b5692a3ed891bbd6810b768012473c28c4fd47144b9adfc2a223991fd8506f696e038fbc1fec69d5b0368de648efde82692f9e1bbe41cf1ef352e22dde1cca9edc4fd3bd2faaba4ac0e3d7fdabba4b041dc7ca3d8f3f5a0edad29e1c49ece307ede94c5e903ca24faffce6a875c376d8fbd18dd1eb40869ed3393bc41fde9208ff00229a75d88768c9f4feb8a5eeeb8c6201fe547d3ea2479b1efeb4095bb4cf83c88f3110713d863bf68a7188b4bee7927927d49a8b7586481b67b51addc56e33dbfcd062392c64bb49fdd2b1f691c54ad270a0c40a9414b9aa025545074d6dbe618139f7ab7ea9b7cdcfb54b9aa2442e3da81bbbaa031ccd276f729257d7ed56b1a6912dc7a1a6ae5905081404bba90aa09e6b3afea19c4015d4b0c464cfd69bd32a8c4c9a05ac20913dbd2adaad498217156bda3932860fa575ed10bb8813400b2b896913dfd688eca2206450ee6a4b4088a35bd3773814155b45ceefeb460cb6c40e6aba8bd0217d281a6d396e6819d26af760d36c244552d5a0bc512833aee91861492be956d36982896314e9602877ed071409ea7572214576c6977662055d6c04c9cd71b544f1c50135770a0851f7a4d2cb3f3f735a56da5734addd4818518a08d6d520031ea68f62e62267de90b36c9c9e3de9b5baaa23b5059f504cededde93bb719f199f6a696c83953146b3640cf7a04ec6d4f9ce454bfa82d81c7d28d7b4b26679ed555454c9e682b634a0799bf9d07537b7f6115dd45d67e38a25bd3c0924505749a5c4b714f6c5223045665dd61f948c7b533a442324e2809fab7bf97d28d6954085c0a4b53aacc0e3bd76d02320c83da80cfa45266a574df1eb5ca05ae9e687a5f987d2a54a06b5a7cb56d19c54a9404bdc1acdb67cd52a503fa439345b9c576a50256546ea2ea4e2a54a01a0e29db7c54a9416a8fc54a9419baf38a374e38a95281b6e295b6a377152a505b53c56758f9aa54a0d37f9686462bb5282d67e5abd8352a50105676b7e71f4a95282b6aba0f352a500f483cf47d71e2b952817ee3eb4cb1c1a95281106a54a941fffd9);

-- --------------------------------------------------------

--
-- Table structure for table `culture`
--

DROP TABLE IF EXISTS `culture`;
CREATE TABLE IF NOT EXISTS `culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  `topic` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `culture`
--

INSERT INTO `culture` (`ID`, `name`, `title`, `email`, `blog`, `file`, `topic`) VALUES
(1, 'culture1', 'test1', 'test1@test.nl', 'dit is een culture blog1', '', 'culture'),
(2, 'culture2', 'test2', 'test2@test.nl', 'dit is een culture blog2', '', 'culture'),
(3, 'culture3', 'test3', 'test3@test.nl', 'dit is een culture blog3', '', 'culture'),
(4, 'culture4', 'test4', 'test4@test.nl', 'dit is een culture blog4', '', 'culture'),
(5, 'culture', 'culture', 'oreiph@hotmail.com', 'culture', 0x63756c747572652e6a7067, 'culture'),
(6, 'o.e REIPH', 'kledinglijn', 'oreiph@hotmail.com', 'Of het nu voor Instagram is of voor een van haar televisieprogrammaâ€™s; Anna Nooshin is een waar fashionicoon en ze ziet er altijd prachtig uit. De influencer lanceert nu haar eigen kledingcollectie samen met het merk NA-KD.\r\n\r\nStatement-items\r\nMet stylish tops, edgy broeken en matching two pieces lanceert Nooshin een statement collectie om je outfit spannender te maken. De collectie is wat prijziger dan NA-KDs andere kleding: tops kosten â‚¬ 27,95, sets rond de â‚¬ 90 en voor de broeken betaal je ongeveer â‚¬ 50. Op Instagram deelt ze vast een paar van haar favoriete outfits.\r\n\r\n', 0x63756c74757265312e6a7067, 'culture'),
(7, 'o.e REIPH', 'reizen', 'oreiph@hotmail.com', 'Elke week peilen we via Telegraaf.nl/VRIJ de mening van onze lezers over een reisonderwerp. Deze week: is alleen reizen fijn of vervelend?\r\n\r\nVoor mijn werk maak ik in mijn eentje weleens een trip naar het buitenland en dat bevalt goed. Lekker met niemand rekening hoeven houden. Maar alleen? Daar heb ik geen ervaring mee. Als vrienden alleen op vakantie gaan, vraag ik me af of dat saai is.\r\n\r\nOok Debbie Leurs-Reemeijer is hier benieuwd naar. Zij heeft een druk gezinsleven en is graag alleen. â€žMaar dat komt niet zo vaak voor. Daarom zou ik heel graag alleen op vakantie gaan, maar ik ben bang dat ik me dan eenzaam of onveilig ga voelen. Nooit geweten dat dit zoâ€™n lastige beslissing zou zijn.â€\r\n\r\nUit de vele reacties op onze oproep blijkt dat het merendeel van u enthousiast is over alleen reizen. Zo schrijft Mandy Vogelenzang: â€žHet fijne is dat je je tijd zelf kunt indelen. Ik kan slenteren zolang ik wil, zelf bepalen welke activiteiten ik ga doen en hoelang ik op het strand lig.â€\r\n\r\nMaar er zijn ook nadelen, vindt zij. â€žMinder leuk is dat je mooie ervaringen niet kunt delen. Natuurlijk zijn er sociale media en de telefoon. maar dat is niet hetzelfde als samen van iets genieten.â€\r\n\r\nVoor wie wel alleen op vakantie wil gaan maar niet alleen wil zÃ­jn, bestaan er singlereizen. Een uitkomst, schrijft Els Stoop. â€žAls alleenstaande ben ik zo al op reis geweest naar ItaliÃ« en Thailand. Altijd met een gezellige ploeg waardoor je je niet alleen voelt. Met een partner is misschien gezelliger, maar als je niemand hebt, kan ik dit iedereen aanbevelen.â€\r\n\r\nVrijheid', 0x63756c74757265322e6a7067, 'culture'),
(8, 'o.e REIPH', 'snorkelen', 'oreiph@hotmail.com', ' Op zoek naar Maori-kunst in Nieuw-Zeeland\r\nHet Taupomeer, een van de grootste meren van Nieuw-Zeeland, is ongeveer 26.000 jaar geleden ontstaan door een vulkaanuitbarsting, waarbij bijna het hele Noordereiland met as werd bedekt. Tegenwoordig is daar niets meer van te zien en kun je heerlijk snorkelen tussen de rivierkreeften, forellen en inheemse kokopuvissen. Tegelijkertijd kun je je ogen de kost geven aan Maori-kunst die uit de rotsen in Mine Bay is gehakt. De rotskunst is niet zo oud als ze lijkt â€” het gaat om werk uit de jaren zeventig van de Maori-beeldhouwer Matahi Whakataka-Brightwell.', 0x63756c74757265332e6a7067, 'culture');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`, `time`, `email`) VALUES
(1, 'admin', 'admin', '2018', ''),
(2, 'user1', 'user1', '2018', ''),
(3, 'user2', 'pass2', 'time', 'oreiph@hotmail.com'),
(4, 'user2', 'pass3', 'time', 'oreiph@hotmail.com'),
(5, 'user4', 'pass4', 'time', 'oreiph@hotmail.com'),
(6, 'user5', 'pass5', 'time', 'oreiph@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  `topic` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`ID`, `name`, `title`, `email`, `blog`, `file`, `topic`) VALUES
(1, 'news1', 'test1', 'news@news.nl', 'dit is een news blog1', '', 'news'),
(2, 'news2', 'test2', 'news@news.nl', 'dit is een news blog2', '', 'news'),
(3, 'news3', 'test3', 'news@news.nl', 'dit is een news blog3', '', 'news'),
(4, 'news4', 'test4', 'news@news.nl', 'dit is een news blog44', '', 'news'),
(8, 'news', 'news', 'oreiph@hotmail.com', 'news', 0x6e6577732e6a7067, 'news'),
(9, 'o.e reiph', 'Te water geraakte automobilist overleden', 'oreiph@hotmail.com', 'De auto werd langs de Kippenburgweg in het water gevonden. Duikers van de brandweer haalden de man uit de auto. Hij overleed in het ziekenhuis.\r\n\r\nDe politie waarschuwde woensdagochtend dat het op meerdere plekken in Drenthe, waaronder in Uffelte, mistig is en dat sommige wegen glad zijn door opvriezing.', 0x77617465722e6a7067, 'news'),
(10, 'o.e REIPH', 'sobibor overleden', 'oreiph@hotmail.com', 'Selma Engel-Wijnberg, de enige Nederlandse vrouw die het Duitse vernietigingskamp Sobibor overleefde, is op 96-jarige leeftijd overleden. Dat meldt haar familie dinsdag aan de NOS.\r\n\r\nEngel-Wijnberg ontsnapte op 14 oktober 1943 uit het nazivernietigingskamp Sobibor tijdens een opstand. Ze verbleef een jaar op een onderduikadres in Polen. Na de oorlog kwam ze samen met de man die haar hielp vluchten, Chaim Engel, terug naar Nederland. Hier wachtte haar een kil ontvangst. Bij terugkomst dreigde ze haar Nederlands staatsburgerschap te verliezen omdat ze wilde trouwen met een Poolse man. Ze emigreerden uiteindelijk naar IsraÃ«l en later de Verenigde Staten.', 0x736f6269626f722e6a7067, 'news'),
(12, 'o.e REIPH', 'Groete brand', 'oreiph@hotmail.com', 'NIJMEGEN (ANP) - Bij een truckcentrum in Nijmegen woedt een grote brand. Het gaat om een loods aan de Rouwenboschweg, ten westen van het Maas-Waalkanaal, met daarin trailers.\r\n\r\nVolgens de brandweer komt bij de brand veel rook vrij die naar het noorden over Weurt trekt. In de omgeving wordt gemeten of er verhoogde concentraties van schadelijke stoffen vrijkomen.', 0x6e657773322e6a7067, 'news');

-- --------------------------------------------------------

--
-- Table structure for table `politics`
--

DROP TABLE IF EXISTS `politics`;
CREATE TABLE IF NOT EXISTS `politics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  `topic` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `politics`
--

INSERT INTO `politics` (`ID`, `name`, `title`, `email`, `blog`, `file`, `topic`) VALUES
(1, 'politics1', 'test1', 'politics@politics.nl', 'dit is een politics blog1', '', 'politics'),
(2, 'politics2', 'test2', 'politics@politics.nl', 'dit is een politics blog3', '', 'politics'),
(3, 'politics3', 'test3', 'politics@politics.nl', 'dit is een politics blog3', '', 'politics'),
(4, 'politics4', 'test4', 'politics@politics.nl', 'dit is een politics blog4', '', 'politics'),
(5, 'REIPH', 'politics', 'oreiph@hotmail.com', 'politics', 0x706f6c69746963732e6a7067, 'politics'),
(6, 'o.e REIPH', 'INF verdrag', 'oreiph@hotmail.com', 'In het INF-verdrag spraken de VS en Rusland in 1987 af geen (kern)raketten meer te plaatsen met een bereik van meer dan 500 kilometer. President Trump had al eerder aangekondigd het verdrag op te zeggen vanwege de Russische schending. Nu zeggen ook de NAVO- bondgenoten dat de huidige situatie niet houdbaar is. Het is nu aan Rusland het INF-verdrag overeind te houden, zeggen de NAVO-ministers. ', 0x706f6c6974696373312e6a7067, 'politics'),
(7, 'o.e REIPH', 'Tientallen maffiosi opgepakt op SiciliÃ«', 'oreiph@hotmail.com', 'De Italiaanse politie heeft tientallen maffiosi opgepakt, onder wie Settimino Mineo, de vermeende nieuwe leider van de Cosa Nostra, de overkoepelende organisatie van verschillende Siciliaanse maffiafamilies. Dat meldt de Italiaanse viceminister Luigi di Maio dinsdag op Instagram. Met de arrestaties zou de Siciliaanse maffia een gevoelige slag zijn toegebracht.\r\n\r\nDe 80-jarige Mineo werd volgens de Italiaanse politie onlangs verkozen tot opvolger van Salvatore â€˜TotÃ²â€™ Riina, de maffiatopman die in 1993 opgepakt werd en vorig jaar in de gevangenis van Parma overleed. â€œVoor dit gespuis is in ItaliÃ« geen plaats meerâ€, aldus Di Maio.', 0x706f6c6974696373322e6a7067, 'politics'),
(8, 'o.e REIPH', 'Kindermoordenaar komt na 45 jaar vrij ', 'oreiph@hotmail.com', 'Een babysitter die in 1973 drie kinderen in het Britse Worcester vermoordde en hun lichaampjes op een tuinhek spietste, komt op vrije voeten.\r\n\r\nDavid McGreavy werd 45 jaar geleden tot levenslang veroordeeld voor de moord op de kinderen van vier, twee en negen maanden oud. Hun moeder had de reclasseringscommissie gesmeekt de man langer vast te houden, meldt The Sun.\r\n\r\nAanzienlijk veranderd\r\nMaar de commissie oordeelt dat McGreavy, bijgenaamd het Monster van Worcester, \'aanzienlijk veranderd\' is tijdens de 45 jaar dat hij in de gevangenis zat en dat hij vrijgelaten mag worden, schrijft BBC News.\r\n\r\nMcGreavy, die bij zijn oppasfamilie een kamer huurde, bekende in 1973 dat hij de drie had vermoord omdat een van hen maar bleef huilen.', 0x706f6c6974696373332e6a7067, 'politics');

-- --------------------------------------------------------

--
-- Table structure for table `popular`
--

DROP TABLE IF EXISTS `popular`;
CREATE TABLE IF NOT EXISTS `popular` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  `topic` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular`
--

INSERT INTO `popular` (`ID`, `email`, `name`, `title`, `blog`, `file`, `topic`) VALUES
(1, 'oreiph@hotmail.com', 'o.e REIPH', 'Justitie VS klaagt vier personen aan', 'Justitie in de Verenigde Staten heeft dinsdagavond aangekondigd vier personen aan te klagen voor belastingontduiking, aan het licht gekomen na publicatie van de Panama Papers. Dat meldt persbureau Reuters. Het gaat om twee Amerikanen en twee Duitsers. Drie van de vier verdachten zijn al aangehouden.\r\n\r\nDe oudste verdachte is de Duitse investeringsmanager Joachim von der Goltz (81), van wie alleen bekend is dat hij een klant was van het Panamese bedrijf Mossack Fonseca, spil in de papers. Zijn landgenoot Dirk Brauer, ook aangehouden, werkte op het moment van zijn aanhouding voor een vermogensbeheerder die nauw samenwerkte met Mossack Fonseca, en zo ook voor Von der Goltz.', 0x706f70756c6172312e6a7067, 'popular'),
(2, 'oreiph@hotmail.com', 'o.e REIPH', 'Politie zet cybervrijwilligers in', 'De politie zet vanaf woensdag zogenoemde cybervrijwilligers in. Vorig jaar bleek uit een inventarisatie dat bij de politie ruim tweehonderd vrijwilligers werken die relevante ICT-kennis hebben die nog niet werd gebruikt. Veertien van hen hebben inmiddels aanvullende trainingen gedaan en kunnen nu aan de slag.', 0x706f70756c6172322e6a7067, 'popular'),
(3, 'oreiph@hotmail.com', 'o.e REIPH', 'trampoline parken', 'Uitbaters van trampolineparken Jumpsquare en Jump XL gaan samen verder. Jumpsquare neemt zijn branchegenoot over voor een niet bekendgemaakt bedrag. Daarmee ontstaat de grootste uitbater van indoor trampolineparken in Europa.\r\n\r\n\r\nNa de fusie blijven de merken Jumpsquare en Jump XL bestaan. De twee partijen hebben samen 37 indoor trampolineparken in Nederland, BelgiÃ«, Frankrijk, Duitsland en Polen. Voor het einde van het jaar komen er nog drie bij. In totaal werken er 850 mensen bij de speelparadijzen, die deels in eigen beheer en deels via franchisenemers worden uitgebaat.', 0x706f70756c6172332e6a7067, 'popular'),
(4, 'oreiph@hotmail.com', 'o.e REIPH', 'Hammie in de wijnkoeler', 'Het is blijkbaar een herkenbaar verhaal: kinderen die hun huisdier zo stevig vasthouden, dat het arme beestje sterft. En dat terwijl ze er alleen maar voor willen zorgen dat het dier niet ontsnapt. Op Twitter delen baasjes trieste voorbeelden. \'Ze dekte haar cavia toe in het poppenbedje, net iets te goed.\'\r\n\r\nTwitteraar M.I., ook wel bekend als @Empie_17, hoorde gisteren een nogal tragisch huisdierenverhaal van een jongetje en deelde dit op twitter. Het jongetje had van zijn moeder de opdracht gekregen de kanarie \'heel goed\' vast te houden terwijl de kooi van het diertje een goede schoonmaakbeurt gaf. Dat deed het jongetje. Net iets te goed. Gevolg: kanarie dood.', 0x706f70756c6172342e6a7067, 'popular');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
CREATE TABLE IF NOT EXISTS `sport` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  `topic` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`ID`, `name`, `title`, `email`, `blog`, `file`, `topic`) VALUES
(1, 'sport1', 'test1', 'sport@sport.nl', 'dit is een sport blog1', '', 'sport'),
(2, 'sport2', 'test2', 'sport@sport.nl', 'dit is een sport blog2', '', 'sport'),
(3, 'sport3', 'test3', 'sport@sport.nl', 'dit is een sport blog3', '', 'sport'),
(4, 'sport4', 'test4', 'sport@sport.nl', 'dit is een sport blog4', '', 'sport'),
(5, 'sport', 'sport', 'oreiph@hotmail.com', 'sport', 0x73706f72742e6a7067, 'sport'),
(6, 'o.e REIPH', 'Isimat-Mirin', 'oreiph@hotmail.com', 'Isimat-Mirin miste in de eerste seizoenshelft van 2017/18 geen enkele seconde in de Eredivisie. Hoe anders is de situatie nu: de 27-jarige verdediger kwam in competitieverband niet Ã©Ã©n keer in actie en mocht alleen in de toernooien om de Champions League en KNVB Beker in totaal vijfmaal aantreden. Als er in de bezetting niks verandert, is PSV bereid om mee te denken bij een overgang, zonder de hoofdprijs te vragen. De Fransman heeft immers een aflopend contract.\r\n\r\nVoor Ramselaar, 22 jaar, hoopt PSV wÃ©l een goed bedrag te vangen: de middenvelder kwam medio 2016 voor dik vier miljoen euro over van FC Utrecht. Afgelopen seizoen kwam hij in 31 van de 34 Eredivisie-duels in actie, maar dit seizoen deed Mark van Bommel slechts 25 minuten beroep op hem. Het contract van Ramselaar loopt in de zomer van 2020 af.\r\n\r\nDe een jaar jongere Lundqvist is weliswaar basisspeler van Jong PSV, maar hij heeft nu geen uitzicht op speelminuten in de hoofdmacht. Ook zijn contract loopt af en bij een goed bod kan de Zweedse middenvelder in principe weg. Behoudens bij niet te weigeren biedingen, vertrekt er volgens de regionale krant niemand van de kern uit de A-selectie. PSV moet nog nader bepalen welke talenten eventueel voor verhuur aan een Eredivisie-club in aanmerking kunnen komen.', 0x73706f7274312e6a7067, 'sport'),
(7, 'o.e REIPH', 'SC Heerenveen', 'oreiph@hotmail.com', 'De bestuurscrisis bij SC Heerenveen komt op korte termijn tot een ontknoping. De uitkomst: een frisse start voor een club die hunkert naar nieuw bestuurlijk elan.\r\n\r\n\r\nDaarmee wordt gehoor gegeven aan een breed gedragen verzet onder tal van factoren binnen en rond SC Heerenveen. Zij hebben de situatie bij de club het afgelopen jaar van kwaad tot erger zien gaan en hebben de voorbije maanden aan de alarmbellen getrokken. Eerst bij de raad van commissarissen, later bij het Stichtingsbestuur. Een bloemlezing van hun zorgen: afhakende sponsoren en supporters, de zorgwekkende financiÃ«le positie van de club en de sportieve stagnatie. Tot overmaat van ramp kwam directeur Luuc Eisenga met enkele grote geldschieters in aanvaring en trad de raad van commissarissen niet op.\r\n\r\nHet Stichtingsbestuur heeft daarom besloten dat het tijd is voor een nieuwe koers en daarbij horen ook andere mensen. Op korte termijn treedt dit orgaan naar buiten met de details van deze omwenteling.\r\n\r\nPrioriteit van het alles overkoepelende orgaan van SC Heerenveen is dat er in dat proces geen mensen beschadigd raken. Met andere woorden: afscheid moet genomen worden door de voordeur. In dat opzicht komt het goed uit dat de club binnenkort goede sier kan gaan maken met de jaarcijfers over het seizoen 2017/18. Het operationele tekort zal fors zijn, maar na verrekening van de transfers van onder meer Sam Larsson, Jeremiah St. Juste en Joost van Aken staat er onder de streep een dikke plus. Dus: de vertrekkende mannen uit de leiding kunnen zichzelf met een positieve noot uitgeleide kunnen doen, wijzend op het feit dat de club onder hun hoede voor het derde jaar op rij een mooie winst geboekt heeft.', 0x73706f7274322e6a7067, 'sport'),
(8, 'o.e REIPH', 'knvb', 'oreiph@hotmail.com', 'De KNVB wil de toekomstige voorzitter van de bond een salaris gaan betalen. Dat voorstel staat in het profiel dat een opvolgingscommissie heeft gemaakt over de vervanging van Michael van Praag, die eind 2019 zal aftreden.\r\n\r\nTot dusverre werkte de bondspreses altijd onbezoldigd. Wel is het zo dat zowel Van Praag als zijn voorganger Jeu Sprengers (voorzitter tussen 1993 en 2008) zijn Nederlandse voorzitterschap kon gebruiken als een springplank naar het UEFA-bestuur, waar wÃ©l vergoedingen worden uitgekeerd. De KNVB verwacht dat de nieuwe voorzitter gemiddeld twee dagen per week kwijt zal zijn aan de functie en dat \'de vergoeding passend moet zijn en in enige relatie staat tot de vergoeding die de directieleden ontvangen\'.\r\n\r\nTevens wil de bond een garantie dat de opvolger bereid is twee termijnen van vier jaar aan te gaan. De laatste 25 jaar telde de KNVB slechts twee voorzitters. Van Praag is straks bij zijn afscheid elf jaar actief geweest als bondshoofd, terwijl Sprengers bij zijn overlijden in 2008 zelfs vijftien jaar uithangbord was van de voetbalbond. In de achtkoppige commissie die een opvolger voor Van Praag gaat zoeken, hebben onder anderen Eric Gudde (KNVB), Peter Fossen (PSV) en Arie van Eijden (ex-Ajax en Almere City) zitting. Zij worden ondersteund door een extern recruitmentbureau en zoeken een ervaren boegbeeld met gezag.', 0x73706f7274332e6a7067, 'sport');
--
-- Database: `news`
--
CREATE DATABASE IF NOT EXISTS `news` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `news`;
--
-- Database: `oreiph`
--
CREATE DATABASE IF NOT EXISTS `oreiph` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `oreiph`;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE IF NOT EXISTS `user_login` (
  `username` varchar(255) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`username`, `Password`, `id`) VALUES
('oreiph', '1771128903', 1),
('ornelio', 'reiph', 2),
('oreiph', '1771128903', 3),
('nubiano', 'nubiano', 4),
('nibblebits', 'technology', 5);
--
-- Database: `oreiph_blog`
--
CREATE DATABASE IF NOT EXISTS `oreiph_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `oreiph_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `blog` text NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=830 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`ID`, `name`, `title`, `email`, `blog`, `file`) VALUES
(829, 'o.e REIPH', 'reiph', 'oreiph@hotmail.com', 'poular', 0x6865616465722e6a7067),
(828, 'popular', 'popular', 'oreiph@hotmail.com', 'popular', 0x696d616765312e6a7067),
(827, 'popular', 'popular', 'oreiph@hotmail.com', 'popular', 0x696d616765312e6a7067),
(826, 'liverpool', 'misconduct', 'oreiph@hotmail.com', 'Liverpool manager Jurgen Klopp has accepted a charge of misconduct for running on to the pitch after his side\'s 96th-minute winner against Everton at Anfield.', 0x6c69766572706f6f6c2e6a7067),
(825, 'somalie', 'bomaanslag', 'oreiph@hotmail.com', 'Een bomaanslag wordt in het dagelijks taalgebruik als een onwettige daad aangeduid, waarbij met behulp van een bom wordt gepoogd om een of meer mensen te doden of om objecten te beschadigen of te vernietigen.\r\n\r\nBomaanslagen worden vaak gebruikt door terroristische organisaties om een bepaald doel te bewerkstelligen. Vaak worden symbolische plekken of gebouwen gekozen om een aanslag te plegen of op bekende mensen of mensenmassa\'s. Bijvoorbeeld de Duitse Rote Armee Fraktion (RAF) probeerde hun politieke doel te verwezenlijken door bomaanslagen te plegen op bekende personen.\r\n\r\nNiet altijd is een aanslag echter gericht tegen personen. Zo was de aanslag van zeezender Radio Veronica op het schip van Radio Noordzee Nationaal in 1971 alleen bedoeld om de concurrent uit te schakelen door brand te stichten en het schip zo te dwingen naar de kust te varen binnen het bereik van de Nederlandse kustwacht, al had deze aanslag wel degelijk tot doden kunnen leiden.', 0x626f6d2e6a7067),
(824, 'o.e REIPH', 'testb image', 'oreiph@hotmail.com', 'test2101', 0x6e6577732e6a7067),
(823, 'o.e REIPH', '11111111111111', 'oreiph@hotmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0x7069635f62756c626f66662e676966),
(822, 'o.e REIPH', 'ghdhg', 'oreiph@hotmail.com', 'hgdndhnd', 0x6865616465722e6a7067),
(821, 'o.e REIPH', '11111111111111', 'oreiph@hotmail.com', 'asdsaa', 0x63756c747572652e6a7067),
(820, 'o.e REIPH', 'reiph', 'oreiph@hotmail.com', 'sport', 0x73706f72742e6a7067),
(819, 'o.e REIPH', 'reiph', 'oreiph@hotmail.com', 'sfsdg', 0x6861636b61746f6e2e6a7067),
(815, 'o.e REIPH', 'reiph', 'oreiph@hotmail.com', 'news', 0x706f6c69746963732e6a7067),
(816, 'sport', 'sport', 'oreiph@hotmail.com', 'sport', 0x73706f72742e6a7067),
(817, 'REIPH', '11111111111111', 'oreiph@hotmail.com', 'dinsdag', 0x63756c747572652e6a7067),
(818, 'o.e REIPH', 'reiph', 'oreiph@hotmail.com', 'sfsdg', 0x6861636b61746f6e2e6a7067),
(814, 'REIPH', 'test', 'oreiph@hotmail.com', 'dit is een news test', 0x6e6577732e6a7067),
(813, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image9', 0x6e656c696f312e706e67),
(812, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image8', 0x6e656c696f312e706e67),
(811, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image7', 0x6e656c696f312e706e67),
(810, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image6', 0x6e656c696f312e706e67),
(809, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image5', 0x6e656c696f312e706e67),
(808, 'o.e REIPH', 'image test', 'oreiph@hotmail.com', 'this ia  test image4', 0x6e656c696f312e706e67);
--
-- Database: `photos`
--
CREATE DATABASE IF NOT EXISTS `photos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `photos`;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `text`) VALUES
(1, 'nelio1.png', 'passfoto\r\npassfoto\r\npassfoto'),
(2, 'nelio1.png', 'passfoto\r\npassfoto\r\npassfoto'),
(3, 'nelio1.png', 'passfoto\r\npassfoto\r\npassfoto'),
(4, 'nelio1.png', 'passfoto\r\npassfoto\r\npassfoto'),
(5, 'kweek.jpg', 'hello');
--
-- Database: `virtual_market`
--
CREATE DATABASE IF NOT EXISTS `virtual_market` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `virtual_market`;

-- --------------------------------------------------------

--
-- Table structure for table `advertentie`
--

DROP TABLE IF EXISTS `advertentie`;
CREATE TABLE IF NOT EXISTS `advertentie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `groep` varchar(255) NOT NULL,
  `advertentie` text NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertentie`
--

INSERT INTO `advertentie` (`id`, `username`, `email`, `groep`, `advertentie`, `file`) VALUES
(19, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto1', 0x652e6a7067),
(20, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto2', 0x692e6a7067),
(21, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto3', 0x6b2e6a7067),
(22, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto4', 0x706963332e6a7067),
(23, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto5', 0x712e6a7067),
(24, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto6', 0x742e6a7067),
(25, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto7', 0x752e6a7067),
(26, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto8', 0x772e6a7067),
(27, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto9', 0x792e6a7067),
(28, 'o.e REIPH', 'oreiph@hotmail.com', 'auto', 'auto10', 0x722e6a7067),
(41, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books1', 0x626f6f6b312e6a7067),
(42, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books2', 0x626f6f6b322e6a7067),
(43, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books3', 0x626f6f6b332e6a7067),
(44, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books4', 0x626f6f6b342e6a7067),
(45, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books5', 0x626f6f6b352e6a7067),
(46, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books6', 0x626f6f6b362e6a7067),
(47, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books7', 0x626f6f6b372e6a7067),
(48, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books8', 0x626f6f6b382e6a7067),
(49, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books9', 0x626f6f6b392e6a7067),
(50, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books10', 0x626f6f6b31302e6a7067),
(51, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books11', 0x626f6f6b31312e6a7067),
(52, 'o.e reiph', 'oreiph@hotmail.com', 'books', 'books12', 0x626f6f6b31322e6a7067),
(53, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv1', 0x7476312e6a7067),
(54, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv2', 0x7476322e6a7067),
(55, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv3', 0x7476332e6a7067),
(56, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv4', 0x7476342e6a7067),
(57, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv5', 0x7476352e6a7067),
(58, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv6', 0x7476362e6a7067),
(59, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv7', 0x7476372e6a7067),
(60, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv7', 0x7476372e6a7067),
(61, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv7', 0x7476372e6a7067),
(62, 'REIPH', 'oreiph@hotmail.com', 'tv', 'tv7', 0x7476372e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `binnenland_vakantie`
--

DROP TABLE IF EXISTS `binnenland_vakantie`;
CREATE TABLE IF NOT EXISTS `binnenland_vakantie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `europa` varchar(255) NOT NULL,
  `amerika` varchar(255) NOT NULL,
  `afrika` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertentie` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `file` longblob NOT NULL,
  `username` varchar(255) NOT NULL,
  `books` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groepen`
--

DROP TABLE IF EXISTS `groepen`;
CREATE TABLE IF NOT EXISTS `groepen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sport` varchar(255) NOT NULL,
  `huishouden` varchar(255) NOT NULL,
  `boeken` varchar(255) NOT NULL,
  `computer` varchar(255) NOT NULL,
  `sieraden` int(255) NOT NULL,
  `telecomunicatie` varchar(255) NOT NULL,
  `speelgoed` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `kleding` varchar(255) NOT NULL,
  `tuin` varchar(255) NOT NULL,
  `vacatures` varchar(255) NOT NULL,
  `vakantie` varchar(255) NOT NULL,
  `diversen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groepen`
--

INSERT INTO `groepen` (`id`, `sport`, `huishouden`, `boeken`, `computer`, `sieraden`, `telecomunicatie`, `speelgoed`, `hobby`, `kleding`, `tuin`, `vacatures`, `vakantie`, `diversen`) VALUES
(1, 'sport1', 'houshouden1', 'boken1', 'computer1', 12, 'telecom1', 'speelgoed1', 'hobby1', 'kleding1', 'tuin1', 'vacatures1', 'vakantie1', 'div1'),
(2, 'sport2', 'huishouden2', 'boeken2', 'computer2', 11, 'telcom2', 'speelgoed2', 'hobby2', 'kleding2', 'tuin2', 'vacatures2', 'vakantie2', 'div2');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
CREATE TABLE IF NOT EXISTS `hardware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laptop` varchar(255) NOT NULL,
  `printer` varchar(255) NOT NULL,
  `scanner` int(11) NOT NULL,
  `desktop` varchar(255) NOT NULL,
  `overig` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`, `time`) VALUES
(1, 'virtualmarket', '123456', 'oreiph@hotmail.com', 'time'),
(2, 'oreiph', 'oreiph', 'oreiph@hotmail.com', 'time');

-- --------------------------------------------------------

--
-- Table structure for table `mannen_kleding`
--

DROP TABLE IF EXISTS `mannen_kleding`;
CREATE TABLE IF NOT EXISTS `mannen_kleding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `broek` varchar(255) NOT NULL,
  `hemd` varchar(255) NOT NULL,
  `ondergoed` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
CREATE TABLE IF NOT EXISTS `software` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `besturingssoftware` varchar(255) NOT NULL,
  `educatie` varchar(255) NOT NULL,
  `grafisch` varchar(255) NOT NULL,
  `muziek` varchar(255) NOT NULL,
  `navigatie` varchar(255) NOT NULL,
  `overig` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrouwen_kleding`
--

DROP TABLE IF EXISTS `vrouwen_kleding`;
CREATE TABLE IF NOT EXISTS `vrouwen_kleding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `broek` varchar(255) NOT NULL,
  `hemd` varchar(255) NOT NULL,
  `ondergoed` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
