-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 17 2022 г., 00:53
-- Версия сервера: 8.0.17
-- Версия PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simple-blog-2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `title`, `slug`, `content`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Sed dignissimos labore.', 'sed-dignissimos-labore', 'Eius consequatur magnam consequatur cumque ullam labore aliquid. Aut explicabo amet et dolorum. Aut officia enim beatae nesciunt distinctio aliquam fugit. Vitae nobis eius sunt ut maiores.', 0, 1, '2022-11-17 00:52:56', '2022-11-17 00:52:56'),
(2, 5, 'Dolore aut sint eligendi.', 'dolore-aut-sint-eligendi', 'Voluptatibus tempore vel in voluptas et consequatur accusantium. Aut nihil at rem voluptatum suscipit ea. Eius eius voluptate et et sit rerum.', 0, 1, '2022-11-17 00:52:57', '2022-11-17 00:52:57'),
(3, 6, 'Non libero quia quibusdam nulla voluptate.', 'non-libero-quia-quibusdam-nulla-voluptate', 'Fuga voluptatum porro et deserunt at. Odio labore temporibus nostrum mollitia blanditiis. Expedita qui non qui fugiat.', 0, 1, '2022-11-17 00:52:57', '2022-11-17 00:52:57'),
(4, 1, 'Commodi voluptas saepe blanditiis.', 'commodi-voluptas-saepe-blanditiis', 'Ratione nam est harum ut minus qui molestias. Aliquam voluptas esse eligendi vero fugit eum est molestiae. Sequi blanditiis ullam rerum excepturi ducimus vel nobis aperiam.', 0, 1, '2022-11-17 00:52:58', '2022-11-17 00:52:58'),
(5, 2, 'In maiores sunt impedit.', 'in-maiores-sunt-impedit', 'Voluptatum quasi magni eum saepe ad eos officia voluptatem. Praesentium animi error et nemo suscipit voluptatibus non. Esse laborum eum iste vel nemo.', 0, 1, '2022-11-17 00:52:58', '2022-11-17 00:52:58'),
(6, 6, 'Ratione quia eos inventore.', 'ratione-quia-eos-inventore', 'Pariatur eum vitae quia iure. Sed repudiandae error temporibus delectus sed molestias porro dolor.', 0, 1, '2022-11-17 00:52:58', '2022-11-17 00:52:58'),
(7, 1, 'Optio autem ducimus voluptate.', 'optio-autem-ducimus-voluptate', 'Vero dolorem aut illo unde cupiditate amet. Debitis et consequatur voluptatem minus quisquam id nemo. Quo ipsa et quod harum.', 0, 1, '2022-11-17 00:52:58', '2022-11-17 00:52:58'),
(8, 3, 'Rerum quibusdam recusandae tempora provident.', 'rerum-quibusdam-recusandae-tempora-provident', 'Ea quis tempore facere aperiam. Provident voluptatem omnis nam. Et reprehenderit dolorem modi. Voluptatem alias molestiae molestias reiciendis expedita a modi sint. Vero odit natus qui et et.', 0, 1, '2022-11-17 00:52:58', '2022-11-17 00:52:58'),
(9, 5, 'Repellendus vitae iure exercitationem.', 'repellendus-vitae-iure-exercitationem', 'Amet ut ullam nobis est. Sit autem deserunt omnis. Cupiditate et impedit saepe consequatur. Quibusdam ut suscipit nisi quia.', 0, 1, '2022-11-17 00:52:59', '2022-11-17 00:52:59'),
(10, 4, 'Et qui ab dolor quis.', 'et-qui-ab-dolor-quis', 'Et at culpa eum illum. Voluptatem consequuntur provident ullam. Repudiandae non amet minima fugiat.', 0, 1, '2022-11-17 00:52:59', '2022-11-17 00:52:59'),
(11, 1, 'Vero qui facere eos dolorem quia.', 'vero-qui-facere-eos-dolorem-quia', 'Sequi voluptas fugiat quasi enim veniam possimus. Porro fugiat corrupti rerum eos cupiditate. Dolorem distinctio similique neque omnis.', 0, 1, '2022-11-17 00:53:00', '2022-11-17 00:53:00'),
(12, 2, 'Est non ullam non.', 'est-non-ullam-non', 'Doloribus reiciendis enim reprehenderit. Aut facilis voluptates labore magnam eveniet ratione non qui. Odio sint omnis explicabo ut voluptatum molestias qui.', 0, 1, '2022-11-17 00:53:00', '2022-11-17 00:53:00'),
(13, 4, 'Nostrum labore mollitia et dolor vel.', 'nostrum-labore-mollitia-et-dolor-vel', 'Ut rerum voluptates consectetur voluptatem. Maiores sed et dignissimos molestiae. Dolore provident ut possimus aperiam quia aut odio qui.', 0, 1, '2022-11-17 00:53:00', '2022-11-17 00:53:00'),
(14, 6, 'Consequatur beatae saepe qui.', 'consequatur-beatae-saepe-qui', 'Sed dolorem eveniet sit enim. Necessitatibus quis vel ut velit quis aut. Dolore et doloremque sed incidunt.', 0, 1, '2022-11-17 00:53:00', '2022-11-17 00:53:00'),
(15, 6, 'Eligendi accusamus sunt.', 'eligendi-accusamus-sunt', 'Velit fuga iusto repudiandae optio ullam aut earum. Est vel nesciunt architecto quia temporibus quo rerum. Ducimus quisquam quos et voluptatum impedit.', 0, 1, '2022-11-17 00:53:01', '2022-11-17 00:53:01'),
(16, 3, 'Maxime incidunt et.', 'maxime-incidunt-et', 'Mollitia enim magni rerum consequatur rerum dolor. Et non optio consequatur soluta est. Consequuntur et consequatur atque rerum id nemo quam vel. Earum modi ex rem dolorem ullam.', 0, 1, '2022-11-17 00:53:01', '2022-11-17 00:53:01'),
(17, 1, 'Asperiores est magnam magnam odit enim.', 'asperiores-est-magnam-magnam-odit-enim', 'Necessitatibus ut eos est facere. Sit sint rerum consequatur distinctio et. Quidem libero molestias nam molestiae dolor. Eum debitis mollitia illo quo.', 0, 1, '2022-11-17 00:53:01', '2022-11-17 00:53:01'),
(18, 3, 'Est explicabo in corrupti placeat in.', 'est-explicabo-in-corrupti-placeat-in', 'Cupiditate itaque mollitia autem id qui dolorum. Iure eos provident ut optio numquam. Ut vitae nihil mollitia sit necessitatibus corrupti. Quas perspiciatis sit voluptatibus odio id in quod.', 0, 1, '2022-11-17 00:53:01', '2022-11-17 00:53:01'),
(19, 1, 'Laborum deserunt nam occaecati velit.', 'laborum-deserunt-nam-occaecati-velit', 'Quia labore est quaerat doloribus et. Aut neque facilis ipsam temporibus asperiores animi fugiat. Commodi amet voluptates a eligendi placeat beatae praesentium rerum.', 0, 1, '2022-11-17 00:53:01', '2022-11-17 00:53:01'),
(20, 3, 'Et et ab ducimus quisquam.', 'et-et-ab-ducimus-quisquam', 'Et blanditiis ex doloremque eveniet repellendus excepturi at. Fuga rerum quod et error explicabo vel. A laudantium tenetur cupiditate.', 0, 1, '2022-11-17 00:53:02', '2022-11-17 00:53:02'),
(21, 3, 'Sequi veritatis voluptas eveniet autem soluta.', 'sequi-veritatis-voluptas-eveniet-autem-soluta', 'Ut quia non itaque sit. Aut nemo aut aut. Dolores facilis voluptas ut quaerat. Voluptas explicabo sit vero sunt cum expedita enim optio.', 0, 1, '2022-11-17 00:53:02', '2022-11-17 00:53:02'),
(22, 2, 'Doloribus eius vel non.', 'doloribus-eius-vel-non', 'Perspiciatis blanditiis aut laboriosam. Cumque dolores sunt non nisi delectus sed. Rerum consequuntur exercitationem eum molestias ea quo eligendi ea. Dicta odio omnis dignissimos dolores.', 0, 1, '2022-11-17 00:53:02', '2022-11-17 00:53:02'),
(23, 5, 'Modi ab earum.', 'modi-ab-earum', 'Consequatur et necessitatibus provident praesentium incidunt ut dignissimos illo. Nobis culpa in nostrum rerum quod. Qui occaecati aut nihil non. Nam eum necessitatibus id ipsum.', 0, 1, '2022-11-17 00:53:02', '2022-11-17 00:53:02'),
(24, 1, 'Magnam ex molestiae provident.', 'magnam-ex-molestiae-provident', 'Rerum error harum laboriosam voluptatem non sint. Molestiae officiis debitis maxime necessitatibus. Quia soluta dicta ipsum assumenda.', 0, 1, '2022-11-17 00:53:03', '2022-11-17 00:53:03'),
(25, 2, 'Numquam aut rerum laboriosam.', 'numquam-aut-rerum-laboriosam', 'Aut eos dolores nostrum sit rerum. Modi dolorem aut minima sed in. Deleniti maiores commodi illum minima ut et. Et a sint est et ea architecto odit.', 0, 1, '2022-11-17 00:53:03', '2022-11-17 00:53:03'),
(26, 4, 'Deleniti qui quaerat.', 'deleniti-qui-quaerat', 'Optio consequatur praesentium sapiente omnis. Fugit et sit blanditiis esse vel accusamus doloribus molestias. Architecto molestiae libero est voluptates dignissimos aut non.', 0, 1, '2022-11-17 00:53:03', '2022-11-17 00:53:03'),
(27, 2, 'Reiciendis nostrum voluptatem quae est quibusdam.', 'reiciendis-nostrum-voluptatem-quae-est-quibusdam', 'Ex fugit et vitae consequatur et. Consectetur officia inventore repellat necessitatibus qui ut. Non rerum quos dolorem in.', 0, 1, '2022-11-17 00:53:04', '2022-11-17 00:53:04'),
(28, 5, 'Odio dignissimos sint architecto.', 'odio-dignissimos-sint-architecto', 'Molestiae earum neque dolorem voluptatem earum est nemo reiciendis. Qui omnis laborum accusantium qui. Quod laudantium asperiores nulla rerum.', 0, 1, '2022-11-17 00:53:04', '2022-11-17 00:53:04'),
(29, 6, 'Et ab iure neque.', 'et-ab-iure-neque', 'Numquam fuga adipisci possimus ea. Deserunt deleniti dolorum aut dolor ratione pariatur. Cumque et culpa eveniet dolor ad maxime.', 0, 1, '2022-11-17 00:53:04', '2022-11-17 00:53:04'),
(30, 1, 'Ratione autem officiis sed.', 'ratione-autem-officiis-sed', 'Iusto voluptatem dicta sit est ut ut culpa. Voluptas quas ipsum porro nihil minima. Non rerum qui quod fugit vel aspernatur enim. Quos eos suscipit delectus quasi ex.', 0, 1, '2022-11-17 00:53:05', '2022-11-17 00:53:05'),
(31, 6, 'Ut quo vitae eum qui perspiciatis.', 'ut-quo-vitae-eum-qui-perspiciatis', 'Et commodi mollitia iusto quia. Ex velit qui et harum deleniti. Alias rerum eaque exercitationem cum. Soluta magnam voluptates voluptatem rerum in sed veniam.', 0, 1, '2022-11-17 00:53:05', '2022-11-17 00:53:05'),
(32, 6, 'Earum molestiae eveniet consequatur.', 'earum-molestiae-eveniet-consequatur', 'Et consequatur tempora voluptatem. Qui laudantium voluptatem quidem asperiores ea cupiditate ex dolor. Aliquam itaque voluptatem hic iusto. Laboriosam porro dolor a dignissimos.', 0, 1, '2022-11-17 00:53:05', '2022-11-17 00:53:05'),
(33, 1, 'Quo voluptate consequatur omnis.', 'quo-voluptate-consequatur-omnis', 'Fuga dolor ut et. Reprehenderit architecto et qui hic. Necessitatibus iure inventore reprehenderit in necessitatibus numquam ipsam. Enim qui incidunt quidem aut.', 0, 1, '2022-11-17 00:53:05', '2022-11-17 00:53:05'),
(34, 4, 'Provident aut eum illo assumenda.', 'provident-aut-eum-illo-assumenda', 'Deserunt numquam eveniet qui voluptatem ea. Itaque ea qui quia. Officiis eos et voluptatem ipsam cumque.', 0, 1, '2022-11-17 00:53:05', '2022-11-17 00:53:05'),
(35, 5, 'Quis sed nihil vero odit impedit.', 'quis-sed-nihil-vero-odit-impedit', 'Voluptatem veniam sequi qui vel. Voluptatem mollitia repudiandae qui. Et cum animi delectus eaque praesentium voluptatem provident. Molestias nihil omnis voluptatem dolore quis iste.', 0, 1, '2022-11-17 00:53:05', '2022-11-17 00:53:05'),
(36, 2, 'Ut dolorem vel.', 'ut-dolorem-vel', 'Eum sit quas sunt veniam. Sed omnis libero ex explicabo nam ad minima. Ad ipsa eveniet odio eveniet. Ducimus officia sit temporibus suscipit.', 0, 1, '2022-11-17 00:53:06', '2022-11-17 00:53:06'),
(37, 1, 'Velit dolorem voluptas voluptas similique.', 'velit-dolorem-voluptas-voluptas-similique', 'Vero aliquam aut iste esse esse sequi assumenda. Numquam modi atque molestiae voluptates sapiente ab odit. Dolor doloremque suscipit eos harum.', 0, 1, '2022-11-17 00:53:06', '2022-11-17 00:53:06'),
(38, 1, 'Expedita dolore pariatur laudantium consequatur.', 'expedita-dolore-pariatur-laudantium-consequatur', 'Ex quaerat saepe et. Est non sed assumenda et sit. Perspiciatis est deleniti exercitationem labore sint.', 0, 1, '2022-11-17 00:53:06', '2022-11-17 00:53:06'),
(39, 5, 'Magni totam sint voluptas.', 'magni-totam-sint-voluptas', 'Dicta debitis enim ea est dolores. Atque magnam et et vitae aut aut fuga eligendi. Nulla odit facere nihil voluptatem. Non quia sequi ad reiciendis. Quia sunt dolor repellat accusantium et.', 0, 1, '2022-11-17 00:53:07', '2022-11-17 00:53:07'),
(40, 2, 'Labore tempora amet aut.', 'labore-tempora-amet-aut', 'Vel officia incidunt deleniti non. Rerum quo inventore harum dolore blanditiis corrupti architecto et. Ducimus minus vel aut magnam illum fuga consectetur quaerat.', 0, 1, '2022-11-17 00:53:07', '2022-11-17 00:53:07'),
(41, 6, 'Ex et rerum error suscipit voluptatibus.', 'ex-et-rerum-error-suscipit-voluptatibus', 'Quia dolore cum qui est harum. Culpa molestias necessitatibus qui dolorem a. Nobis blanditiis magnam voluptatem voluptatem id ut et.', 0, 1, '2022-11-17 00:53:07', '2022-11-17 00:53:07'),
(42, 6, 'Tempora explicabo et consequatur.', 'tempora-explicabo-et-consequatur', 'Dicta aliquam vitae soluta aut et laborum. Ducimus culpa quos reiciendis sint laboriosam ipsa. Sint unde necessitatibus vitae perspiciatis amet quo. Similique rerum quia assumenda vero vel.', 0, 1, '2022-11-17 00:53:07', '2022-11-17 00:53:07'),
(43, 2, 'Sunt non et aliquam similique laborum.', 'sunt-non-et-aliquam-similique-laborum', 'Sint ullam sit placeat quasi exercitationem voluptatem. Placeat distinctio repellat sequi iusto. Dignissimos dolorem et rerum consequatur alias ut.', 0, 1, '2022-11-17 00:53:07', '2022-11-17 00:53:07'),
(44, 1, 'Consectetur maiores consequuntur expedita.', 'consectetur-maiores-consequuntur-expedita', 'Modi eum quos perspiciatis officia in fuga veritatis. Tempore voluptatem aspernatur vel excepturi provident sit veritatis. Sapiente dolore iste sit voluptas commodi quos incidunt.', 0, 1, '2022-11-17 00:53:07', '2022-11-17 00:53:07'),
(45, 4, 'Quia velit veniam enim.', 'quia-velit-veniam-enim', 'Ut distinctio minus delectus officiis suscipit et iste. Officiis sed placeat repellendus et. Commodi reprehenderit vel perspiciatis minus nihil expedita veritatis molestiae.', 0, 1, '2022-11-17 00:53:08', '2022-11-17 00:53:08'),
(46, 4, 'Odit dolorem autem.', 'odit-dolorem-autem', 'Nam aut consectetur recusandae saepe est numquam. Sint illo amet in. Nostrum dolor molestias modi id unde inventore.', 0, 1, '2022-11-17 00:53:08', '2022-11-17 00:53:08'),
(47, 4, 'Nisi quo qui eum quasi eius.', 'nisi-quo-qui-eum-quasi-eius', 'Rerum sunt et nesciunt error corporis. Quisquam inventore quaerat asperiores.', 0, 1, '2022-11-17 00:53:08', '2022-11-17 00:53:08'),
(48, 6, 'Maiores nobis suscipit repudiandae.', 'maiores-nobis-suscipit-repudiandae', 'Doloremque officiis error voluptatibus est cupiditate voluptate velit ut. Repellat repudiandae illum ut. Modi rerum voluptatem et qui est impedit. Et adipisci eum fugiat dolor soluta modi.', 0, 1, '2022-11-17 00:53:08', '2022-11-17 00:53:08'),
(49, 4, 'Ipsam qui qui voluptate.', 'ipsam-qui-qui-voluptate', 'Reprehenderit omnis sed non. Magnam ex necessitatibus minus quasi voluptas quaerat. Sint id tempora placeat est. Culpa voluptas itaque explicabo sed maxime fugiat nesciunt.', 0, 1, '2022-11-17 00:53:08', '2022-11-17 00:53:08'),
(50, 5, 'Explicabo eos voluptatibus enim est.', 'explicabo-eos-voluptatibus-enim-est', 'Sequi iste dolor saepe. Inventore optio nulla atque qui animi. Modi sed pariatur quis est. Suscipit perspiciatis nesciunt expedita laudantium hic. Sint quod nostrum voluptas.', 0, 1, '2022-11-17 00:53:08', '2022-11-17 00:53:08'),
(51, 1, 'Doloribus dolores neque similique sit illum.', 'doloribus-dolores-neque-similique-sit-illum', 'Numquam quas accusantium et expedita. Tempore temporibus ducimus consequatur iure aut. Inventore et itaque et rem nesciunt cupiditate. Voluptates nemo nobis accusantium est.', 0, 1, '2022-11-17 00:53:09', '2022-11-17 00:53:09'),
(52, 4, 'Sequi ut eos id necessitatibus.', 'sequi-ut-eos-id-necessitatibus', 'Nesciunt totam reprehenderit quia sed et ullam ipsa. Consequatur cum ea aut aliquid itaque et. Qui non recusandae officia sint ab in culpa voluptatibus. Molestias dolor dolor voluptatem.', 0, 1, '2022-11-17 00:53:09', '2022-11-17 00:53:09'),
(53, 2, 'Aut quis labore.', 'aut-quis-labore', 'Animi sit qui dolorem qui. Ut corporis quae numquam velit et eos voluptatem. Velit magnam consequatur cumque blanditiis et perspiciatis atque quisquam.', 0, 1, '2022-11-17 00:53:09', '2022-11-17 00:53:09'),
(54, 1, 'Sed expedita voluptatum ex.', 'sed-expedita-voluptatum-ex', 'Fuga eum est non hic fuga qui dolorem. Quis dolorem magnam incidunt. Non illo doloribus sunt aut provident placeat sed. Eius eos repellendus earum vero rerum.', 0, 1, '2022-11-17 00:53:09', '2022-11-17 00:53:09'),
(55, 1, 'Earum eius debitis sed non non.', 'earum-eius-debitis-sed-non-non', 'Eos excepturi voluptatem rerum ut tempora autem repellendus. Porro eaque quod vel vero. Neque voluptatem vel facere.', 0, 1, '2022-11-17 00:53:09', '2022-11-17 00:53:09'),
(56, 6, 'Eum perferendis sequi.', 'eum-perferendis-sequi', 'Nemo tempora corporis ducimus. Sint voluptatem illo neque expedita qui maxime. Voluptas accusantium sapiente laudantium cumque omnis tempore.', 0, 1, '2022-11-17 00:53:10', '2022-11-17 00:53:10'),
(57, 1, 'Et labore et deserunt harum.', 'et-labore-et-deserunt-harum', 'Pariatur sequi architecto id illo nihil. Expedita neque et a aut ut exercitationem. Magni beatae nihil eveniet natus nostrum. In iusto ex dolor non qui sint.', 0, 1, '2022-11-17 00:53:10', '2022-11-17 00:53:10'),
(58, 6, 'Omnis quas repudiandae voluptas quibusdam.', 'omnis-quas-repudiandae-voluptas-quibusdam', 'Velit ex repudiandae ab aut corrupti. Nemo dignissimos aliquid doloribus ut. Nihil amet est aspernatur deserunt sed officia commodi. Voluptatem in eos repellendus perspiciatis culpa quia.', 0, 1, '2022-11-17 00:53:11', '2022-11-17 00:53:11'),
(59, 2, 'Dignissimos reprehenderit tempora.', 'dignissimos-reprehenderit-tempora', 'Aspernatur ratione quis hic voluptatem veritatis. Enim consequatur nam eligendi. Sit tempora consequatur impedit fugiat nobis nesciunt et fuga. Qui consequatur sed natus.', 0, 1, '2022-11-17 00:53:11', '2022-11-17 00:53:11'),
(60, 1, 'Ad eveniet odio quaerat.', 'ad-eveniet-odio-quaerat', 'Tenetur laborum animi doloremque praesentium et sit. Eius recusandae atque officia. Error in maxime nulla dignissimos voluptatem. Nihil ipsam consequatur ut in voluptatem.', 0, 1, '2022-11-17 00:53:11', '2022-11-17 00:53:11'),
(61, 4, 'Sed consequatur vitae et non ab.', 'sed-consequatur-vitae-et-non-ab', 'Amet facilis recusandae omnis et. Provident est reprehenderit quis. Sunt natus totam sed ipsum quis. Velit perferendis beatae excepturi sapiente sint ut.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(62, 3, 'Adipisci qui dolorum nulla eveniet est.', 'adipisci-qui-dolorum-nulla-eveniet-est', 'Ab dolor vel animi vero dignissimos tempore aut. Iste quisquam et labore adipisci molestias hic. Inventore illo facilis dolorum temporibus commodi aperiam cum.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(63, 2, 'Sed dolores rerum minima.', 'sed-dolores-rerum-minima', 'Autem perspiciatis nihil vero molestiae. Sit excepturi ut neque blanditiis et. Quos possimus quo velit aut in iste debitis.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(64, 2, 'Perferendis asperiores et id molestiae.', 'perferendis-asperiores-et-id-molestiae', 'Cumque quas quia tempore doloribus velit. Vel eum voluptatem magni consequuntur occaecati iste minus. Illum ab optio est voluptatem. Ipsam quos voluptates quibusdam aut recusandae ut modi.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(65, 2, 'Commodi error non.', 'commodi-error-non', 'Exercitationem illo totam dolores laborum aut in. Vero quis cumque sit quas nulla aut. Eum quo quia non itaque nulla.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(66, 4, 'Quas rem maxime vitae ipsum.', 'quas-rem-maxime-vitae-ipsum', 'Dicta pariatur sint itaque et debitis doloribus enim. Corporis ut voluptatibus labore et. Perferendis aliquam ducimus sapiente omnis. Et cumque non aliquam qui.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(67, 5, 'Nihil enim vitae molestias eos.', 'nihil-enim-vitae-molestias-eos', 'Explicabo nesciunt et ea vel omnis voluptas est. Quasi quam itaque laudantium ab vel. Eius esse voluptas molestiae necessitatibus et. Debitis minus reprehenderit qui officia laudantium excepturi.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(68, 5, 'Aut fuga qui qui.', 'aut-fuga-qui-qui', 'Autem sint deleniti ut. Occaecati repudiandae aut aut accusantium tempora cum. Ipsum aut excepturi et aut at.', 0, 1, '2022-11-17 00:53:12', '2022-11-17 00:53:12'),
(69, 5, 'Optio est ipsam molestiae voluptate.', 'optio-est-ipsam-molestiae-voluptate', 'Consequatur temporibus ut est qui voluptas et odio. Modi doloribus fugit autem. Repellat voluptas natus quo at.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(70, 3, 'Ut ipsa dolores voluptas officia quia.', 'ut-ipsa-dolores-voluptas-officia-quia', 'Voluptatem id temporibus voluptas ut at quis. Voluptatem quia consequatur at optio vero reprehenderit. Et dolorem sunt sunt dolorem maiores. Corporis consectetur voluptatem odit cum.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(71, 6, 'Reiciendis enim hic mollitia soluta consectetur.', 'reiciendis-enim-hic-mollitia-soluta-consectetur', 'In unde deleniti cum fuga quasi. Nulla nisi et blanditiis ipsam dolor impedit distinctio. Ad mollitia deleniti ratione delectus alias. Possimus saepe sint est nobis nemo consequatur porro omnis.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(72, 4, 'Quam dolore necessitatibus blanditiis ut sapiente.', 'quam-dolore-necessitatibus-blanditiis-ut-sapiente', 'Quas consectetur ut enim sed facilis ipsa. Voluptatibus consequuntur iste et fuga. Autem fugiat qui et culpa. Libero itaque omnis atque est ratione.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(73, 1, 'Deleniti recusandae est asperiores nemo.', 'deleniti-recusandae-est-asperiores-nemo', 'Mollitia quia ut sed et ut id beatae. In ea et et ut necessitatibus. Qui iure autem et beatae. Sapiente dicta voluptatum ducimus quo deleniti iste tenetur.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(74, 4, 'Vitae enim ut nulla.', 'vitae-enim-ut-nulla', 'Amet soluta tempore sit ut. Vel commodi et id quam soluta quasi. Ullam quidem ut minima.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(75, 5, 'Voluptas facilis et.', 'voluptas-facilis-et', 'Vel est velit cumque ullam quos accusantium. Nam molestiae a omnis vel. Quo sequi aperiam minima explicabo aut nihil.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(76, 1, 'Eveniet rerum consectetur.', 'eveniet-rerum-consectetur', 'Delectus tempora et est cupiditate qui. Voluptatum accusamus aut minus possimus. Consequatur sit molestiae quisquam vel aliquid iste.', 0, 1, '2022-11-17 00:53:13', '2022-11-17 00:53:13'),
(77, 4, 'Ut esse inventore vero placeat voluptatem.', 'ut-esse-inventore-vero-placeat-voluptatem', 'Eligendi in quae eum commodi fuga est. Placeat ea qui a blanditiis vitae. Libero non est corrupti quo suscipit. Sunt voluptatum suscipit et corrupti eaque excepturi blanditiis.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(78, 1, 'Aperiam distinctio hic harum laudantium nemo.', 'aperiam-distinctio-hic-harum-laudantium-nemo', 'Inventore quae accusantium et officiis aut est adipisci. Ratione nobis voluptatem sit fugit ut rerum quam. Enim ipsum in odio est reprehenderit ducimus quis.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(79, 6, 'Veniam incidunt distinctio voluptas possimus voluptatibus.', 'veniam-incidunt-distinctio-voluptas-possimus-voluptatibus', 'Non ut possimus non aut ipsum. Reprehenderit temporibus quibusdam impedit animi voluptatem. Quidem sint ea voluptatem consectetur temporibus.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(80, 3, 'Consequatur omnis rem enim inventore.', 'consequatur-omnis-rem-enim-inventore', 'Ea qui et qui porro. Aut magni cumque dolorem ducimus sed. Molestiae culpa voluptatem ipsam quam. Ut nihil illum deserunt cupiditate.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(81, 1, 'Rem deserunt nesciunt corporis eos illo.', 'rem-deserunt-nesciunt-corporis-eos-illo', 'Reiciendis ut consequuntur sed quaerat velit rerum. Aut nobis sit laborum sint rem earum alias et. Qui et quasi consectetur labore consectetur repellat pariatur.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(82, 3, 'Debitis est at est odit nobis.', 'debitis-est-at-est-odit-nobis', 'Id minus animi sed qui qui. Qui quasi non consequatur porro. Voluptatum mollitia ut dolores assumenda reprehenderit praesentium a. Est reprehenderit qui deserunt nobis magni placeat illo at.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(83, 1, 'Voluptatum optio cum.', 'voluptatum-optio-cum', 'Ex mollitia in quas tenetur voluptatibus et. Quia nesciunt cupiditate autem maxime eos animi culpa.', 0, 1, '2022-11-17 00:53:14', '2022-11-17 00:53:14'),
(84, 3, 'Voluptate reprehenderit ex qui tempora.', 'voluptate-reprehenderit-ex-qui-tempora', 'Sit a adipisci modi dolorum quisquam. Illo ipsam autem voluptatem voluptates sint qui aut maxime. Esse enim aut saepe commodi. Est suscipit veniam eius.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(85, 4, 'Voluptatem numquam modi aspernatur vero voluptatem.', 'voluptatem-numquam-modi-aspernatur-vero-voluptatem', 'Distinctio qui ut quaerat eius assumenda ut. Et architecto veniam qui dolor illo porro omnis. Ipsam id in nostrum velit. Iste qui placeat deleniti in qui delectus.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(86, 5, 'Ut deleniti hic voluptatibus ullam.', 'ut-deleniti-hic-voluptatibus-ullam', 'Totam rem doloremque occaecati pariatur. Voluptas eum et quaerat eos omnis. In dolorem culpa maxime eveniet reiciendis deserunt nihil quisquam. Quam ex reprehenderit doloremque officiis.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(87, 4, 'Ratione quod modi sequi incidunt.', 'ratione-quod-modi-sequi-incidunt', 'Neque placeat ipsa quae assumenda corporis id. Nihil ad dolores quo possimus nesciunt eum rerum. Eos aut vero voluptatem quis minima voluptatem.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(88, 3, 'Eius dolorem non quia suscipit praesentium.', 'eius-dolorem-non-quia-suscipit-praesentium', 'Consequuntur consectetur deserunt quo. Voluptatum amet commodi et ullam.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(89, 4, 'Illum inventore libero et eum.', 'illum-inventore-libero-et-eum', 'Cum consequatur nulla reprehenderit. Impedit esse corrupti voluptatibus aut qui et. Cupiditate et sapiente molestiae blanditiis. Voluptatem eum architecto architecto inventore ab eveniet nihil.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(90, 4, 'Consectetur maiores est.', 'consectetur-maiores-est', 'Natus id voluptatem consectetur voluptatem consequuntur quidem. Repellat qui distinctio voluptatem est consequuntur optio. Vel commodi similique maxime non numquam dolor quam.', 0, 1, '2022-11-17 00:53:15', '2022-11-17 00:53:15'),
(91, 5, 'Et iure sit illo.', 'et-iure-sit-illo', 'Expedita in cumque iste voluptatem delectus. Et quo magnam velit dolor perspiciatis est. Similique repellat optio similique natus excepturi.', 0, 1, '2022-11-17 00:53:16', '2022-11-17 00:53:16'),
(92, 1, 'Magni necessitatibus voluptate provident dolorum.', 'magni-necessitatibus-voluptate-provident-dolorum', 'Sapiente laborum pariatur in rerum. Non nihil odio quis sit. Amet sapiente possimus est dolorem beatae praesentium odit. Rem maiores in dolores deserunt.', 0, 1, '2022-11-17 00:53:16', '2022-11-17 00:53:16'),
(93, 5, 'Aut qui laborum nisi et fuga.', 'aut-qui-laborum-nisi-et-fuga', 'Deleniti aut voluptate exercitationem quibusdam. Minus veniam aut repellendus autem qui quo.', 0, 1, '2022-11-17 00:53:16', '2022-11-17 00:53:16'),
(94, 5, 'Recusandae unde corrupti et maiores ea.', 'recusandae-unde-corrupti-et-maiores-ea', 'Culpa ullam et vitae quidem perspiciatis et. Omnis ratione dicta quo laboriosam dolor. Amet provident ut facere soluta tenetur. Odit magnam optio molestiae neque quia consequatur.', 0, 1, '2022-11-17 00:53:16', '2022-11-17 00:53:16'),
(95, 1, 'Possimus quo voluptas.', 'possimus-quo-voluptas', 'Cumque assumenda dolores dolor aut ex. Et molestiae maiores non laborum non neque modi. Perspiciatis sapiente rerum natus quia enim voluptas et.', 0, 1, '2022-11-17 00:53:16', '2022-11-17 00:53:16'),
(96, 6, 'Repellat ut est aperiam.', 'repellat-ut-est-aperiam', 'Amet delectus quia earum qui qui aliquam. Optio possimus cupiditate natus nesciunt maxime dolore rerum. Est voluptatum sunt qui deleniti. Quos commodi non voluptatem saepe temporibus.', 0, 1, '2022-11-17 00:53:16', '2022-11-17 00:53:16'),
(97, 3, 'Dicta deleniti sit esse.', 'dicta-deleniti-sit-esse', 'Iste quaerat nam consequatur id impedit. Dolor eligendi atque aut dolorem. Fugiat molestiae corporis quibusdam minus et et fugit. Dolore ipsum et quas.', 0, 1, '2022-11-17 00:53:17', '2022-11-17 00:53:17'),
(98, 1, 'Non ducimus nesciunt iusto dolores sit.', 'non-ducimus-nesciunt-iusto-dolores-sit', 'Consectetur fugit perferendis accusamus molestias eveniet dolorem. Vero velit aut ipsam quas omnis cum ducimus labore. Cum est vero nemo reprehenderit non.', 0, 1, '2022-11-17 00:53:17', '2022-11-17 00:53:17'),
(99, 4, 'Quod laborum vel.', 'quod-laborum-vel', 'Dolores quisquam cum magni dolor. Voluptatum dolorem autem eum. Modi tempore quidem ut at veritatis nam sed. Eos consequatur est repudiandae qui.', 0, 1, '2022-11-17 00:53:17', '2022-11-17 00:53:17'),
(100, 2, 'Voluptate rerum cumque et itaque.', 'voluptate-rerum-cumque-et-itaque', 'Recusandae ut enim aliquam rerum ab in quod est. Repellendus pariatur est ullam nulla odio. Delectus laborum consequuntur voluptatem unde ipsa. Vitae dicta quaerat at pariatur placeat beatae et et.', 0, 1, '2022-11-17 00:53:18', '2022-11-17 00:53:18');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'other', 'other', 1, '2022-11-17 00:52:55', '2022-11-17 00:52:55'),
(2, 'php', 'php', 1, '2022-11-17 00:52:55', '2022-11-17 00:52:55'),
(3, 'javascript', 'javascript', 1, '2022-11-17 00:52:55', '2022-11-17 00:52:55'),
(4, 'python', 'python', 1, '2022-11-17 00:52:55', '2022-11-17 00:52:55'),
(5, 'java', 'java', 1, '2022-11-17 00:52:56', '2022-11-17 00:52:56'),
(6, 'swift', 'swift', 1, '2022-11-17 00:52:56', '2022-11-17 00:52:56');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_11_13_132134_category', 1),
(2, '2022_11_13_150506_blog', 1),
(3, '2022_11_13_195418_page', 1),
(4, '2022_11_14_013426_contact', 1),
(5, '2022_11_14_144044_user', 1),
(6, '2022_11_16_010251_setting', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `title`, `slug`, `content`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'about', 'about', 'Numquam suscipit ut cupiditate et est esse. Non velit et amet architecto quia et repudiandae. Nisi et eos natus quo. Magni dolor et eaque quia placeat.', 1, 0, '2022-11-17 00:52:54', '2022-11-17 00:52:54');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `description`, `key`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'title', 'title', 'Clean Blog', 'text', NULL, NULL),
(2, 'description', 'description', 'blog description', 'text', NULL, NULL),
(3, 'copyright', 'copyright', 'copyright &copy; Your Website', 'text', NULL, NULL),
(4, 'author', 'author', '190101101', 'text', NULL, NULL),
(5, 'keyword', 'keyword', 'blog', 'text', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'apsi', '$2y$10$pvBoC3D7sYKsOOE827ESv.MIE9w33l4Y8p79d2jxTRTOiJF.fHMcC', 'admin', 'yj0mmT6x6pgGjVFyMA5R6ExoqRZcGp9SlWQ7JR8DMujR98cYZbAsdLQVBPiX', '2022-11-17 00:52:54', '2022-11-17 00:52:54');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
