-- MySQL dump 10.13  Distrib 5.7.23, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: a_little_project
-- ------------------------------------------------------
-- Server version	5.7.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `astro`
--

DROP TABLE IF EXISTS `astro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `astro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_luck_score` int(11) NOT NULL,
  `total_luck_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `love_luck_score` int(11) NOT NULL,
  `love_luck_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_luck_score` int(11) NOT NULL,
  `work_luck_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `financial_luck_score` int(11) NOT NULL,
  `financial_luck_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `astro`
--

LOCK TABLES `astro` WRITE;
/*!40000 ALTER TABLE `astro` DISABLE KEYS */;
INSERT INTO `astro` VALUES (1,'水瓶座',4,'今天與志同道合的朋友在一起溝通，會有惺惺相惜的感覺，內心愉悅。工作上與同事之間的配合默契，喝彩聲連連。愛情方面有機會受到心儀對象邀約，相互碰撞出激情的機率高。',4,'愛情運很順呢，快對愛慕的對象放出強力電波吧！戀愛中人努力對另一半撒嬌，會得到更多的疼愛喔！',4,'事業運頗優，是有始有終、行動力旺盛的一天，有良好的工作態度必能帶動良好的績效。',3,'物質慾望旺盛的一天，容易花錢在吃喝玩樂享受上。把該繳的帳單繳一繳吧！','2019-08-20','2019-08-20'),(2,'雙魚座',3,'你和同事的誤會可望得以冰釋，重歸於好讓你輕鬆快樂，可以更加專心地工作。約好友一起吃吃小吃，或享受異域美食，有益增進彼此的情誼。愛情雖然可望重新開始，卻難以恢復原狀，還是隨緣吧！',4,'愛情運不錯，單身者在下班途中或在休閒場所，容易有一段美麗邂逅，感情進展不錯！',2,'事業運不太穩定，尤其是偏向情緒上的起伏，容易產生不滿的情緒。',3,'投機心態是造成金錢流失的元兇，注意偷雞不著蝕把米！','2019-08-20','2019-08-20'),(3,'牡羊座',4,'今天有機會遇見他，還是控制一下自己的情緒，小心因激動破壞自己在他心中的形象哦；可以去KTV唱歌，把你的熱情用歌聲K出來，會有提升運勢的功效；業績有所突顯，有升職加薪的好運降臨哦！',3,'戀愛運平平，少說兩句挑剔埋怨的話才不會引發口角。',4,'以往的努力可望在今天顯出成效，事業地位得到提升。',3,'眼光不錯的一天，出門消費容易買到物美價廉的好貨色；財務評估特別精準。','2019-08-20','2019-08-20'),(4,'金牛座',2,'今天會有小驚喜哦！最好是不動聲色，等待反而會令你嘗到更甜蜜的幸福感覺；偏財運不濟，難有錢財進帳，不如轉攻為守，這樣財運才有突破；不懂活躍氣氛不要緊，不過當同事們聊天的時候還是要適當給予回應才好。',3,'對愛情顯得照顧不周，心思更多的是放在事業上，對錢財的規劃更有興趣。',3,'情緒不錯，對人對事都特別寬容，不過，工作容易鬆懈，應有所拿捏才好。',2,'在投資上投機心不宜太重，小心被套牢哦。','2019-08-20','2019-08-20'),(5,'雙子座',4,'單身者今天會有不錯的異性緣，且在宴會或聚會上得到更明晰的顯露；搖擺不定會使你失去更多的投資契機，其實今天是個不錯的投資時機喔！耐住性子，你的進步會比他人來得更明顯。',5,'戀情浪漫、熱烈。感覺相互都離不開對方，即使需要在其它方面做出一點犧牲也樂意。',3,'事業運普通，顯得忙碌，事情接二連三的來，應付起來有些吃力。',3,'容易把錢花在朋友身上，但感覺很值得。','2019-08-20','2019-08-20'),(6,'巨蟹座',3,'學習者缺勤奮的毅力，也沒有什麼刺激你向前的動力，不妨先好好玩樂一番；有不錯的求財機會，卻也會因猶豫不決而錯失良機的可能；給情人一個小小的驚喜，精緻禮物烘托下的愛情會很甜蜜。',3,'感情生活雖然平淡，但各忙各的工作，也少了許多摩擦與紛爭，對兩人的感情有利。',3,'運勢平順，內心較為平靜，適當安排休閒娛樂，多與人接觸，可提升運勢。',3,'看到美美的東西，易有產生衝動性，小心買一堆不實用又佔空間的東西回家囉！','2019-08-20','2019-08-20'),(7,'獅子座',2,'今天較感性，總是會緬懷過去，念及舊日戀人會覺得感傷。投資上的眼光不錯，發現新的切入點，不過還是要先做系統分析。工作上容易出現溝通方面的誤會，跟客戶談話最好能解釋清楚一點，不然可能會讓對方誤解。',3,'單身者會注意身邊的每一個人，但行動力稍嫌不足，有喜歡的人應採取主動才好。',2,'金錢觀比較的淡薄，容易受到同事的慫恿花費錢財在請客上。',3,'需要主動爭取型的財路。','2019-08-20','2019-08-20'),(8,'處女座',1,'人際關係易出現磨擦，別人說話的時候最好不要插嘴，以免遭受別人的惡語相向。感情方面有點為情所困，摸不清對方的心態會讓你心情煩悶無比。投資運比較被動，沒有好的機會，有餘錢的話還是儲蓄好。',2,'單身者戀愛運不強，宜把重心放在工作上；已婚者則應多製造生活情趣，讓愛情保鮮。',1,'事業運不佳，特別容易衝動或是意氣用事，眼光看遠點，不要疑神疑鬼，即便遇到杯葛是非先忍下來再說！',1,'財氣變化多端的一天，金錢的損失多來自於自己的迷糊、缺乏計劃、拖延錯失良機。','2019-08-20','2019-08-20'),(9,'天秤座',5,'積極參加朋友的聚會，會玩得很盡興，加上鮮亮的裝扮讓你在派對上大受歡迎；藉著貴人的東風，今天在職場有風光的機會；前期的投資可望在今天嘗到甜頭，可以與之前幫助你的人分享碩果。',4,'愛情運很順呢，快對愛慕的對象放出強力電波吧！戀愛中人努力對另一半撒嬌，會得到更多的疼愛喔！',4,'事業運不錯，可以大膽的嘗試不敢做的事情，主動點，積極點，會有正面的進展。',5,'財氣順順，得財不費力。有閒錢的人不妨在今日投資，容易有意外的收穫喔！','2019-08-20','2019-08-20'),(10,'天蠍座',3,'見多識廣者今天有機會表現口才，扮演傳道者的角色，七分知識加上三分幽默，吸引眾人目光。單身者稍微留心就會發現異性投來的強力電波。投資運一般，動靜相宜的操作方式才有希望得到更多回報。',4,'嚮往溫暖、浪漫的兩人世界嗎？今天就是好時機，與另一半安排一次甜蜜旅遊吧。',2,'事業運不佳，外力干擾特別多，加上今日抗壓性本來就偏弱，上司施點壓力就讓你感受到渾身不自在。',3,'財運不佳，有入不敷出的情況，借錢給朋友應有自己的底限，以免遭受損失唷！','2019-08-20','2019-08-20'),(11,'射手座',2,'對方的心思不必費心去猜，不妨找他聊聊，與戀人間的隔閡只是一場誤會。行運之路頗為平靜，投資理財難有突破。工作上的事情工作時間談就好，將心態放平和一點，這樣才容易抓住更多的機遇。',1,'爭執超級多，保持距離以策安全，容易感受到對方的蠻橫無理。',3,'別因一味追求和諧而放棄個人利益，該爭取的時候就要堅持，表現出你的競爭力。',2,'破財大多是因為貪小便或迷糊健忘引起的。','2019-08-20','2019-08-20'),(12,'摩羯座',3,'有意想不到的人打電話給你，讓你心花怒放；財運平平，可花錢的地方可不少，吹牛裝闊的你少不了一頓大餐的開銷；今天的表達溝通能力很強，可以做些新客戶的拜訪工作。',3,'已婚者感情生活平淡，安排短程旅行可讓愛情升溫；單身者易在職場中結識新的異性朋友。',4,'工作積極性頗高，主動解決難題，令上司頗為欣賞，有機會接手自己感興趣的新工作。',2,'用錢上忌諱的就是主觀成見。','2019-08-20','2019-08-20'),(13,'水瓶座',3,'對愛情有點過於敏感，容易被旁人不經意的一句話、一個動作誤導，產生一些消極的想法。理財頗為順利，細緻的態度讓你檢查出不少遺留的問題，並獲得圓滿解決。拜見客戶表現不錯，會得到客戶的肯定。',2,'戀愛運略差，戀愛中人謹防胡鬧耍性子，單身者專心工作會更好。',4,'精力旺盛，有什麼想法都可以積極行動，正是你好好表現的時機。',3,'賺錢會辛苦些，要辛勤的耕耘才有收穫。','2019-08-21','2019-08-21'),(14,'雙魚座',2,'許多家庭瑣事困擾著你，讓你難以平靜下來，遠離繁雜瑣事，投身工作才能讓你取得平衡。愛情運不佳，單身者害怕受到傷害，因不敢表白而錯過良緣的機率高；有伴侶的人難以瞭解對方的心思。',2,'無心戀愛，可身邊卻有許多異性圍繞，不想陷入感情困擾的話，應懂得拒絕。',3,'細節會決定你今天工作成績的好壞，尤其聲音的處理會成為談判成功與否的重要因素。',2,'有錢別隨意外露，小心破財！','2019-08-21','2019-08-21'),(15,'牡羊座',4,'工作熱情高漲，效率頗高，沒有一絲累的感覺。審美眼光不錯，買份小禮物送給另一半可令對方感動，對感情有促進作用。財運不太穩定，應謀定而後動，不可急於求成。',3,'找情人去大吃一頓，藉著吃飯抬槓一下吧！',4,'事業運不錯，可以大膽的嘗試不敢做的事情，主動點，積極點，會有正面的進展。',3,'今天在金錢運作上顯得特別大膽有魄力，雖然有遠大的眼光，但是還是要仔細評估後才可以有大動作喔！','2019-08-21','2019-08-21'),(16,'金牛座',2,'你幾個調皮的動作，可愛的表情，雖然讓你看起來有點孩子氣，卻也讓別人很想呵護你；市場的頻繁波動，讓你失去投資興趣，養精蓄銳，耐心等待好的機會；對剛接觸的新工作顯得有點難以適應。',3,'愛情甜蜜，送些別緻的禮物給戀人吧，對方會很開心，讓彼此的心更貼近喔！',3,'貪圖享樂的心態比較重，在工作上略有偷懶的傾向。',2,'不利由經商、金錢遊戲取財。','2019-08-21','2019-08-21'),(17,'雙子座',3,'今天愛情運還不錯，主動約對方吃飯，對方應允的機率很高。工作運頗好，做什麼事都感覺得心應手，辦事效率很高。不過，財運就沒那麼好了，賺錢切忌投機取巧，易出現「偷雞不成蝕把米」的狀況。',3,'單身者顯得內斂被動，有機會遇到心儀的對象，下午有表白機會，注意把握！',4,'運勢平順，很多事情都能把握得較好，玩樂心較重，可別讓自己太懶散喔！',2,'今日的你有點懶惰，耐心也不夠，所以不適合做任何的金錢決策，以免發生錯誤的決定。','2019-08-21','2019-08-21'),(18,'巨蟹座',4,'想要關心對方又怕遭到拒絕，顯得越來越木訥，其實幫他泡杯咖啡的小舉動就能引起他的注意哦！財運佳，正財偏財均有不錯的收效，再多些魄力便能有更好的發展；工作運勢大漲，身邊紅眼人如雨後春筍。',4,'單身者感情濃烈，對異性的一舉一動都較感興趣，有機會展開一段浪漫戀情。',4,'有表現的機會，表達能力可望獲得發揮，而且說出來的話很有說服力，適合談判。',4,'運用交際獲財，進帳可觀。','2019-08-21','2019-08-21'),(19,'獅子座',2,'今天你有點心神不定，工作提不起勁來，得盡快調整好心態。單身者與異性接觸較少，需要積極向外活動才能創造戀愛機會。傍晚後運勢有所提升，在休閒娛樂中因朋友的親切舉動，讓你心中的困惑得以解開。',2,'親愛的，今天約會不是翻舊賬的日子，千萬別對方的掃興喔！',3,'處理事務頗為穩重，考慮問題也全面，但有些缺乏積極性以及魄力，不利於開拓市場。',2,'判斷力較弱，易受他人意見左右，投資宜謹慎，小心因迷糊而損失錢財。','2019-08-21','2019-08-21'),(20,'處女座',3,'藝術涵養深厚者今天容易吸引較多異性的眼球，小心陷入桃花叢而迷亂眼睛。工作上有機會接觸極富挑戰性的工作，不必緊張，從戰略上藐視它，從戰術上重視它，便會有好的發展。正財平穩，偏財有所波動，切忌有貪念。',3,'有不少桃花圍著你轉，但你有以貌取人的傾向，不容易把握真情唷！',3,'面對問題時缺乏獨斷的決心和魄力，需要通過求證他人來支持自己的決定。應增強自我判斷能力的信心。',2,'不得安寧的一天，特別容易胡思亂想，只要不做任何舉動損失就會少一點！','2019-08-21','2019-08-21'),(21,'天秤座',4,'愛情平淡和睦，雙方都保持著一種平和的心境相處。工作上與前輩深入溝通，發現不錯的商機，抓住機會可一蹴而就。財運佳，能從市場動態中洞察到不錯的商機，雖有較大風險，但利潤豐厚。',3,'單身者有機會遇到一見鍾情的對象，易有激情上演；戀愛中的人多說甜言蜜語。',5,'今日事業運旺旺，有獨當一面的機會，特別有利於主管階級以及技術、財物、業務工作者，付出與回收會成正比喔！',4,'奔波、競爭中得財，有利於商務接洽、業務工作者。一般內勤工作者沒有特別的財運。','2019-08-21','2019-08-21'),(22,'天蠍座',1,'與另一半易發生衝突，言語過激會使矛盾更加激化，只要有一方退讓便有收場餘地。財運較遜，即使費盡心思尋找生財之道也只是徒勞，在家收看財經報道反而有收穫；連簡單的工作也會有做不來的感覺，乾脆給自己放個假的好。',2,'看上對方了嗎？今天還不是告白的時機，多觀察一段日子，確認自己的心態後再作決定吧。',1,'事業運不佳，麻煩多來自於個人的判斷錯誤，所以不宜在今日做出重大的決策！',1,'財運不穩定，使用支票、信用卡、簽約時要特別小心，稍有不慎後續麻煩會跟著來！','2019-08-21','2019-08-21'),(23,'射手座',5,'有伴侶的人感情甜蜜，溝通良好，因交流而加深彼此的瞭解，看到對方的另一面；單身者與談話投機的異性容易來電，與有緣人徹夜長談的機率高。生意人與客戶溝通順暢，可望談成一筆大生意。',4,'魅力四射的一天，異性緣很好，有許多機會跟異性朋友談天喝茶。',5,'今天是你展現實力的時刻，勇敢前行吧，不用擔心意外突發狀況。',4,'得財順心，財源不錯，雖然都是小財，但有總比沒有好哇！','2019-08-21','2019-08-21'),(24,'摩羯座',3,'工作運佳，對文案、創作工作者特別有利，想像力豐富，文思泉湧，容易有不錯的作品出爐。有伴侶的人多愁善感，對另一半的言行易產生懷疑，影響彼此的感情。財運平順，可以花些錢買自己喜歡的東西，取悅自己。',2,'今天約會，出門時可別忘了帶錢包，買單時沒錢付賬可就糗大了。',4,'適合提出升職加薪的要求，當然前提是你已具備相應的能力和條件。',3,'投資應考慮較穩定的項目。','2019-08-21','2019-08-21');
/*!40000 ALTER TABLE `astro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_20_114739_create_astro_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test@test.com',NULL,NULL,NULL,NULL,'3rWxaFyqgpM1CgSgGSTOePijuiIhVXX6k2fZLL1NtemlLQ7UxP1XDduGl3ov','2019-08-19 21:49:00','2019-08-19 21:49:00',NULL),(2,'test1','test1@test.com',NULL,NULL,NULL,'$2y$10$sk7sE6rlXyF77ubSWUo9ZujfN2hN58HYIW9MRbZM2YRk8H3i8Jn2S','FO8fdNRuwYGjWRaRw1bf7yb5C5w7PYPefAHBIhvb2hkSgdHdk0h2lZj5t8eh','2019-08-20 14:37:58','2019-08-20 14:37:58',NULL),(3,'user','test2@test.com',NULL,NULL,NULL,'$2y$10$bM.JfvMI9riOy/9paAjwquwb5G3oCnuWQtwqNV4vL2GTopBvHfKF6','idLb467ER2zq2FXMYvVU9BLmoSUlspH9DO9puYJmprlT7AnA7kKMcu6wUqi2','2019-08-21 10:14:22','2019-08-21 10:14:22',NULL),(4,'user1297292887','test3@test.com',NULL,NULL,NULL,'$2y$10$hA7kON4TCkT5plLbcoDUde8JMCCFNKgRUbanrL9X9tX4Pc4O8GyGi','Et8VNZnmf1OaAY4qQ79mChOdbvTKTuU2ONCfJD1qNgY3AThlWPXphQ49ic4O','2019-08-21 10:18:00','2019-08-21 10:18:00',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23  8:52:46
