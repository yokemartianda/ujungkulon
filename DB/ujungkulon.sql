-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2022 pada 07.28
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujungkulon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `access` int(4) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `in_menu` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `body`, `access`, `is_published`, `in_menu`, `position`, `created`) VALUES
(5, 5, 5, 'Judul Article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit odio ac mauris condimentum, tincidunt scelerisque arcu accumsan. Integer ac nibh nisl. Donec tortor velit, semper id egestas et, laoreet et urna. Sed scelerisque elementum urna, sit amet ornare odio viverra sed. Mauris congue purus turpis, eu volutpat sapien mattis in. Phasellus at tortor ante. Nulla tristique id ante a pretium. Integer a purus turpis. Mauris nec sagittis diam. Proin egestas leo eu arcu iaculis, sit amet mattis mauris vehicula. Ut eget metus sapien.\r\n\r\nNunc elit nulla, vulputate nec tortor at, porttitor ornare tortor. Aliquam mi dolor, congue eget erat finibus, condimentum fermentum mi. Phasellus aliquam tincidunt augue, at pretium tellus. Mauris vitae massa vitae augue rutrum convallis sit amet sed nulla. Duis gravida ipsum quis risus auctor egestas. Donec vehicula ultricies lacinia. Aliquam pretium faucibus ante quis tempus. Ut turpis tellus, efficitur vel mauris eu, bibendum euismod magna. Nunc sodales dolor sed nisi euismod, et ultricies orci rutrum. Proin scelerisque et lectus in vulputate. Phasellus mattis rutrum fermentum. Nulla malesuada odio est, at vehicula libero rhoncus nec. Vivamus faucibus pellentesque tortor id vestibulum. Curabitur consectetur aliquam nisi, in egestas ipsum posuere vel. Nulla sodales dui id quam cursus maximus.', 0, 1, 0, 1, '2022-07-12 05:20:09'),
(6, 5, 5, 'Article Kedua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis odio sit amet dui congue facilisis. Vestibulum non est in massa fermentum posuere nec quis quam. Morbi commodo velit neque, at varius nulla tristique eget. Donec sem arcu, tincidunt non metus consequat, fringilla commodo urna. Fusce lobortis justo eget ornare tincidunt. Sed eros massa, ornare et nisi non, vestibulum ultrices eros. Suspendisse condimentum nisi in faucibus fringilla. Donec in diam placerat, fermentum justo at, venenatis turpis.\r\n\r\nCurabitur eget egestas ex. Cras posuere venenatis odio non porttitor. In mollis, quam a sollicitudin vehicula, libero neque posuere lorem, ac pulvinar tortor justo et urna. Donec tempor, urna rutrum aliquam rhoncus, sapien quam efficitur justo, eu facilisis arcu tortor nec nunc. Donec suscipit venenatis sapien vel pellentesque. Curabitur ultrices leo ut lectus efficitur commodo. Nulla pretium pretium eros, in semper libero sollicitudin sed. Nulla sit amet lacus a diam maximus mattis. In maximus.', 0, 1, 0, 3, '2022-07-12 05:21:19'),
(7, 5, 5, 'Artikel Ketiga', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus, lacus ut porttitor tristique, nisi est iaculis urna, in facilisis libero dolor porttitor leo. Praesent sed laoreet justo. Mauris feugiat gravida condimentum. Quisque condimentum ultricies est vitae consequat. Nunc vel lacus non erat imperdiet porttitor. Cras convallis luctus dolor, eget convallis felis efficitur at. Mauris non erat ac ex malesuada fringilla. Mauris elit sem, aliquam eget scelerisque vitae, malesuada at risus. Ut finibus bibendum finibus. Proin commodo, ex vel blandit scelerisque, tellus mi ultricies libero, sit amet eleifend felis ex nec est. Pellentesque consequat rhoncus placerat. Fusce accumsan accumsan urna a ornare. Quisque scelerisque dictum erat sed mattis. Mauris sodales.', 0, 1, 0, 2, '2022-07-12 05:22:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`) VALUES
(5, 'Test Category', '2022-07-12 05:18:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(3, 'super admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `thekey` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `group_id`, `created`) VALUES
(5, 'super', 'admin', 'administrator', '', '6c2895c00c47478c03b3ee0af4a277d1', 1, '2022-07-12 05:03:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
