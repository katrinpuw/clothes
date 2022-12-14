-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 14 2022 г., 18:11
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clothes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Zara', '2022-12-13 23:16:18', '2022-12-13 23:16:18'),
(2, 'ZNY', '2022-12-13 23:16:35', '2022-12-13 23:16:35'),
(3, 'H&M', '2022-12-13 23:16:47', '2022-12-13 23:16:47');

-- --------------------------------------------------------

--
-- Структура таблицы `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `clothes`
--

INSERT INTO `clothes` (`id`, `name`, `price`, `img`, `createdAt`, `updatedAt`, `typeId`, `brandId`) VALUES
(1, 'Dress_example_1', '70', 'b8c08448-a6a0-4a0d-a080-c0cfced62585.jpg', '2022-12-13 20:08:11', '2022-12-13 20:08:11', 1, 1),
(2, 'Dress_example_2', '120', '9de91386-bf5f-4cc5-acf8-90ea66a964d2.jpg', '2022-12-13 20:13:05', '2022-12-13 20:13:05', 1, 1),
(3, 'Blazer_example_1', '140', 'a206620c-5575-4ad8-a124-79016730babc.jpg', '2022-12-13 20:14:57', '2022-12-13 20:14:57', 6, 1),
(4, 'Blazer_example_2', '160', 'e464d573-45f7-4e06-9652-e6a98fd310d9.jpg', '2022-12-13 20:15:22', '2022-12-13 20:15:22', 6, 1),
(5, 'Hoody_example_1', '90', '790a5f47-a283-4ed0-8a47-e094e073529e.jpg', '2022-12-13 20:17:03', '2022-12-13 20:17:03', 5, 2),
(6, 'Hoody_example_2', '90', 'a6ddd22e-a858-486d-89e6-d61ef322b39e.jpg', '2022-12-13 20:17:13', '2022-12-13 20:17:13', 5, 2),
(7, 'Down-Jacket_example', '190', '882d51ad-6b82-42a6-a16a-9c448579bcc8.jpg', '2022-12-13 20:17:50', '2022-12-13 20:17:50', 4, 2),
(8, 'T-Shirt_example', '45', '47bb17fe-51e7-4f04-85d6-2d996a8c82c3.jpg', '2022-12-13 20:18:40', '2022-12-13 20:18:40', 3, 2),
(9, 'Biker-Jacket_example', '190', 'f0514c18-d048-4cba-a669-b4dbef181ac4.jpg', '2022-12-13 20:19:59', '2022-12-13 20:19:59', 2, 3),
(10, 'Pants_example_1', '40', '84cfc81a-0f07-4643-b5f6-a4c6681a6b44.jpg', '2022-12-13 20:20:53', '2022-12-13 20:20:53', 7, 3),
(11, 'Biker-Jacket description check', '1230', 'df24a930-cb8c-44c4-b43e-519738a96847.jpg', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `clothes_infos`
--

CREATE TABLE `clothes_infos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `clotheId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `clothes_infos`
--

INSERT INTO `clothes_infos` (`id`, `title`, `description`, `createdAt`, `updatedAt`, `clotheId`) VALUES
(1, 'color', 'Black', '2022-12-13 20:08:11', '2022-12-13 20:08:11', 1),
(2, 'length', 'long', '2022-12-13 20:08:11', '2022-12-13 20:08:11', 1),
(3, 'color', 'color', '2022-12-13 20:13:05', '2022-12-13 20:13:05', 2),
(4, 'length', 'short', '2022-12-13 20:13:05', '2022-12-13 20:13:05', 2),
(5, 'color', 'color', '2022-12-13 20:14:57', '2022-12-13 20:14:57', 3),
(6, 'length', 'short', '2022-12-13 20:14:57', '2022-12-13 20:14:57', 3),
(7, 'color', 'color', '2022-12-13 20:15:22', '2022-12-13 20:15:22', 4),
(8, 'length', 'short', '2022-12-13 20:15:22', '2022-12-13 20:15:22', 4),
(9, 'color', 'color', '2022-12-13 20:17:03', '2022-12-13 20:17:03', 5),
(10, 'length', 'short', '2022-12-13 20:17:03', '2022-12-13 20:17:03', 5),
(11, 'color', 'color', '2022-12-13 20:17:13', '2022-12-13 20:17:13', 6),
(12, 'length', 'short', '2022-12-13 20:17:13', '2022-12-13 20:17:13', 6),
(13, 'color', 'color', '2022-12-13 20:17:50', '2022-12-13 20:17:50', 7),
(14, 'length', 'short', '2022-12-13 20:17:50', '2022-12-13 20:17:50', 7),
(15, 'color', 'color', '2022-12-13 20:18:40', '2022-12-13 20:18:40', 8),
(16, 'length', 'short', '2022-12-13 20:18:40', '2022-12-13 20:18:40', 8),
(17, 'color', 'color', '2022-12-13 20:19:59', '2022-12-13 20:19:59', 9),
(18, 'length', 'short', '2022-12-13 20:19:59', '2022-12-13 20:19:59', 9),
(19, 'length', 'long', '2022-12-13 20:20:53', '2022-12-13 20:20:53', 10),
(20, 'color', 'dark', '2022-12-13 20:20:53', '2022-12-13 20:20:53', 10),
(21, 'test', 'test', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 11),
(22, 'test', 'test', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 11),
(23, 'test', 'test', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 11),
(24, 'test', 'test', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 11),
(25, 'test', 'test', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 11),
(26, 'test', 'test', '2022-12-13 22:21:51', '2022-12-13 22:21:51', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Dress', '2022-12-13 19:53:46', '2022-12-13 19:53:46'),
(2, 'biker jacket', '2022-12-13 20:08:48', '2022-12-13 20:08:48'),
(3, 'T-Shirt', '2022-12-13 20:09:19', '2022-12-13 20:09:19'),
(4, 'Down-Jacket', '2022-12-13 20:09:31', '2022-12-13 20:09:31'),
(5, 'Hoody', '2022-12-13 20:09:39', '2022-12-13 20:09:39'),
(6, 'blazer', '2022-12-13 20:14:14', '2022-12-13 20:14:14'),
(7, 'Pants', '2022-12-13 20:20:14', '2022-12-13 20:20:14');

-- --------------------------------------------------------

--
-- Структура таблицы `type_brands`
--

CREATE TABLE `type_brands` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'USER',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'rs', '$2b$05$iTBGzfyW3O67DOQ0sEdUNOZ4FdChXmEovPyFibBU.jSjgrc4fHmkC', 'ADMIN', '2022-12-13 22:10:59', '2022-12-13 22:10:59'),
(2, 're', '$2b$05$6ViKhF1VC6kgJ9EHvj1RfevUVH8b3O9sZxxIyZleGqPh56eOe1O9K', 'ADMIN', '2022-12-13 22:12:52', '2022-12-13 22:12:52');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `typeId` (`typeId`),
  ADD KEY `brandId` (`brandId`);

--
-- Индексы таблицы `clothes_infos`
--
ALTER TABLE `clothes_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clotheId` (`clotheId`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `type_brands`
--
ALTER TABLE `type_brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_brands_brandId_typeId_unique` (`typeId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `clothes_infos`
--
ALTER TABLE `clothes_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `type_brands`
--
ALTER TABLE `type_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `clothes_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `clothes_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `clothes_infos`
--
ALTER TABLE `clothes_infos`
  ADD CONSTRAINT `clothes_infos_ibfk_1` FOREIGN KEY (`clotheId`) REFERENCES `clothes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `type_brands`
--
ALTER TABLE `type_brands`
  ADD CONSTRAINT `type_brands_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_brands_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
