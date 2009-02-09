SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE `mainegate`;

CREATE  TABLE IF NOT EXISTS `mainegate`.`tbl_users_games` (
  `user_id` INT(11) NOT NULL ,
  `game_id` INT(11) NOT NULL ,
  `date` DATE NOT NULL ,
  `selection` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`user_id`) ,
  INDEX `FK_users_usergames` (`user_id` ASC) ,
  INDEX `FK_games_usergames` (`game_id` ASC) ,
  CONSTRAINT `FK_users_usergames`
    FOREIGN KEY (`user_id` )
    REFERENCES `mainegate`.`tbl_users` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_games_usergames`
    FOREIGN KEY (`game_id` )
    REFERENCES `mainegate`.`game_info` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;