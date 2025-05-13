SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `Addresses` (
  `Address_ID` int(11) NOT NULL,
  `Line_1` varchar(45) NOT NULL,
  `Line_2` varchar(45) DEFAULT '',
  `Line_3` varchar(45) DEFAULT '',
  `City` varchar(45) NOT NULL,
  `Zip_or_Postcode` int(11) NOT NULL,
  `State_Province_County` varchar(45) NOT NULL,
  `Country_Code` int(11) NOT NULL,
  `Other_Details` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Addresses` VALUES
(1, 'Moi Avenue', 'Opposite Archives', '', 'Nairobi', 00100, 'Nairobi', 254, NULL),
(2, 'Kenyatta Road', 'Near Nyeri High', '', 'Nyeri', 10100, 'Nyeri', 254, NULL),
(3, 'Makutano Junction', '', '', 'Meru', 60200, 'Meru', 254, NULL),
(4, 'Kisumu-Busia Rd', 'Next to Lake Basin Mall', '', 'Kisumu', 40100, 'Kisumu', 254, NULL),
(5, 'Mombasa Road', 'Near Airport', '', 'Mombasa', 80100, 'Mombasa', 254, NULL);

CREATE TABLE `Churches` (
  `Church_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  `Church_Name` varchar(45) DEFAULT NULL,
  `Ministers_Name` varchar(45) DEFAULT NULL,
  `Contact_Details` varchar(45) DEFAULT NULL,
  `Other_Details` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Churches` VALUES
(1, 1, 'CITAM Nairobi', 'Rev. Maina Njoroge', '+254722112233', NULL),
(2, 2, 'PCEA Nyeri Town', 'Rev. Grace Wambui', '+254734556677', NULL),
(3, 3, 'ACK St. Paul\'s Meru', 'Rev. Mutuma Kinoti', '+254710987654', NULL),
(4, 4, 'Deliverance Church Kisumu', 'Pastor Achieng Otieno', '+254701234567', NULL),
(5, 5, 'JCC Mombasa', 'Bishop David Mwakazi', '+254733445566', NULL);

CREATE TABLE `Donations` (
  `Donation_ID` int(11) NOT NULL,
  `Donation_to_Church_ID` int(11) NOT NULL,
  `Donor_ID` int(11) NOT NULL,
  `Payment_Method_Code` int(11) NOT NULL,
  `Date_of_Donation` date NOT NULL,
  `Amount_of_Donation` float NOT NULL,
  `Payment_Method_Details` varchar(45) DEFAULT '',
  `Other_Details` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Donations` VALUES
(1, 1, 1, 1, '2023-02-12', 1500.00, 'M-Pesa', NULL),
(2, 2, 2, 2, '2023-03-10', 3000.00, 'Bank Transfer', NULL),
(3, 3, 3, 3, '2023-04-15', 800.00, 'Cash', NULL),
(4, 4, 4, 4, '2023-05-20', 2200.00, 'Cheque', NULL),
(5, 5, 5, 5, '2023-06-30', 500.00, 'Airtel Money', NULL);

CREATE TABLE `Donors` (
  `Donor_ID` int(11) NOT NULL,
  `Donor_Details` varchar(45) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Donors` VALUES
(1, 'Mwangi Kamau'),
(2, 'Wanjiku Njeri'),
(3, 'Omondi Otieno'),
(4, 'Kiprono Chebet'),
(5, 'Fatuma Hassan');

CREATE TABLE `Missionaries` (
  `Missionary_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  `Church_ID` int(11) NOT NULL,
  `Gender_MF` varchar(45) NOT NULL,
  `Married_YN` varchar(45) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) DEFAULT '',
  `Last_Name` varchar(45) NOT NULL,
  `Cell_Mobile_Number` int(11) NOT NULL,
  `Email_Address` varchar(45) DEFAULT '',
  `Date_Joined_Church` date NOT NULL,
  `Date_Left_Church` date NOT NULL,
  `Other_Details` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Missionaries` VALUES
(1, 1, 1, 'M', 'Y', '1985-07-12', 'Joseph', 'Kariuki', 'Mwangi', 722334455, 'joseph.mwangi@example.com', '2010-01-10', '2020-12-31', NULL),
(2, 2, 2, 'F', 'Y', '1990-03-22', 'Alice', 'Wangari', 'Karanja', 733112233, 'alice.wangari@example.com', '2012-05-15', '2019-06-01', NULL),
(3, 3, 3, 'M', 'N', '1988-11-04', 'Daniel', 'Mutua', 'Muli', 711445566, '', '2014-07-20', '2021-08-01', NULL),
(4, 4, 4, 'F', 'N', '1992-09-17', 'Mercy', '', 'Achieng', 745556677, '', '2015-03-01', '2023-01-01', NULL),
(5, 5, 5, 'F', 'N', '1987-02-14', 'Faith', '', 'Ali', 729887766, '', '2011-09-09', '2018-10-10', NULL);

CREATE TABLE `Ref_Countries` (
  `Country_Code` int(11) NOT NULL,
  `Country_Name` varchar(45) NOT NULL,
  `Country_Description` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Ref_Countries` VALUES
(254, 'Kenya', 'Kenya is a country in East Africa with a coastline on the Indian Ocean. It includes savannah, lakelands, the Great Rift Valley and mountain highlands.'),
(255, 'Tanzania', 'Tanzania is a country in East Africa known for its vast wilderness areas.'),
(256, 'Uganda', 'Uganda is a landlocked country in East Africa with diverse wildlife and scenery.'),
(257, 'Rwanda', 'Rwanda is a landlocked country in the Great Rift Valley of Central Africa.'),
(258, 'South Sudan', 'South Sudan is a country in East-Central Africa. It gained independence from Sudan in 2011.');

CREATE TABLE `Ref_Payment_Methods` (
  `Payment_Method_Code` int(11) NOT NULL,
  `Payment_Method_Name eg Amex, Cash, DC, MC` varchar(45) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Ref_Payment_Methods` VALUES
(1, 'M-Pesa'),
(2, 'Bank Transfer'),
(3, 'Cash'),
(4, 'Cheque'),
(5, 'Airtel Money');

CREATE TABLE `Service_Postings` (
  `Posting_ID` int(11) NOT NULL,
  `Country_of_Service_Code` int(11) NOT NULL,
  `Address_Details` varchar(45) DEFAULT NULL,
  `Contact_Details` varchar(45) DEFAULT NULL,
  `Date_Service_From` date NOT NULL,
  `Date_Service_To` date NOT NULL,
  `Other_Details` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Service_Postings` VALUES
(1, 254, 'Nairobi CBD, Moi Ave', 'Call via Safaricom', '2010-01-10', '2020-12-31', NULL),
(2, 256, 'Kampala Central', 'Call via Airtel Uganda', '2012-05-15', '2019-06-01', NULL),
(3, 255, 'Dar es Salaam', 'Email preferred', '2014-07-20', '2021-08-01', NULL);

COMMIT;
