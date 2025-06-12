-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 12.06.2025 klo 09:03
-- Palvelimen versio: 10.6.22-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarria`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `hahmot`
--

CREATE TABLE `hahmot` (
  `Name` varchar(255) DEFAULT NULL,
  `Element` varchar(255) DEFAULT NULL,
  `Weapon` varchar(255) DEFAULT NULL,
  `Rarity` varchar(255) DEFAULT NULL,
  `WeaponImage` varchar(255) NOT NULL,
  `ElementImage` varchar(255) NOT NULL,
  `SmallImage` varchar(255) DEFAULT NULL,
  `BigImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `hahmot`
--

INSERT INTO `hahmot` (`Name`, `Element`, `Weapon`, `Rarity`, `WeaponImage`, `ElementImage`, `SmallImage`, `BigImage`) VALUES
('Brant', 'Fusion', 'Sword', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Fusion.webp', 'https://www.prydwen.gg/static/30c84393d4f1fff8fcdb71ef6be8e090/b26e2/card_brant.webp', 'https://pbs.twimg.com/media/Gg2UBOvaMAIF6Nu.jpg:large'),
('Calcharo', 'Electro', 'Broadblade', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Broadblade_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Electro.webp', 'https://www.prydwen.gg/static/7b01c2f05825303762d3e6b9da538c7d/b26e2/kakarot_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Calcharo.jpg?raw=true'),
('Camellya', 'Havoc', 'Sword', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Havoc.webp', 'https://cdn.wuwatracker.com/static/assets/resonator/role/camellya.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Camellya.jpg?raw=true'),
('Carlotta', 'Glacio', 'Pistol', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Pistols_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Glacio.webp', 'https://www.prydwen.gg/static/72a394e25463af4c5b9c309f516c9d17/b26e2/card_carlotta.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Carlotta.jpg?raw=true'),
('Changli', 'Fusion', 'Sword', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Fusion.webp', 'https://wuthering.wiki/img/rolecard_1205.png', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Changli.png?raw=true'),
('Ciaccona', 'Aero', 'Pistol', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Pistols_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://cdn.wuwatracker.com/static/assets/resonator/role/ciaccona.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Ciaccona.png?raw=true'),
('Encore', 'Fusion', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Fusion.webp', 'https://www.prydwen.gg/static/0acc12c57906dc3c1f47e038832ec1f4/b26e2/encore_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Encore.png?raw=true'),
('Jianxin', 'Aero', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://www.prydwen.gg/static/c215e7a42cbfd78f854553f192dc0e4f/b26e2/jiaxin_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Jianxin.png?raw=true'),
('Jinhsi', 'Spectro', 'Broadblade', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Broadblade_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Spectro.webp', 'https://www.prydwen.gg/static/136095b0f95ac4be3ddc7e2d585855bf/b26e2/jihni_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Jinshi.png?raw=true'),
('Jiyan', 'Aero', 'Broadblade', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Broadblade_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://www.prydwen.gg/static/5020d60083afc09d2fb6bce4a35225bc/b26e2/jiyan_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Jiyan.png?raw=true'),
('Lingyang', 'Glacio', 'Gauntlet', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Gauntlets_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Glacio.webp', 'https://www.prydwen.gg/static/672fdaae2b01f8355d5631a989e5f472/b26e2/ling_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Lingyang.png?raw=true'),
('Phoebe', 'Spectro', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Spectro.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Phoebe.png?raw=true', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Phoebe.jpg?raw=true'),
('Roccia', 'Havoc', 'Gauntlet', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Gauntlets_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Havoc.webp', 'https://www.prydwen.gg/static/3cdda48d32ebb2b5185dfbb1f5fac561/b26e2/card_roccia.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Roccia.png?raw=true'),
('Rover (Female)', 'Spectro, Havoc, Aero', 'Sword', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', '0', 'https://static.dotgg.gg/wuthering-waves/characters/rover-female-image.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/RoverFemale.png?raw=true'),
('Rover (Male)', 'Spectro, Havoc, Aero', 'Sword', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', '0', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/rover-male-image.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/RoverMale.png?raw=true'),
('Shorekeeper', 'Spectro', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Spectro.webp', 'https://wuthering.wiki/img/rolecard_1505.png', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Shorekeeper.png?raw=true'),
('Verina', 'Spectro', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Spectro.webp', 'https://www.prydwen.gg/static/dd5bdface07cef9b868fe8214b0988ed/b26e2/verina_card.webp', 'https://s1.zerochan.net/Verina.600.4166083.jpg'),
('Xiangli Yao', 'Electro', 'Gauntlet', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Gauntlets_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Electro.webp', 'https://static.dotgg.gg/wuthering-waves/characters/xiangli-yao-image.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/XiangliYao.png?raw=true'),
('Yinlin', 'Electro', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Electro.webp', 'https://www.prydwen.gg/static/a2b0c34a81e57a52165da5b356be412c/b26e2/yinglin_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Yinlin.png?raw=true'),
('Zani', 'Spectro', 'Gauntlet', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Gauntlets_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Spectro.webp', 'https://www.prydwen.gg/static/505ab092ab4d706f757a89bac424b378/b26e2/card_zani.webp', 'https://pbs.twimg.com/media/Gnf8sVzb0AAAxEw.jpg:large'),
('Zhezhi', 'Aero', 'Rectifier', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://wuthering.wiki/img/rolecard_1105.png', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Zhezhi.png?raw=true'),
('Aalto', 'Aero', 'Pistol', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Pistols_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://www.prydwen.gg/static/28692b3a188f6b7b14a9d28aa90bf3c8/b26e2/aalto_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Aalto.png?raw=true'),
('Baizhi', 'Glacio', 'Rectifier', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Rectifier_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Glacio.webp', 'https://www.prydwen.gg/static/3752f18605107b5fdb36835e9e7a2b90/b26e2/baizhi_card.webp', 'https://i.pinimg.com/736x/b2/09/f7/b209f768da1d7967a93cb13a4f4e1891.jpg'),
('Chixia', 'Fusion', 'Pistol', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Pistols_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Fusion.webp', 'https://wuthering.wiki/img/rolecard_1202.png', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Chixia.png?raw=true'),
('Danjin', 'Havoc', 'Sword', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Havoc.webp', 'https://www.prydwen.gg/static/431f962f5a8febb92f44ae9138aa5e01/b26e2/danjin_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Danjin.png?raw=true'),
('Lumi', 'Electro', 'Broadblade', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Broadblade_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Electro.webp', 'https://www.prydwen.gg/static/f25eefa86b00502ff430328006610ca2/b26e2/card_lumi.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Lumi.png?raw=true'),
('Mortefi', 'Fusion', 'Pistol', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Pistols_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Fusion.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Mortefi.png?raw=true', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/MortefiCard.png?raw=true'),
('Sanhua', 'Glacio', 'Sword', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Glacio.webp', 'https://www.prydwen.gg/static/f67966dd31af657ac8612d36006d5874/b26e2/senhua_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Sanhua.png?raw=true'),
('Taoqi', 'Havoc', 'Broadblade', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Broadblade_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Havoc.webp', 'https://preview.redd.it/taoqi-better-than-you-think-v0-dmo0y85ls94d1.png?width=675&format=png&auto=webp&s=42fb256015cc2c30f93fe8183515b0a3375a0085', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Taoqi.png?raw=true'),
('Yangyang', 'Aero', 'Sword', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://www.prydwen.gg/static/ad90d3bdfacb57e34e7f90367f3823b0/b26e2/yang_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Yangyang.png?raw=true'),
('Youhu', 'Glacio', 'Gauntlet', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Gauntlets_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Glacio.webp', 'https://wutheringwaves.gg/wp-content/uploads/sites/8/2024/10/Youhu_Full_Sprite-e1730039130831.png', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Youhu.png?raw=true'),
('Yuanwu', 'Electro', 'Gauntlet', '4', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Gauntlets_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Electro.webp', 'https://www.prydwen.gg/static/fb4fc64e05d0d40ef90adc4527dc93ea/b26e2/yuanwu_card.webp', 'https://github.com/RottaRianna/Images/blob/main/WUWAcharacters/Yuanwu.png?raw=true'),
('Cartethyia', 'Aero', 'Sword', '5', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Sword_Icon.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/icons/Aero.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/cartethyia2.webp', 'https://raw.githubusercontent.com/RottaRianna/Images/refs/heads/main/WUWAcharacters/Cartethyia.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hahmot`
--
ALTER TABLE `hahmot`
  ADD UNIQUE KEY `SmallImage` (`SmallImage`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `BigImage` (`BigImage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
