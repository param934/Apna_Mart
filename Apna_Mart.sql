-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Apna_Mart
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Apna_Mart` ;

-- -----------------------------------------------------
-- Schema Apna_Mart
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Apna_Mart` DEFAULT CHARACTER SET utf8mb3 ;
USE `Apna_Mart` ;

-- -----------------------------------------------------
-- Table `Apna_Mart`.`Admins`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Admins` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Admins` (
  `idAdmin` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `passwordAdmin` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idAdmin`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO Admins(idAdmin,passwordAdmin)
values
(1,12345);


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Customers` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Customers` (
  `idCustomer` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` CHAR(50) NOT NULL,
  `last_name` CHAR(50) NULL DEFAULT NULL,
  `phno` VARCHAR(10) NOT NULL,
  `wallet` INT UNSIGNED NULL DEFAULT NULL,
  `street_address` VARCHAR(45) NOT NULL,
  `area_address` VARCHAR(45) NULL DEFAULT NULL,
  `zip_address` CHAR(10) NOT NULL,
  `password` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idCustomer`))
ENGINE = InnoDB
AUTO_INCREMENT = 101
DEFAULT CHARACTER SET = utf8mb3;
CREATE INDEX idCustomer ON Customers(idCustomer);

INSERT INTO Customers(idCustomer, first_name, last_name, phno, wallet, street_address, area_address, zip_address, password)
VALUES
(1, 'Aarav', 'Patel', '9648172350', 10000, '1455, Sector 21', 'Faridabad, Haryana', 121001, 'eWa8P5'),
(2, 'Aditi', 'Sharma', '8652103479', 90000, '23, Green Avenue', 'Amritsar, Punjab', 143001, 'D1hNW3AAvlP'),
(3, 'Advait', 'Gupta', '9675302148', 40000, 'A-6, Vikas Marg', 'Delhi', 110092, 'S8hwVKVyk'),
(4, 'Alisha', 'Singh', '9061482537', 4000, '4th Cross Road, Malleshwaram', 'Bangalore, Karnataka', 560003, 'b2sQOSVcfq3'),
(5, 'Aman', 'Rao', '8362095741', 400, '85, S.P. Road', 'Secunderabad, Telangana', 500003, 'anpWZOq'),
(6, 'Amisha', 'Reddy', '7685029314', 5000, '45/8, Mahaveer Nagar', 'Jaipur, Rajasthan', 302018, '2YRBNUaVCH0m'),
(7, 'Ananya', 'Verma', '9071456832', 6000, '205, Parle Point', 'Surat, Gujarat', 395007, 'vvTsxpri'),
(8, 'Aniket', 'Shah', '9021347685', 200, '106, Shakti Nagar', 'Udaipur, Rajasthan', 313001, 'bgF9LJ7x'),
(9, 'Anisha', 'Yadav', '9752301684', 100, '38, Sankey Road', 'Bangalore, Karnataka', 560052, '7Gh8XeLXR3'),
(10, 'Anjali', 'Choudhary', '8351429670', 9999, '401, Manjusha Tower', 'Ahmedabad, Gujarat', 380007, 'TMYvKRImo'),
(11, 'Ankit', 'Bhatia', '8370421965', 7999, '19-Jan, Tilak Nagar', 'Delhi', 110018, 'YdPzb7lZ'),
(12, 'Anmol', 'Desai', '8743095216', 500, '57, Lake Road', 'Kolkata, West Bengal', 700029, 'sszBLeMzy'),
(13, 'Ansh', 'Bhatnagar', '9065842317', 200, '321, Sarvodaya Enclave', 'Delhi', 110017, 'A5u9vPWtN'),
(14, 'Anshul', 'Nair', '6970452318', 900, '11-Mar, Jawahar Nagar', 'Jaipur, Rajasthan', 302004, 'g3b25b2Mo'),
(15,'Arnav','Iyer',9146825037,300,'51, Balmiki Marg','Lucknow, Uttar Pradesh',226001,'pj9nyAcJQe'),
(16,'Arpit','Rao',8743925160,4000,'22, Sushila Vihar','Bhopal, Madhya Pradesh',462039,'KKhFxb'),
(17,'Arsh','Rana',8946732105,15000,'5, Bandra West','Mumbai, Maharashtra',400050,'rDWeuz4ynQiV'),
(18,'Arya','Sengupta',9073258146,149,'18, Sector 11','Noida, Uttar Pradesh',201301,'xXOnkv'),
(19,'Ashish','Mehta',8751936240,2000,'09-Jan, Mandir Marg','Delhi',110001,'AmuS7uvgyWc'),
(20,'Atharv','Banerjee',9458731026,16000,'119, Sardar Patel Road','Hyderabad, Telangana',500003,'Hksgnww'),
(21,'Avi','Dhillon',8432690751,2999,'32, Rajpur Road','Dehradun, Uttarakhand',248001,'gsQSc3iPK'),
(22,'Avinash','Khanna',8965174302,7000,'69, Jodhpur Park','Kolkata, West Bengal',700068,'YbFNsJ'),
(23,'Ayush','Sood',9071652348,1000,'305, Paldi','Ahmedabad, Gujarat',380006,'38K7dIG'),
(24,'Bhavesh','Mehra',7839021654,900,'12, Ram Nagar','Nagpur, Maharashtra',440010,'W6Tw3f'),
(25,'Bhavya','Pandey',7982451360,10000,'25, Gokhale Road','Thane, Maharashtra',400602,'x8oSACTEyjIa'),
(26,'Chaitanya','Kumar',6908134257,600,'78, Vasant Vihar','Delhi',110057,'Zw1uGgXotQM'),
(27,'Darsh','Bose',8360251479,899,'49, Anand Vihar','Pune, Maharashtra',411051,'jBHVK4O11n7n'),
(28,'Deepak','Thakur',8943215670,799,'23, Rajaji Salai','Chennai, Tamil Nadu',600001,'n9rqBZp'),
(29,'Dev','Das',8560312749,499,'53, JLN Marg','Jaipur, Rajasthan',302017,'K78OL1pMxu2q'),
(30,'Devanshi','Misra',7063584912,10999,'91, TTK Road','Chennai, Tamil Nadu',600018,'Gvv1tda'),
(31, 'Devendra', 'Naidu', 9160487532, 11999, '24, Park Street', 'Kolkata, West Bengal', 700016, 'JfNOHvaJwzYv'),
(32, 'Dhruv', 'Joshi', 9024183675, 1200, '15, Shyamla Hills', 'Bhopal, Madhya Pradesh', 462002, 'dJoPNS'),
(33, 'Divya', 'Dubey', 9760321548, 1300, '129, Greams Road', 'Chennai, Tamil Nadu', 600006, 'F6mq7T5'),
(34, 'Esha', 'Chowdhury', 8637291064, 1450, '3, Kalkaji', 'Delhi', 110019, 'fViOCjaYy9'),
(35, 'Gaurav', 'Roy', 7895162340, 900, '502, Sahar Road', 'Mumbai, Maharashtra', 400099, 'rzdSIOITni3'),
(36, 'Gautam', 'Raut', 8430912567, 260, '88, Mahatma Gandhi Road', 'Pune, Maharashtra', 411001, 'fKG5346Ofrz'),
(37, 'Geeta', 'Kulkarni', 8765031924, 800, '123, Saket', 'Delhi', 110017, 'A9q9wDhlZVKf'),
(38, 'Gopal', 'Patil', 8743925160, 900, '206, Marine Lines', 'Mumbai, Maharashtra', 400020, 'p3DAEPDo'),
(39, 'Harsh', 'Goyal', 8752016394, 100, '54, Malviya Nagar', 'Jaipur, Rajasthan', 302017, 't3iO5hSn'),
(40, 'Harsha', 'Malhotra', 9458731026, 150, '11, Green Park', 'Delhi', 110016, 'd6jJayR'),
(41, 'Himanshu', 'Bhandari', 7095624381, 390, '79, Warden Road', 'Mumbai, Maharashtra', 400036, '3kx8OauTzf'),
(42, 'Ishaan', 'Chauhan', 8041527369, 1400, '38, Purana Quila Road', 'Lucknow, Uttar Pradesh', 226001, 'pGCPmNRVMM'),
(43, 'Isha', 'Hegde', 6794013652, 14999, '7, Ashok Marg', 'Jaipur, Rajasthan', 302001, 'lIVkNjbry6'),
(44, 'Jagdish', 'Sawant', 9061234785, 15999, '34/A, Bhatia Nagar', 'Pune, Maharashtra', 411013, 'ukBlnvEMlg3'),
(45, 'Jatin', 'Sahu', 8469352701, 1000, 'H.No. 25-6-223, Ashok Nagar', 'Visakhapatnam, Andhra Pradesh', 530003, 'FJXi6Rx6fQ2'),
(46, 'Jaya', 'Chakraborty', 9061482537, 20000, '12-Jan, Green Park Colony', 'Hyderabad, Telangana', 500034, 'xBEchH'),
(47, 'Jayant', 'Shahani', 8541736029, 30000, '45, Shantinagar', 'Nagpur, Maharashtra', 440002, 'E0tvLGs4Me'),
(48, 'Jignesh', 'Tiwari', 8351429670, 6000, '16, Shree Balaji Residency', 'Rajkot, Gujarat', 360005, 'gaPKjbb1QHei'),
(49, 'Jyoti', 'Rastogi', 7685029314, 5000, 'H.No. 4-2-8, Habsiguda', 'Hyderabad, Telangana', 500007, '8yShu5J'),
(50, 'Kajal', 'Jain', 8673021549, 550, '54, Kamla Nagar', 'Jaipur, Rajasthan', 302001, 'pfXSRC'),
(51, 'Kavya', 'Sethi', 9458731026, 2678, '31, Indira Nagar', 'Lucknow, Uttar Pradesh', 226016, 'OhG5IKuBcT0'),
(52, 'Ketan', 'Nambiar', 9160487532, 890, '5-3-345/5, Near Hyderabad Central', 'Hyderabad, Telangana', 500029, 'G5MtAzAl19'),
(53, 'Kirti', 'Chatterjee', 9012543786, 560, '27, Gulmohar Park', 'Delhi', 110049, 'YcsfqxCXAP'),
(54, 'Kunal', 'Kurup', 9614782053, 30000, '54, Krishna Nagar', 'Kanpur, Uttar Pradesh', 208001, 'OjkUKnXiQ'),
(55, 'Kush', 'Shetty', 9061234785, 3000, '34, Shanti Niketan Colony', 'Bhopal, Madhya Pradesh', 462001, 'Kti3mLMES'),
(56, 'Lokesh', 'Balakrishnan', 9065842317, 999, '16, Sector 17', 'Faridabad, Haryana', 121002, 'fIwrkI1xZ0ZX'),
(57, 'Madhav', 'Varghese', 9610325847, 7890, 'H.No. 1-7-73, New Maruthi Nagar', 'Secunderabad, Telangana', 500025, 'H2BekSj2'),
(58,'Madhuri','Bhide',8560312749,3450,"25, Surya Nagar",'Ghaziabad, Uttar Pradesh',201011,'FqzTRLzU'),
(59,'Mahesh','Mathur',9478120536,5000,"57, Kalyani Nagar",'Pune, Maharashtra',411006,'iLm85q'),
(60,'Manish','Puri',9071652348,6000,"42, Anand Vihar",'Jaipur, Rajasthan',302021,'Po2TFMJi'),
(61,'Manoj','Anand',6794013652,8999,"12, Shyam Nagar",'Ahmedabad, Gujarat',380015,'LySJ4M'),
(62,'Meena','Kapoor',9632154780,9000,"28, Nehru Nagar",'Bhopal, Madhya Pradesh',462003,'p7I1kV3NPd'),
(63,'Megha','Kaur',8637291064,19000,"15, DLF Phase 3",'Gurugram, Haryana',122002,'F1lb1O1'),
(64,'Mohan','Jha',6948123570,20000,"39, Mohan Nagar",'Nagpur, Maharashtra',440001,'FaQxUDdH'),
(65,'Mohit','Lobo',9061234785,7900,"19, Gandhi Road",'Kolkata, West Bengal',700007,'w4YRnv'),
(66,'Naveen','Saluja',9614782053,8999,"7, Model Town",'Amritsar, Punjab',143001,'iyAaVaJie5c0'),
(67,'Navin','Venkatesh',8370421965,1200,"22, Pragati Nagar",'Jabalpur, Madhya Pradesh',482001,'yaFdXGI0kI'),
(68,'Neel','Chauhan',8679513204,6000,"H.No. 6-1-97, Indira Nagar",'Warangal, Telangana',506002,'IKF3Wo7'),
(69,'Neha','Dixit',9021347685,189,"10, Karol Bagh",'Delhi',110005,'7u2wnqTEpw'),
(70,'Nidhi','Bajaj',9051476832,230,"11, Sankar Nagar",'Trichy, Tamil Nadu',620001,'YgfBa2m4B'),
(71,'Nisha','Talwar',9152074836,455,"48, Shakti Nagar",'Jaipur, Rajasthan',302006,'vbp4Vct9QY'),
(72,'Nitin','Menon',7980412563,600,"14, Sadar Bazaar",'Meerut, Uttar Pradesh',250001,'I5nBsOWF0'),
(73,'Omkar','Agarwal',8652103479,800,"13, Sanjay Nagar",'Bengaluru, Karnataka',560094,'sZn5gD3Z'),
(74,'Pallavi','Varma',9061234785,900,"23, Tarnaka",'Secunderabad, Telangana',500017,'NEMT0x'),
(75,'Pankaj','Garg',9740863521,1400,"27, Tilak Nagar",'Raipur, Chhattisgarh',492001,'8aAyBbA'),
(76,'Parth','Murthy',9047513268,3000,'H.No. 4-3-49, Maruthi Nagar','Vijayawada, Andhra Pradesh',520010,'4ZwFEF7ebY63'),
(77,'Pooja','Bagchi',8743095216,6000,'6, Ratan Lal Nagar','Kanpur, Uttar Pradesh',208022,'nhMGKfTtG'),
(78,'Pradeep','Mukherjee',8637291064,800,'45, Anupam Nagar','Raipur, Chhattisgarh',492001,'ASPX4G'),
(79,'Pranav','Trivedi',8765920341,9000,'23, 1st Main Road','Lakkasandra Extension, Bangalore, Karnataka',560030,'rft9Qf'),
(80,'Pratik','Dey',8341975260,7000,'House No. 14, New Friends Colony','New Delhi, Delhi',110025,'YYACZyEK1'),
(81,'Priya','Suri',8560312749,670,'Flat No. 401, Vaishali Apartments','Nizampet Road, Hyderabad, Telangana',500090,'IlDL1y2x'),
(82,'Rachit','Sridhar',8370421965,1444,'67, Shanti Niketan Colony','Bhopal, Madhya Pradesh',462003,'dW4zpmSArSL'),
(83,'Raj','Karthik',9432567018,18000,'08-Jan, Ram Krishna Road','Kolkata, West Bengal',700004,'36o6N3LJAXv'),
(84,'Rajat','Prasad',9051476832,10,'B-206, Aditya Greens','Gota, Ahmedabad, Gujarat',382481,'HTJMLr'),
(85,'Rajeev','Biswas',7839021654,70,'102, Ashirwad Society','Opp. Mangaldeep School, Manjalpur, Gujarat',390011,'EYrkYk'),
(86,'Rajesh','Shukla',6934082157,788,'10, Mahalakshmi Nagar','Indore, Madhya Pradesh',452001,'b0Mt8NrfIgn'),
(87,'Rakesh','Kulkarni',9610325847,800,'12-2-831, Mehdipatnam','Hyderabad, Telangana',500028,'4fge35CYeSiy'),
(88,'Ravindra','Venkataraman',7935026148,600,'House No. 12, Sector 3','Panchkula, Haryana',134109,'MfzT51'),
(89,'Rohan','Nadar',9071456832,800,'03-Apr, Kalakunj Society, Sama Road', 'Vadodara, Gujarat',390008,'qTCT4n'),
(90,'Ruchir','Pai',9750321468,900,'68, Gopal Nagar','Jalandhar, Punjab',144008,'JZlNYkc'),
(91,'Sachin','Ghosh',7980412563,700,'44, Girdhar Nagar','Jaipur, Rajasthan',302021,'0HZXDbM'),
(92,'Sahil','Chandra',8970362145,19000,'102, Alok Nagar','Indore, Madhya Pradesh',452009,'BNga1w'),
(93,'Samir','Jaiswal',6794013652,17000,"Flat No. 201, Sai Anand Residency",'KPHB, Hyderabad, Telangana',500072, 'rgIreET'),
(94,'Sandeep','Swamy',8743095216,700,"1st Floor, Kailash Colony",'Near City Center Mall, Nashik, Maharashtra',422005, 'eBqMbf'),
(95,'Sanjay','Agrawal',9061234785,800,"46, Huda Market",'Sector 31, Gurugram, Haryana',122001, '95vuk91'),
(96,'Sarika','Bhattacharya',9073261854,80,"305, Sunrise Tower",'Ghod Dod Road, Surat, Gujarat',395007, '6Aw2SGT6d7vM'),
(97,'Saurabh','Mallick',8370421965,90,"16, Sattar Taluka Society",'Fatehgunj, Vadodara, Gujarat',390002, '975ZMKg'),
(98,'Shikha','Hazra',9632154780,20,"House No. 128, Sector 8",'Faridabad, Haryana',121006, 'TxUSyaZHi88'),
(99,'Shilpa','Mohanty',8351429670,80,"Flat No. 601, Satya Sai Residency",'KPHB, Hyderabad, Telangana',500072, 'pfSZ61cd9WO'),
(100,'Shiv','Swaminathan',9061234785,10000,"23, Surya Vihar",'Sector 4, Gurgaon, Haryana',122001, 'yNp15Q9F7');



-- -----------------------------------------------------
-- Table `Apna_Mart`.`Categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Categories` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Categories` (
  `idCategory` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameCategory` VARCHAR(45) NOT NULL,
  `idAdmin` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCategory`),
  INDEX `fk_Categories_Admin1_idx` (`idAdmin` ASC) VISIBLE,
  CONSTRAINT `fk_Categories_Admin1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO Categories(idCategory,nameCategory,idAdmin)
VALUES
(1,'Clothing',1),
(2,'Shoes',1),
(3,'Accessories',1),
(4,'Beauty and Personal Care',1),
(5,'Home and Kitchen',1),
(6,'Electronics',1),
(7,'Sports',1),
(8,'Toys and Games',1),
(9,'Books',1),
(10,'Grocery',1);


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Products` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Products` (
  `idProduct` INT UNSIGNED NOT NULL,
  `nameProduct` VARCHAR(45) NOT NULL,
  `idCategory` INT UNSIGNED NOT NULL,
  `price` DECIMAL(10,2) UNSIGNED NOT NULL,
  `description` VARCHAR(500) NULL DEFAULT NULL,
  `quantityAvailable` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idProduct`),
  INDEX `fk_Products_Categories1_idx` (`idCategory` ASC) VISIBLE,
  CONSTRAINT `fk_Products_Categories1`
    FOREIGN KEY (`idCategory`)
    REFERENCES `Apna_Mart`.`Categories` (`idCategory`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;
CREATE INDEX idProduct ON Products(idProduct);

INSERT INTO Products(idProduct,nameProduct,idCategory,price,description,quantityAvailable)
VALUES
(1,'T-Shirt',1,500,'Black Cotton T-Shirt, Size M',93),
(2,'Jeans',1,1500,'Blue Denim Jeans, Size 32',49),
(3,'Dress',1,2000,'Red Floral Printed Dress, Size L',29),
(4,'Shirt',1,1000,'White Linen Shirt, Size XL',40),
(5,'Skirt',1,800,'Green A-Line Skirt, Size S',55),
(6,'Blazer',1,2500,'Black Formal Blazer, Size M',20),
(7,'Sweater',1,1700,'Gray Woolen Sweater, Size L',33),
(8,'Jacket',1,2000,'Brown Leather Jacket, Size XL',13),
(9,'Hoodie',1,1200,'Navy Blue Hoodie, Size M',44),
(10,'Pants',1,1200,'Beige Chinos, Size 32',49),
(11,'Nike',2,3000,'Black and Red Running Shoes, Size 10',30),
(12,'Adidas',2,2500,'White and Blue Casual Shoes, Size 9',33),
(13,'Puma',2,2000,'Gray and Green Sneakers, Size 8',46),
(14,'Reebok',2,1500,'Red and Black Training Shoes, Size 7',60),
(15,'Converse',2,1700,'White and Black High-Top Sneakers, Size 10',31),
(16,'Vans',2,1900,'Black and White Skate Shoes, Size 9',23),
(17,'New Balance',2,2100,'Green and Gray Trail Running Shoes, Size 8',20),
(18,'Skechers',2,2000,'Black and White Walking Shoes, Size 7',15),
(19,'Under Armour',2,2500,'Black Basketball Shoes, Size 10',2),
(20,'Brooks',2,2800,'Blue and Orange Running Shoes, Size 9',5),
(21,'Wallet',3,800,'Brown Leather Bifold Wallet, Size M',46),
(22,'Watch',3,3000,'Black Stainless Steel Analog Watch, Unisex',28),
(23,'Sunglasses',3,1500,'Black Aviator Sunglasses, Unisex',39),
(24,'Bag',3,2000,'Brown Canvas Backpack, Size L',18),
(25,'Scarf',3,500,'Red and Black Plaid Scarf, Size M',59),
(26,'Hat',3,700,'Black Baseball Hat, One Size',50),
(27,'Belt',3,1000,'Brown Leather Belt, Size M',40),
(28,'Gloves',3,500,'Black Warm Winter Gloves, Size M',32),
(29,'Umbrella',3,700,'Black Compact Umbrella, One Size',25),
(30,'Headphones',3,1500,'Black Wireless Headphones, One Size',12),
(31,'Perfume',4,1500,"Ladies' Red Eau de Parfum, 50 ml",29),
(32,'Lipstick',4,700,"Matte Red Lipstick, Size M",34),
(33,'Moisturizer',4,1200,"Men's Lightweight Moisturizer, 100 ml",50),
(34,'Eyeliner',4,800,"Black Liquid Eyeliner, Size S",55),
(35,'Shampoo',4,500,"Herbal Shampoo, 500 ml",70),
(36,'Conditioner',4,500,"Argan Oil Conditioner, 500 ml",58),
(37,'Eyeshadow Palette',4,2500,"Nude Eyeshadow Palette, Size M",19),
(38,'Blush',4,800,"Pink Powder Blush, Size S",28),
(39,'Mascara',4,900,"Waterproof Black Mascara, Size M",40),
(40,'Nail Polish',4,400,"Red Nail Polish, Size S",47),
(41,'Microwave Oven',5,5000,"20 litre capacity, multiple cooking options",18),
(42,'Blender',5,2000,'300W motor with stainless steel blades',27),
(43,'Vacuum Cleaner',5,7000,"1200W motor, bagless with HEPA filter",13),
(44,'Toaster',5,1500,'2 slice capacity with adjustable browning control',35),
(45,'Gas Stove',5,6000,'4 burners with automatic ignition',24),
(46,'Iron',5,1000,'2200W with steam function and adjustable temperature',34),
(47,'Rice Cooker',5,2500,'1.8 litre capacity with automatic shut-off',50),
(48,'Sofa Cover',5,1500,'3-seater size with machine washable fabric',20),
(49,'Pillow',5,500,'100% cotton cover with hypoallergenic filling',80),
(50,'Cutlery Set',5,3000,'Stainless steel with 24 pieces including forks, knives, and spoons',7),
(51,'Apple iPhone 12',6,112799,'64GB, Space Grey, 5G Enabled',100),
(52,'Samsung Galaxy S21',6,34699,'128GB, Phantom Black, 5G Enabled',149),
(53,'OnePlus 9 Pro',6,15599,'256GB, Morning Mist, 5G Enabled',200),
(54,'Xiaomi Mi 11',6,14499,'128GB, Cosmic Black, 5G Enabled',250),
(55,'Google Pixel 5',6,36649,'128GB, Just Black, 5G Enabled',199),
(56,'Sony Xperia 5 III',6,17749,'256GB, Black, 5G Enabled',147),
(57,'Realme Narzo 30 Pro',6,18199,'64GB, White Knight, 4G Enabled',299),
(58,'Honor 30S',6,12249,'128GB, Magic Night Black, 5G Enabled',199),
(59,'OPPO Find X3 Pro',6,9999,'256GB, Gloss Black, 5G Enabled',99),
(60,'Vivo X60 Pro',6,59990,'128GB, Shimmer Blue, 5G Enabled',149),
(61,'Basketball',7,120,"Size 7, Indoor/Outdoor Use",498),
(62,'Tennis Racket',7,375,"Graphite, Lightweight, Strung",196),
(63,'Running Shoes',7,1120,"Men's size 9, Breathable Mesh",298),
(64,'Yoga Mat',7,775,"Non-Slip, Eco-Friendly, 72"" x 24""",400),
(65,'Jump Rope',7,300,"Adjustable Length, Foam Handles",494),
(66,'Weightlifting Gloves',7,899,"Leather, Wrist Support, Non-Slip",300),
(67,'Cycling Jersey',7,1245,"Men's Large, Quick-Dry Fabric",197),
(68,'Swimming Goggles',7,999,"Anti-Fog, UV Protection, Adjustable Strap",399),
(69,'Baseball Bat',7,899,"Aluminum, 31"" Length, Youth Size",300),
(70,'Hiking Backpack',7,1599,"45L, Water Resistant, Adjustable Straps",148),
(71,'Lego Set',8,735,"Star Wars Themed, 500 Pieces",196),
(72,'Remote Control Car',8,699,"1:16 Scale, Off-Road",299),
(73,'Stuffed Animal',8,815,"Cute and Soft, 12"" Tall",396),
(74,'Doll House',8,599,"Three Levels, Furnished",100),
(75,'Action Figure',8,200,"Marvel Cinematic Universe, 6"" Tall",300),
(76,'Puzzle',8,100,"1000 Piece, Landscape Scene",197),
(77,'Board Game',8,250,'Monopoly Classic Edition',142),
(78,'Play Tent',8,499,"Indoor/Outdoor Use, 45"" x 45""",193),
(79,'Building Blocks',8,399,"Large Set, 100 Pieces",249),
(80,'Remote Control Helicopter',8,1299,"2 Channel, Indoor Use",95),
(81,'Harry Potter and the Philosopher Stone',9,2000,"Fantasy Fiction, Hardcover",495),
(82,'To Kill a Mockingbird',9,1599,"Classics, Paperback",400),
(83,'The Alchemist',9,1200,"Self-Discovery, Paperback",299),
(84,'The Da Vinci Code',9,1850,"Mystery Thriller, Hardcover",200),
(85,'The Lord of the Rings',9,2500,"Fantasy Fiction, Hardcover",199),
(86,'The Hunger Games',9,2200,"Science Fiction, Paperback",250),
(87,'The Great Gatsby',9,1500,"Classics, Paperback",299),
(88,'Pride and Prejudice',9,1790,"Classics, Paperback",400),
(89,'1984',9,1499,"Dystopian Fiction, Paperback",193),
(90,'Animal Farm',9,120,"Political Satire, Paperback",299),
(91,'Rice',10,100,"Long Grain, 5lb bag",291),
(92,"Pasta",10,50,"Penne, 1lb box",397),
(93,"Bread",10,30,"Whole Wheat, Loaf",497),
(94,"Sugar",10,200,"Granulated, 4lb bag",397),
(95,"Cooking Oil",10,700,"Extra Virgin Olive Oil, 1L bottle",200),
(96,"Tomatoes",10,200,"Ripe, Fresh, 1lb bag",299),
(97,"Potatoes",10,70,"Russet, 5lb bag",400),
(98,"Lemon",10,100,"Fresh, Medium-sized",499),
(99,"Milk",10,40,"Whole, 1 gallon",187),
(100,"Eggs",10,180,"Large, Grade A, Dozen",294);

-- -----------------------------------------------------
-- Table `Apna_Mart`.`Carts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Carts` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Carts` (
  `idCustomer` INT UNSIGNED NOT NULL,
  `idProduct` INT UNSIGNED NULL DEFAULT NULL,
  `quantity` INT UNSIGNED NULL DEFAULT NULL,
  INDEX `fk_Carts_Customer1_idx` (`idCustomer` ASC) VISIBLE,
  INDEX `fk_Carts_Products1_idx` (`idProduct` ASC) VISIBLE,
  CONSTRAINT `fk_Carts_Customer1`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `Apna_Mart`.`Customers` (`idCustomer`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Carts_Products1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `Apna_Mart`.`Products` (`idProduct`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;
INSERT INTO Carts(idCustomer,idProduct,quantity)
VALUES
(1,NULL,NULL),
(2,NULL,NULL),
(3,NULL,NULL),
(4,NULL,NULL),
(5,NULL,NULL),
(6,NULL,NULL),
(7,NULL,NULL),
(8,NULL,NULL),
(9,NULL,NULL),
(10,NULL,NULL),
(11,NULL,NULL),
(12,NULL,NULL),
(13,NULL,NULL),
(14,NULL,NULL),
(15,NULL,NULL),
(16,NULL,NULL),
(17,NULL,NULL),
(18,NULL,NULL),
(19,8,2),
(20,29,5),
(20,65,1),
(20,89,2),
(21,97,8),
(22,3,1),
(23,13,3),
(23,14,2),
(24,NULL,NULL),
(25,NULL,NULL),
(26,13,5),
(27,NULL,NULL),
(28,NULL,NULL),
(29,NULL,NULL),
(30,56,2),
(31,NULL,NULL),
(32,NULL,NULL),
(33,NULL,NULL),
(34,NULL,NULL),
(35,97,2),
(36,NULL,NULL),
(37,NULL,NULL),
(38,NULL,NULL),
(38,NULL,NULL),
(39,NULL,NULL),
(40,NULL,NULL),
(41,NULL,NULL),
(42,NULL,NULL),
(43,34,1),
(44,NULL,NULL),
(45,NULL,NULL),
(46,NULL,NULL),
(47,NULL,NULL),
(48,NULL,NULL),
(49,NULL,NULL),
(50,NULL,NULL),
(51,NULL,NULL),
(52,NULL,NULL),
(52,NULL,NULL),
(53,NULL,NULL),
(54,NULL,NULL),
(55,27,2),
(56,NULL,NULL),
(57,NULL,NULL),
(58,NULL,NULL),
(59,NULL,NULL),
(60,NULL,NULL),
(61,NULL,NULL),
(62,NULL,NULL),
(63,NULL,NULL),
(64,NULL,NULL),
(65,NULL,NULL),
(66,NULL,NULL),
(67,NULL,NULL),
(68,NULL,NULL),
(69,NULL,NULL),
(70,67,4),
(71,NULL,NULL),
(72,NULL,NULL),
(73,NULL,NULL),
(74,NULL,NULL),
(75,NULL,NULL),
(76,NULL,NULL),
(77,NULL,NULL),
(78,NULL,NULL),
(79,NULL,NULL),
(80,NULL,NULL),
(81,NULL,NULL),
(82,NULL,NULL),
(83,NULL,NULL),
(84,NULL,NULL),
(85,NULL,NULL),
(86,NULL,NULL),
(87,NULL,NULL),
(88,NULL,NULL),
(89,NULL,NULL),
(90,NULL,NULL),
(91,NULL,NULL),
(92,NULL,NULL),
(93,24,2),
(93,23,1),
(93,78,4),
(93,11,NULL),
(94,NULL,NULL),
(95,NULL,NULL),
(96,NULL,NULL),
(97,NULL,NULL),
(98,NULL,NULL),
(99,NULL,NULL),
(100,NULL,NULL);


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Suppliers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Suppliers` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Suppliers` (
  `idSupplier` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_nameSupplier` VARCHAR(90) NOT NULL,
  `last_nameSupplier` VARCHAR(90) NOT NULL,
  `idAdmin` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idSupplier`),
  INDEX `fk_Supplier_Admin1_idx` (`idAdmin` ASC) VISIBLE,
  CONSTRAINT `fk_Supplier_Admin1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO Suppliers(first_nameSupplier,last_nameSupplier,idAdmin)
VALUES
('Rajesh', 'Gupta', 1),
('Manoj', 'Kumar', 1),
('Deepak', 'Sharma', 1),
('Ravi', 'Singh', 1),
('Sandeep', 'Yadav', 1),
('Vikas', 'Patel', 1),
('Sanjay', 'Aggarwal', 1),
('Anil', 'Tiwari', 1),
('Prakash', 'Jaiswal', 1),
('Suresh', 'Kumar', 1),
('Ashok', 'Sharma', 1),
('Rajendra', 'Singh', 1),
('Sunil', 'Jain', 1),
('Shailendra', 'Gupta', 1),
('Ajay', 'Singh', 1),
('Rakesh', 'Gupta', 1),
('Yogesh', 'Patel', 1),
('Dinesh', 'Kumar', 1),
('Vivek', 'Singh', 1),
('Nitesh', 'Verma', 1),
('Mukesh', 'Yadav', 1),
('Santosh', 'Tiwari', 1),
('Arvind', 'Gupta', 1),
('Gaurav', 'Singh', 1),
('Manish', 'Aggarwal', 1),
('Kunal', 'Patel', 1),
('Rohit', 'Kumar', 1),
('Vinod', 'Sharma', 1),
('Deepak', 'Yadav', 1),
('Pradeep', 'Jaiswal', 1),
('Kamal', 'Singh', 1),
('Sushil', 'Gupta', 1),
('Raju', 'Patel', 1),
('Anand', 'Kumar', 1),
('Sanjeev', 'Sharma', 1),
('Vikram', 'Singh', 1),
('Ashish', 'Gupta', 1),
('Praveen', 'Tiwari', 1),
('Rahul', 'Singh', 1),
('Shiv', 'Kumar', 1);


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Inventory_History`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Inventory_History` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Inventory_History` (
  `sno` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAdmin` INT UNSIGNED NOT NULL,
  `idSupplier` INT UNSIGNED NOT NULL,
  `idProduct` INT UNSIGNED NOT NULL,
  `quantity` INT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`sno`),
  INDEX `fk_Inventory_Admin1_idx` (`idAdmin` ASC) VISIBLE,
  INDEX `fk_Inventory_Supplier1_idx` (`idSupplier` ASC) VISIBLE,
  INDEX `fk_Inventory_Products1_idx` (`idProduct` ASC) VISIBLE,
  CONSTRAINT `fk_Inventory_Admin1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Inventory_Products1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `Apna_Mart`.`Products` (`idProduct`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Inventory_Supplier1`
    FOREIGN KEY (`idSupplier`)
    REFERENCES `Apna_Mart`.`Suppliers` (`idSupplier`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 101
DEFAULT CHARACTER SET = utf8mb3;
 INSERT INTO Inventory_History(sno,idAdmin,idSupplier,idProduct,quantity,date)
 VALUES
(1,1,1,1,70,'2022-12-01'),
(2,1,1,2,50,'2022-12-01'),
(3,1,1,3,30,'2022-12-02'),
(4,1,2,4,40,'2022-12-02'),
(5,1,2,5,60,'2022-12-03'),
(6,1,2,6,20,'2022-12-03'),
(7,1,3,7,35,'2022-12-04'),
(8,1,3,8,15,'2022-12-04'),
(9,1,3,9,45,'2022-12-04'),
(10,1,4,10,50,'2022-12-04'),
(11,1,5,11,30,'2022-12-05'),
(12,1,5,12,40,'2022-12-05'),
(13,1,5,13,50,'2022-12-05'),
(14,1,6,14,60,'2022-12-06'),
(15,1,6,15,35,'2022-12-06'),
(16,1,6,16,25,'2022-12-06'),
(17,1,7,17,20,'2022-12-06'),
(18,1,7,18,15,'2022-12-07'),
(19,1,7,19,10,'2022-12-07'),
(20,1,8,20,5,'2022-12-07'),
(21,1,9,21,50,'2022-12-08'),
(22,1,9,22,30,'2022-12-08'),
(23,1,9,23,40,'2022-12-08'),
(24,1,10,24,20,'2022-12-08'),
(25,1,10,25,25,'2022-12-08'),
(26,1,10,26,50,'2022-12-09'),
(27,1,11,27,45,'2022-12-09'),
(28,1,11,28,35,'2022-12-10'),
(29,1,11,29,25,'2022-12-10'),
(30,1,12,30,15,'2022-12-11'),
(31,1,13,31,30,'2022-12-11'),
(32,1,13,32,40,'2022-12-11'),
(33,1,14,33,50,'2022-12-11'),
(34,1,14,34,60,'2022-12-11'),
(35,1,14,35,70,'2022-12-12'),
(36,1,15,36,60,'2022-12-12'),
(37,1,15,37,20,'2022-12-13'),
(38,1,16,38,30,'2022-12-13'),
(39,1,16,39,40,'2022-12-13'),
(40,1,16,40,50,'2022-12-13'),
(41,1,17,41,20,'2022-12-13'),
(42,1,17,42,30,'2022-12-14'),
(43,1,17,43,15,'2022-12-14'),
(44,1,18,44,40,'2022-12-14'),
(45,1,18,45,25,'2022-12-15'),
(46,1,18,46,35,'2022-12-16'),
(47,1,19,47,50,'2022-12-16'),
(48,1,19,48,20,'2022-12-16'),
(49,1,19,49,45,'2022-12-16'),
(50,1,20,50,10,'2022-12-16'),
(51,1,21,51,50,'2022-12-17'),
(52,1,22,52,90,'2022-12-17'),
(53,1,22,53,200,'2022-12-18'),
(54,1,22,54,250,'2022-12-18'),
(55,1,23,55,200,'2022-12-18'),
(56,1,23,56,150,'2022-12-18'),
(57,1,23,57,300,'2022-12-19'),
(58,1,24,58,200,'2022-12-19'),
(59,1,24,59,100,'2022-12-19'),
(60,1,21,60,150,'2022-12-20'),
(61,1,25,61,350,'2022-12-20'),
(62,1,25,62,200,'2022-12-20'),
(63,1,25,63,300,'2022-12-20'),
(64,1,26,64,400,'2022-12-21'),
(65,1,26,65,500,'2022-12-21'),
(66,1,26,66,300,'2022-12-22'),
(67,1,27,67,200,'2022-12-22'),
(68,1,27,68,100,'2022-12-22'),
(69,1,28,69,300,'2022-12-22'),
(70,1,28,70,150,'2022-12-23'),
(71,1,29,71,200,'2022-12-23'),
(72,1,29,72,300,'2022-12-23'),
(73,1,29,73,400,'2022-12-23'),
(74,1,30,74,100,'2022-12-24'),
(75,1,30,75,300,'2022-12-24'),
(76,1,30,76,200,'2022-12-25'),
(77,1,31,77,150,'2022-12-25'),
(78,1,31,78,200,'2022-12-25'),
(79,1,32,79,250,'2022-12-25'),
(80,1,32,80,100,'2022-12-26'),
(81,1,33,81,500,'2022-12-26'),
(82,1,33,82,400,'2022-12-27'),
(83,1,34,83,300,'2022-12-27'),
(84,1,34,84,200,'2022-12-27'),
(85,1,35,85,200,'2022-12-28'),
(86,1,35,86,250,'2022-12-28'),
(87,1,35,87,300,'2022-12-29'),
(88,1,36,88,400,'2022-12-29'),
(89,1,36,89,200,'2022-12-29'),
(90,1,36,90,300,'2022-12-29'),
(91,1,37,91,300,'2022-12-29'),
(92,1,37,92,250,'2022-12-29'),
(93,1,38,93,300,'2022-12-29'),
(94,1,38,94,400,'2022-12-30'),
(95,1,38,95,200,'2022-12-30'),
(96,1,39,96,300,'2022-12-30'),
(97,1,39,97,400,'2022-12-31'),
(98,1,39,98,200,'2022-12-31'),
(99,1,40,99,200,'2022-12-31'),
(100,1,40,100,300,'2022-12-31'),
(101,1,1,1,30,'2023-01-03'),
(102,1,10,25,35,'2023-01-03'),
(103,1,21,51,50,'2023-01-05'),
(104,1,19,49,35,'2023-01-06'),
(105,1,22,52,60,'2023-01-07'),
(106,1,37,92,150,'2023-01-08'),
(107,1,38,93,200,'2023-01-09'),
(108,1,25,61,150,'2023-01-10'),
(109,1,39,98,300,'2023-01-11'),
(110,1,27,68,300,'2023-01-12');


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Vouchers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Vouchers` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Vouchers` (
  `idvoucher` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAdmin` INT UNSIGNED NOT NULL,
  `idCustomer` INT UNSIGNED NOT NULL,
  `idCategory` INT UNSIGNED NOT NULL,
  `discount` DECIMAL(2,0) UNSIGNED NOT NULL,
  `expiry_date` DATETIME NOT NULL,
  PRIMARY KEY (`idvoucher`),
  INDEX `fk_Vouchers_Customer1_idx` (`idCustomer` ASC) VISIBLE,
  INDEX `fk_Vouchers_Admin1_idx` (`idAdmin` ASC) VISIBLE,
  INDEX `fk_Vouchers_Category1_idx` (`idCategory` ASC) VISIBLE,
  CONSTRAINT `fk_Vouchers_Admin1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vouchers_Customer1`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `Apna_Mart`.`Customers` (`idCustomer`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vouchers_Category1`
    FOREIGN KEY (`idCategory`)
    REFERENCES `Apna_Mart`.`Categories` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;
INSERT INTO Vouchers(idVoucher,discount,expiry_date,idCustomer,idAdmin,idCategory)
VALUES
(1,10,'2023-05-03',15,1,4),
(2,20,'2023-02-08',26,1,2),
(3,25,'2023-12-31',28,1,7),
(4,5,'2023-04-17',37,1,6),
(5,15,'2023-10-12',12,1,1),
(6,35,'2023-11-02',84,1,4),
(7,30,'2023-06-15',40,1,2),
(8,25,'2023-09-28',49,1,10),
(9,10,'2023-06-01',1,1,4),
(10,15,'2023-04-14',67,1,8),
(11,20,'2023-07-16',79,1,1),
(12,25,'2023-12-25',99,1,1);



-- -----------------------------------------------------
-- Table `Apna_Mart`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Orders` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Orders` (
  `idOrder` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idCustomer` INT UNSIGNED NOT NULL,
  `totalAmount` DECIMAL(20,2) UNSIGNED NOT NULL,
  `orderDate` DATETIME NOT NULL,
  `deliveryDate` DATETIME NULL DEFAULT NULL,
  `idvoucher` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  INDEX `fk_orders_customer1_idx` (`idCustomer` ASC) VISIBLE,
  INDEX `fk_Orders_Vouchers1_idx` (`idvoucher` ASC) VISIBLE,
  UNIQUE INDEX `idvoucher_UNIQUE` (`idvoucher` ASC) VISIBLE,
  CONSTRAINT `fk_orders_customer1`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `Apna_Mart`.`Customers` (`idCustomer`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Orders_Vouchers1`
    FOREIGN KEY (`idvoucher`)
    REFERENCES `Apna_Mart`.`Vouchers` (`idvoucher`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO Orders(idOrder, idCustomer, totalAmount, orderDate, deliveryDate, idVoucher)
VALUES
(1,49,500,'2023-01-01','2023-01-02',NULL),
(2,66,100,'2023-01-02','2023-01-03',NULL),
(3,93,1700,'2023-01-03','2023-01-05',NULL),
(4,1,9499,'2023-01-03','2023-01-05',NULL),
(5,88,999,'2023-01-04','2023-01-06',NULL),
(6,39,8999,'2023-01-05','2023-01-06',NULL),
(7,70,10000,'2023-01-06','2023-01-09',NULL),
(8,62,5000,'2023-01-07','2023-01-08',NULL),
(9,26,600,'2023-01-08','2023-01-10',NULL),
(10,98,9999,'2023-01-09','2023-01-12',NULL),
(11,32,6000,'2023-01-10','2023-01-12',NULL),
(12,89,500,'2023-01-11','2023-01-14',NULL),
(13,99,1125,'2023-01-12','2023-01-14',12),
(14,60,3599,'2023-01-13','2023-01-15',NULL),
(15,26,7495,'2023-01-14','2023-01-16',NULL),
(16,50,3800,'2023-01-15','2023-01-18',NULL),
(17,70,699,'2023-01-16','2023-01-19',NULL),
(18,63,4000,'2023-01-17','2023-01-19',NULL),
(19,11,36649,'2023-01-17','2023-01-20',NULL),
(20,76,120,'2023-01-18','2023-01-21',NULL),
(21,94,1700,'2023-01-19','2023-01-22',NULL),
(22,61,3500,'2023-01-20','2023-01-23',NULL),
(23,83,17749,'2023-01-21','2023-01-24',NULL),
(24,75,7694,'2023-01-22','2023-01-25',NULL),
(25,85,10000,'2023-01-22','2023-01-29',NULL),
(26,10,5000,'2023-01-23','2023-01-26',NULL),
(27,89,90,'2023-01-24','2023-01-27',NULL),
(28,13,2500,'2023-01-25','2023-01-28',NULL),
(29,95,2000,'2023-01-26','2023-01-29',NULL),
(30,43,500,'2023-01-27','2023-01-31',NULL),
(31,51,800,'2023-01-27','2023-01-30',NULL),
(32,62,1245,'2023-01-28','2023-01-31',NULL),
(33,55,200,'2023-01-29','2023-02-01',NULL),
(34,63,2000,'2023-01-30','2023-02-02',NULL),
(35,76,60110,'2023-01-31','2023-02-03',NULL),
(36,47,800,'2023-01-31','2023-02-02',NULL),
(37,48,34699,'2023-02-01','2023-02-04',NULL),
(38,15,2320,'2023-02-02','2023-02-05',1),
(39,48,2500,'2023-02-03','2023-02-06',NULL),
(40,97,2000,'2023-02-04','2023-02-07',NULL),
(41,6,200,'2023-02-05','2023-02-09',NULL),
(42,41,2490,'2023-02-05','2023-02-08',NULL),
(43,70,2000,'2023-02-06','2023-02-09',NULL),
(44,91,735,'2023-02-07','2023-02-10',NULL),
(45,91,4000,'2023-02-08','2023-02-11',NULL),
(46,11,2000,'2023-02-09','2023-02-12',NULL),
(47,31,500,'2023-02-10','2023-02-13',NULL),
(48,90,500,'2023-02-11', '2023-02-14',NULL),
(49,36,2500,'2023-02-11', '2023-02-13',NULL),
(50,28,933.75,'2023-02-12', '2023-02-14',3),
(51,1,18000,'2023-02-12', '2023-02-13',NULL),
(52,21,120,'2023-02-13', '2023-02-16',NULL),
(53,95,5000,'2023-02-13', '2023-02-15',NULL),
(54,24,1500,'2023-02-14', '2023-02-16',NULL),
(55,8,500,'2023-02-14', '2023-02-15',NULL),
(56,49,100,'2023-02-15', '2023-02-18',NULL),
(57,14,500,'2023-02-15', '2023-02-17',NULL),
(58,23,2240,'2023-02-16', '2023-02-19',NULL),
(59,27,35498,'2023-02-16', '2023-02-18',NULL),
(60,70,800,'2023-02-17', '2023-02-20',NULL),
(61,99,1000,'2023-02-17', '2023-02-19',NULL),
(62,16,2500,'2023-02-18', '2023-02-21',NULL),
(63,8,2000,'2023-02-18', '2023-02-20',NULL),
(64,23,1200,'2023-02-19', '2023-02-22',NULL),
(65,49,6000,'2023-02-19', '2023-02-21',NULL),
(66,84,2885,'2023-02-20', '2023-02-23',NULL),
(67,41,300,'2023-02-20', '2023-02-22',NULL),
(68,84,1299,'2023-02-21', '2023-02-24',NULL),
(69,1,4000,'2023-02-21', '2023-02-23',NULL),
(70,31,800,'2023-02-22', '2023-02-25',NULL),
(71,56,300,'2023-02-22', '2023-02-24',NULL),
(72,80,2000,'2023-02-23', '2023-02-26',NULL),
(73,40,1750,'2023-02-23', '2023-02-25',7),
(74,21,18199,'2023-02-24', '2023-02-27',NULL),
(75,3,500,'2023-02-24', '2023-02-26',NULL),
(76,43,2500,'2023-02-25', '2023-02-28',NULL),
(77,85,200,'2023-02-25', '2023-02-27',NULL),
(78,33,1499,'2023-02-26', '2023-03-01',NULL),
(79,58,1500,'2023-02-26', '2023-02-28',NULL),
(80,83,5000,'2023-02-26', '2023-02-28',NULL),
(81,61,100,'2023-02-27', '2023-03-01',NULL),
(82,24,4000,'2023-02-28', '2023-03-02',NULL),
(83,26,1200,'2023-02-28', '2023-03-03',NULL),
(84,29,240,'2023-03-01', '2023-03-03',NULL),
(85,70,13299,'2023-03-02', '2023-03-04',NULL),
(86,28,1500,'2023-03-02', '2023-03-05',NULL),
(87,9,6800,'2023-03-03', '2023-03-06',NULL),
(88,38,700,'2023-03-04', '2023-03-06',NULL),
(89,87,150,'2023-03-05', '2023-03-07',NULL),
(90,72,12249,'2023-03-06', '2023-03-08',NULL),
(91,47,80,'2023-03-06', '2023-03-09',NULL),
(92,77,3260,'2023-03-07', '2023-03-10',NULL),
(93,11,1200,'2023-03-08', '2023-03-10',NULL),
(94,12,5196,'2023-03-09', '2023-03-11',NULL),
(95,25,2000,'2023-03-10', '2023-03-15',NULL),
(96,4,3000,'2023-03-10', '2023-03-13',NULL),
(97,9,399,'2023-03-11', '2023-03-14',NULL),
(98,70,1000,'2023-03-12', '2023-03-14',NULL),
(99,56,1000,'2023-03-13', '2023-03-15',NULL),
(100,88,900,'2023-03-14', '2023-03-18',NULL);


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Order_Items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Order_Items` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Order_Items` (
  `idOrder` INT UNSIGNED NOT NULL,
  `idProduct` INT UNSIGNED NOT NULL,
  `quantity` INT UNSIGNED NOT NULL,
  `unitPrice` DECIMAL(20,2) UNSIGNED NOT NULL,
  INDEX `fk_cartDetails_Products1_idx` (`idProduct` ASC) VISIBLE,
  INDEX `fk_orderDetails_Orders1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_cartDetails_Products1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `Apna_Mart`.`Products` (`idProduct`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_orderDetails_Orders1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Apna_Mart`.`Orders` (`idOrder`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO Order_Items(idOrder, idProduct, quantity, unitPrice)
VALUES
(1,36,1,500),
(2,92,1,100),
(3,7,1,1700),
(4,50,3,3000),
(4,78,1,499),
(5,68,1,999),
(6,22,2,3000),
(6,78,1,499),
(6,12,1,2500),
(7,81,5,2000),
(8,12,2,2500),
(9,94,3,200),
(10,59,1,9999),
(11,85,4,1500),
(12,28,1,500),
(13,2,1,1500),
(14,42,1,2000),
(14,70,1,1599),
(15,89,5,1499),
(16,16,2,1900),
(17,73,1,699),
(18,8,2,2000),
(19,55,1,36649),
(20,99,3,40),
(21,7,1,1700),
(22,32,5,700),
(23,56,1,17749),
(24,78,5,499),
(24,10,1,1200),
(24,89,1,1499),
(24,37,1,2500),
(25,19,4,2500),
(26,41,1,5000),
(27,93,3,30),
(28,12,1,2500),
(29,65,5,300),
(29,77,2,250),
(30,28,1,500),
(31,81,1,800),
(32,67,1,1245),
(33,96,1,200),
(34,24,1,2000),
(35,60,1,59990),
(35,90,1,120),
(36,38,1,800),
(37,52,1,34699),
(38,34,3,800),
(39,85,1,2500),
(40,24,1,2000),
(41,99,5,40),
(42,56,2,1245),
(43,3,1,2000),
(44,71,1,735),
(45,13,2,2000),
(46,42,1,2000),
(47,77,2,250),
(48,91,5,100),
(49,1,5,500),
(50,67,1,1245),
(51,43,2,7000),
(51,19,1,2500),
(51,30,3,1500),
(52,99,3,40),
(53,12,2,2500),
(54,87,1,1500),
(55,1,1,500),
(56,76,1,100),
(57,25,1,500),
(58,63,2,1120),
(59,56,2,17749),
(60,34,1,800),
(61,77,4,250),
(62,19,1,2500),
(63,92,1,2000),
(64,9,1,1200),
(65,44,4,1500),
(66,71,3,735),
(66,1,1,500),
(66,100,1,180),
(67,65,1,300),
(68,80,1,1299),
(69,27,4,1000),
(70,38,1,800),
(71,91,3,100),
(72,13,1,2000),
(73,19,1,2500),
(74,57,1,18199),
(75,36,1,500),
(76,12,1,2500),
(77,76,2,100),
(78,89,1,1499),
(79,23,1,1500),
(80,41,1,5000),
(81,98,1,100),
(82,5,5,800),
(83,83,1,1200),
(84,61,2,120),
(85,70,1,1599),
(85,28,1,500),
(85,45,1,6000),
(85,42,1,2000),
(85,21,4,800),
(86,44,1,1500),
(87,17,4,1700),
(88,32,1,700),
(89,92,3,50),
(90,58,1,12249),
(91,99,2,40),
(92,73,4,815),
(93,40,3,400),
(94,80,4,1299),
(95,13,1,2000),
(96,62,4,375),
(96,31,1,1500),
(97,79,1,399),
(98,27,1,1000),
(99,46,1,1000),
(100,100,5,180);



-- -----------------------------------------------------
-- Table `Apna_Mart`.`Order_Statuses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Order_Statuses` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Order_Statuses` (
  `idOrder` INT UNSIGNED NOT NULL,
  `shipped` BIT(1) NOT NULL,
  `outForDelivery` BIT(1) NOT NULL,
  `delivered` BIT(1) NOT NULL,
  INDEX `fk_Order Status_Orders1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_Order Status_Orders1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Apna_Mart`.`Orders` (`idOrder`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;
INSERT INTO Order_Statuses(idOrder,shipped,outForDelivery,delivered)
VALUES
(1,1,1,1),
(2,1,1,1),
(3,1,1,1),
(4,1,1,1),
(5,1,1,1),
(6,1,1,1),
(7,1,1,1),
(8,1,1,1),
(9,1,1,1),
(10,1,1,1),
(11,1,1,1),
(12,1,1,1),
(13,1,1,1),
(14,1,1,1),
(15,1,1,1),
(16,1,1,1),
(17,1,1,1),
(18,1,1,1),
(19,1,1,1),
(20,1,1,1),
(21,1,1,1),
(22,1,1,1),
(23,1,1,1),
(24,1,1,1),
(25,1,1,1),
(26,1,1,1),
(27,1,1,1),
(28,1,1,1),
(29,1,1,1),
(30,1,1,1),
(31,1,1,1),
(32,1,1,1),
(33,1,1,1),
(34,1,1,1),
(35,1,1,1),
(36,1,1,1),
(37,1,1,1),
(38,1,1,1),
(39,1,1,1),
(40,1,1,1),
(41,1,1,1),
(42,1,1,1),
(43,1,1,1),
(44,1,1,1),
(45,1,1,1),
(46,1,1,1),
(47,1,1,1),
(48,1,1,1),
(49,1,1,1),
(50,1,1,1),
(51,1,1,1),
(52,1,1,1),
(53,1,1,1),
(54,1,1,1),
(55,1,1,1),
(56,1,1,1),
(57,1,1,1),
(58,1,1,1),
(59,1,1,1),
(60,1,1,1),
(61,1,1,1),
(62,1,1,1),
(63,1,1,1),
(64,1,1,1),
(65,1,1,1),
(66,1,1,1),
(67,1,1,1),
(68,1,1,1),
(69,1,1,1),
(70,1,1,1),
(71,1,1,1),
(72,1,1,1),
(73,1,1,1),
(74,1,1,1),
(75,1,1,1),
(76,1,1,1),
(77,1,1,1),
(78,1,1,1),
(79,1,1,1),
(80,1,1,1),
(81,1,1,1),
(82,1,1,1),
(83,1,1,1),
(84,1,1,1),
(85,1,1,1),
(86,1,1,1),
(87,1,1,1),
(88,1,1,1),
(89,1,1,1),
(90,1,1,1),
(91,1,1,1),
(92,1,1,1),
(93,1,1,1),
(94,1,1,1),
(95,1,1,1),
(96,1,1,1),
(97,1,1,1),
(98,1,1,1),
(99,1,1,1),
(100,1,1,1);


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Payments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Payments` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Payments` (
  `idOrder` INT UNSIGNED NOT NULL,
  `datePayment` DATETIME NULL DEFAULT NULL,
  INDEX `fk_Payment_Orders1_idx` (`idOrder` ASC) VISIBLE,
  UNIQUE INDEX `idOrder_UNIQUE` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_Payment_Orders1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Apna_Mart`.`Orders` (`idOrder`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;
INSERT INTO Payments(idOrder, datePayment)
VALUES
(1,'2023-01-01'),
(2,'2023-01-02'),
(3,'2023-01-03'),
(4,'2023-01-03'),
(5,'2023-01-04'),
(6,'2023-01-05'),
(7,'2023-01-06'),
(8,'2023-01-07'),
(9,'2023-01-08'),
(10,'2023-01-09'),
(11,'2023-01-10'),
(12,'2023-01-11'),
(13,'2023-01-12'),
(14,'2023-01-13'),
(15,'2023-01-14'),
(16,'2023-01-15'),
(17,'2023-01-16'),
(18,'2023-01-17'),
(19,'2023-01-17'),
(20,'2023-01-18'),
(21,'2023-01-19'),
(22,'2023-01-20'),
(23,'2023-01-21'),
(24,'2023-01-25'),
(25,'2023-01-29'),
(26,'2023-01-26'),
(27,'2023-01-27'),
(28,'2023-01-28'),
(29,'2023-01-29'),
(30,'2023-01-31'),
(31,'2023-01-30'),
(32,'2023-01-31'),
(33,'2023-02-01'),
(34,'2023-02-02'),
(35,'2023-02-03'),
(36,'2023-02-02'),
(37,'2023-02-04'),
(38,'2023-02-05'),
(39,'2023-02-06'),
(40,'2023-02-07'),
(41,'2023-02-09'),
(42,'2023-02-08'),
(43,'2023-02-09'),
(44,'2023-02-10'),
(45,'2023-02-11'),
(46,'2023-02-12'),
(47,'2023-02-13'),
(48, '2023-02-14'),
(49, '2023-02-13'),
(50, '2023-02-14'),
(51, '2023-02-13'),
(52, '2023-02-16'),
(53, '2023-02-15'),
(54, '2023-02-16'),
(55, '2023-02-15'),
(56, '2023-02-18'),
(57, '2023-02-17'),
(58, '2023-02-19'),
(59, '2023-02-18'),
(60, '2023-02-20'),
(61, '2023-02-19'),
(62, '2023-02-21'),
(63, '2023-02-20'),
(64, '2023-02-22'),
(65, '2023-02-21'),
(66, '2023-02-23'),
(67, '2023-02-22'),
(68, '2023-02-24'),
(69, '2023-02-23'),
(70, '2023-02-25'),
(71, '2023-02-24'),
(72, '2023-02-26'),
(73, '2023-02-25'),
(74, '2023-02-27'),
(75, '2023-02-26'),
(76, '2023-02-28'),
(77, '2023-02-27'),
(78, '2023-03-01'),
(79,'2023-02-26'),
(80,'2023-02-26'),
(81,'2023-02-27'),
(82,'2023-02-28'),
(83,'2023-02-28'),
(84,'2023-03-01'),
(85,'2023-03-02'),
(86,'2023-03-02'),
(87,'2023-03-03'),
(88, '2023-03-06'),
(89, '2023-03-07'),
(90, '2023-03-08'),
(91, '2023-03-09'),
(92, '2023-03-10'),
(93, '2023-03-10'),
(94, '2023-03-11'),
(95, '2023-03-15'),
(96, '2023-03-13'),
(97, '2023-03-14'),
(98, '2023-03-14'),
(99, '2023-03-15'),
(100, '2023-03-18');

-- -----------------------------------------------------
-- Table `Apna_Mart`.`Voucher_Statuses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Voucher_Statuses` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Voucher_Statuses` (
  `idVoucher` INT UNSIGNED NOT NULL,
  `dateIssued` DATETIME NOT NULL,
  `dateUsed` DATETIME NULL DEFAULT NULL,
  `idOrder` INT UNSIGNED NULL DEFAULT NULL,
  INDEX `fk_Voucher Status_voucher1_idx` (`idVoucher` ASC) VISIBLE,
  PRIMARY KEY (`idVoucher`),
  INDEX `fk_Voucher_Statuses_Orders1_idx` (`idOrder` ASC) VISIBLE,
  UNIQUE INDEX `idOrder_UNIQUE` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_Voucher Status_voucher1`
    FOREIGN KEY (`idVoucher`)
    REFERENCES `Apna_Mart`.`Vouchers` (`idvoucher`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Voucher_Statuses_Orders1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Apna_Mart`.`Orders` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO Voucher_Statuses(idVoucher,dateIssued,dateUsed,idOrder)
VALUES
(1,'2023-01-01','2023-02-02',38),
(2,'2023-01-01',NULL,NULL),
(3,'2023-01-01','2023-02-12',50),
(4,'2023-01-01',NULL,NULL),
(5,'2023-01-01',NULL,NULL),
(6,'2023-01-01',NULL,NULL),
(7,'2023-01-01','2023-02-23',73),
(8,'2023-01-01',NULL,NULL),
(9,'2023-01-01',NULL,NULL),
(10,'2023-01-01',NULL,NULL),
(11,'2023-01-01',NULL,NULL),
(12,'2023-01-01','2023-01-12',13);

-- -----------------------------------------------------
-- Table `Apna_Mart`.`Notifications`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Notifications` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Notifications` (
  `idAdmin` INT UNSIGNED NULL DEFAULT NULL,
  `idProduct` INT UNSIGNED NULL DEFAULT NULL,
  `idCustomer` INT UNSIGNED NULL DEFAULT NULL,
  `idOrder` INT UNSIGNED NULL DEFAULT NULL,
  `idvoucher` INT UNSIGNED NULL,
  `Message` VARCHAR(500) NULL,
  INDEX `fk_Notifications_Admins1_idx` (`idAdmin` ASC) VISIBLE,
  INDEX `fk_Notifications_Products1_idx` (`idProduct` ASC) VISIBLE,
  INDEX `fk_Notifications_Customers1_idx` (`idCustomer` ASC) VISIBLE,
  INDEX `fk_Notifications_Orders1_idx` (`idOrder` ASC) VISIBLE,
  INDEX `fk_Notifications_Vouchers1_idx` (`idvoucher` ASC) VISIBLE,
  CONSTRAINT `fk_Notifications_Admins1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Notifications_Products1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `Apna_Mart`.`Products` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Notifications_Customers1`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `Apna_Mart`.`Customers` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Notifications_Orders1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Apna_Mart`.`Orders` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Notifications_Vouchers1`
    FOREIGN KEY (`idvoucher`)
    REFERENCES `Apna_Mart`.`Vouchers` (`idVoucher`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
