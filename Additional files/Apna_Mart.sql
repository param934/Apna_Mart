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


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Suppliers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Suppliers` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Suppliers` (
  `idSupplier` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameSupplier` VARCHAR(90) NOT NULL,
  `idAdmin` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idSupplier`),
  INDEX `fk_Supplier_Admin1_idx` (`idAdmin` ASC) VISIBLE,
  CONSTRAINT `fk_Supplier_Admin1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


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


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Vouchers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Vouchers` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Vouchers` (
  `idvoucher` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idAdmin` INT UNSIGNED NOT NULL,
  `idCustomer` INT UNSIGNED NOT NULL,
  `idProduct` INT UNSIGNED NOT NULL,
  `discount` DECIMAL(2,0) UNSIGNED NOT NULL,
  `expiry_date` DATETIME NOT NULL,
  PRIMARY KEY (`idvoucher`),
  INDEX `fk_Vouchers_Customer1_idx` (`idCustomer` ASC) VISIBLE,
  INDEX `fk_Vouchers_Admin1_idx` (`idAdmin` ASC) VISIBLE,
  INDEX `fk_Vouchers_Products1_idx` (`idProduct` ASC) VISIBLE,
  CONSTRAINT `fk_Vouchers_Admin1`
    FOREIGN KEY (`idAdmin`)
    REFERENCES `Apna_Mart`.`Admins` (`idAdmin`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vouchers_Customer1`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `Apna_Mart`.`Customers` (`idCustomer`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vouchers_Products1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `Apna_Mart`.`Products` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `Apna_Mart`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Apna_Mart`.`Orders` ;

CREATE TABLE IF NOT EXISTS `Apna_Mart`.`Orders` (
  `idOrder` INT UNSIGNED NOT NULL,
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


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
