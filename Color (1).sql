-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 24 2024 г., 01:26
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Color`
--

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `color_id` int NOT NULL,
  `colors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`color_id`, `colors`) VALUES
(1, 'Красный'),
(3, 'Зеленый'),
(4, 'Белый'),
(5, 'Желтый');

-- --------------------------------------------------------

--
-- Структура таблицы `tip_colors`
--

CREATE TABLE `tip_colors` (
  `ID_tip_colors` int NOT NULL,
  `tip_colors` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tip_colors`
--

INSERT INTO `tip_colors` (`ID_tip_colors`, `tip_colors`) VALUES
(1, 'полиуретановые'),
(2, 'латексные');

-- --------------------------------------------------------

--
-- Структура таблицы `tovars`
--

CREATE TABLE `tovars` (
  `ID_tovar` int NOT NULL,
  `tovar_img` text NOT NULL,
  `tovar_name` varchar(100) NOT NULL,
  `tovar_art` varchar(50) NOT NULL,
  `tovar_descrip` varchar(500) NOT NULL,
  `tovar_cost` int NOT NULL,
  `tovar_ML` int NOT NULL,
  `color_id` int NOT NULL,
  `ID_tip_colors` int NOT NULL,
  `id_vid_colors` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tovars`
--

INSERT INTO `tovars` (`ID_tovar`, `tovar_img`, `tovar_name`, `tovar_art`, `tovar_descrip`, `tovar_cost`, `tovar_ML`, `color_id`, `ID_tip_colors`, `id_vid_colors`) VALUES
(1, 'IMG/paint.png', 'КРСКА БЕЛАЯ ДЛЯ СТЕН', '112378', 'Белый цвет стен создает ощущение чистоты и свежести в помещении.', 1000, 500, 4, 2, 1),
(2, 'IMG/paint.png', 'КРСКА БЕЛАЯ ДЛЯ СТЕН', '112378', 'Белый цвет стен создает ощущение чистоты и свежести в помещении.', 1000, 500, 4, 2, 1),
(3, 'IMG/paint.png', 'КРСКА БЕЛАЯ ДЛЯ СТЕН', '112378', 'Белый цвет стен создает ощущение чистоты и свежести в помещении.', 1000, 500, 1, 1, 1),
(4, 'IMG/paint.png', 'КРСКА БЕЛАЯ ДЛЯ СТЕН', '112378', 'Белый цвет стен создает ощущение чистоты и свежести в помещении.', 1000, 500, 4, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `ID_User` int NOT NULL,
  `FIO` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`ID_User`, `FIO`, `login`, `password`, `telephone`, `email`) VALUES
(1, 'Панцырева Анастасия Константиновна', '123', '123', '+79852909222', 'nastya.pnt@mail.ru'),
(10, 'Панцырева Анастасия Константиновна', 'Панцырева', '1Hgj5678', '+79168111753', 'nastya.pnt@mail.ru'),
(11, 'Админ', 'ADMIN', 'ADMIN', '+79852909221', 'ADMIN');

-- --------------------------------------------------------

--
-- Структура таблицы `vid_colors`
--

CREATE TABLE `vid_colors` (
  `id_vid_colors` int NOT NULL,
  `vid_colors` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `vid_colors`
--

INSERT INTO `vid_colors` (`id_vid_colors`, `vid_colors`) VALUES
(1, 'матовая'),
(2, 'глянцевая');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`color_id`);

--
-- Индексы таблицы `tip_colors`
--
ALTER TABLE `tip_colors`
  ADD PRIMARY KEY (`ID_tip_colors`);

--
-- Индексы таблицы `tovars`
--
ALTER TABLE `tovars`
  ADD PRIMARY KEY (`ID_tovar`),
  ADD KEY `TovarColor` (`color_id`),
  ADD KEY `TovarTipColor` (`ID_tip_colors`),
  ADD KEY `TovarVid` (`id_vid_colors`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_User`);

--
-- Индексы таблицы `vid_colors`
--
ALTER TABLE `vid_colors`
  ADD PRIMARY KEY (`id_vid_colors`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `color_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tip_colors`
--
ALTER TABLE `tip_colors`
  MODIFY `ID_tip_colors` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tovars`
--
ALTER TABLE `tovars`
  MODIFY `ID_tovar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `ID_User` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `vid_colors`
--
ALTER TABLE `vid_colors`
  MODIFY `id_vid_colors` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tovars`
--
ALTER TABLE `tovars`
  ADD CONSTRAINT `TovarColor` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `TovarTipColor` FOREIGN KEY (`ID_tip_colors`) REFERENCES `tip_colors` (`ID_tip_colors`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `TovarVid` FOREIGN KEY (`id_vid_colors`) REFERENCES `vid_colors` (`id_vid_colors`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
