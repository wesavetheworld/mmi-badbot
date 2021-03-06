-------------------------------------------------------
-- Table `mmi_badbots`
-------------------------------------------------------
-- DROP TABLE IF EXISTS `mmi_badbots`;

CREATE TABLE IF NOT EXISTS `mmi_badbots` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `ip` VARCHAR(15) NOT NULL ,
  `method` VARCHAR(8) NOT NULL DEFAULT 'GET' ,
  `protocol` VARCHAR(8) NOT NULL DEFAULT 'HTTP/1.1' ,
  `ua` VARCHAR(255) NOT NULL DEFAULT 'unknown' ,
  `visits` INT(11) UNSIGNED NOT NULL DEFAULT 1 ,
  `allow` TINYINT(1)  NOT NULL DEFAULT 0 ,
  `date_created` INT(11) UNSIGNED NOT NULL ,
  `date_updated` INT(11) UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `IDX_ip` (`ip` ASC) )
ENGINE = MyISAM;