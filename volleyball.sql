-- create schemas
CREATE SCHEMA Volleyball;
-- go
CREATE TABLE Volleyball.Team (
	Team_id INT  PRIMARY KEY,
	Team_name VARCHAR (255) NOT NULL,
    Coach VARCHAR (255) NOT NULL,
    Home_city VARCHAR (255) NOT NULL
);
CREATE TABLE Volleyball.Player (
	Player_id INT  PRIMARY KEY,
	Player_name VARCHAR (255) NOT NULL,
    Position VARCHAR (255) NOT NULL,
    Team_id INT,
    FOREIGN KEY (Team_id) REFERENCES Volleyball.Team (Team_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Volleyball.Results (
	Match_id INT  PRIMARY KEY,
    Match_name VARCHAR (255) NOT NULL,
	Match_date date NOT NULL,
    Score VARCHAR (255) NOT NULL,
    Winning_Team_id INT NOT NULL,
    Losing_Team_id INT NOT NULL,
    FOREIGN KEY (Winning_Team_id) REFERENCES Volleyball.Team (Team_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Losing_Team_id) REFERENCES Volleyball.Team (Team_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Volleyball.rank (
	Rank_id INT  PRIMARY KEY,
	Total_Score VARCHAR (255) NOT NULL,
    Team_id INT,
    FOREIGN KEY (Team_id) REFERENCES Volleyball.Team (Team_id) ON DELETE CASCADE ON UPDATE CASCADE
);

set Foreign_Key_Checks = 0 ;
INSERT INTO `volleyball`.`team` (`Team_id`, `Team_name`, `Coach`, `Home_city`) 
VALUES ('1', 'China', 'Cai Bin', 'China');
INSERT INTO `volleyball`.`team` (`Team_id`, `Team_name`, `Coach`, `Home_city`) 
VALUES ('2', 'Brazil', 'Za Roberto', 'Brazil');
INSERT INTO `volleyball`.`team` (`Team_id`, `Team_name`, `Coach`, `Home_city`) 
VALUES ('3', 'Italy', 'Julio Velasco', ' Italy');
INSERT INTO `volleyball`.`team` (`Team_id`, `Team_name`, `Coach`, `Home_city`) 
VALUES ('4', 'Japan', 'Masayoshi', 'Japen');
INSERT INTO `volleyball`.`team` (`Team_id`, `Team_name`, `Coach`, `Home_city`) 
VALUES ('5', 'Canada', 'Sannon Windsor', 'Canada');
INSERT INTO `volleyball`.`team` (`Team_id`, `Team_name`, `Coach`, `Home_city`) 
VALUES ('6', 'Poland', 'Stefano Lavarini', 'Poland');

INSERT INTO `volleyball`.`rank` (`Rank_id`, `Total_Score`, `Team_id`) 
VALUES ('1', '34', '2');
INSERT INTO `volleyball`.`rank` (`Rank_id`, `Total_Score`, `Team_id`) 
VALUES ('2', '31', '3');
INSERT INTO `volleyball`.`rank` (`Rank_id`, `Total_Score`, `Team_id`) 
VALUES ('3', '30', '6');
INSERT INTO `volleyball`.`rank` (`Rank_id`, `Total_Score`, `Team_id`) 
VALUES ('4', '26', '1');
INSERT INTO `volleyball`.`rank` (`Rank_id`, `Total_Score`, `Team_id`) 
VALUES ('5', '25', '4');
INSERT INTO `volleyball`.`rank` (`Rank_id`, `Total_Score`, `Team_id`) 
VALUES ('6', '22', '5');
UPDATE `volleyball`.`rank` SET `Team_id` = '5' WHERE (`Rank_id` = '3');
UPDATE `volleyball`.`rank` SET `Team_id` = '6' WHERE (`Rank_id` = '6');


INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('1', 'Yuan Xinyue', 'MB', '1');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('2', 'Zhu Ting', 'OH', '1');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('3', 'Diao Linyu', 'ST', '1');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('4', 'Gao Yi', 'MB', '1');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('5', 'Gong Xiangyu', 'OP', '1');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('6', 'Wang Yuanyuan', 'MB', '1');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('7', 'Carol Gattaz', 'MB', '2');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('8', 'Júlia Kudiess', 'OH', '2');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('9', 'Ana Carolina da Silva', 'ST', '2');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('10', 'Priscila Daroit', 'MB', '2');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('11', 'Nyeme Costa', 'OP', '2');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('12', 'Rosamaria Montibeller', 'MB', '2');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('13', 'Marina Lubian', 'MB', '3');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('14', 'Alice Degradi', 'OH', '3');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('15', 'Carlotta Cambi', 'ST', '3');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) 
VALUES ('16', 'Ilaria Spirito', 'L', '3');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('17', 'Monica De Gennaro', 'L', '3');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('18', 'Alessia Orro', 'ST', '3');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('19', 'Koyomi Iwasaki', 'ST', '4');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('20', 'Kotona Hayashi', 'OH', '4');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('21', '	Sarina Kog', 'OH', '4');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('22', 'Mayu Ishikawa', 'OH', '4');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('23', 'Nanami Seki', 'ST', '4');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('24', 'Manami Kojima', 'L', '4');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('25', 'Kiera Van Ryk', 'MB', '5');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('26', 'Vicky Savard', 'OH', '5');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('27', 'Julia Murmann', 'ST', '5');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('28', 'Jazmine White', 'OP', '5');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('29', 'Alicia Ogoms', 'MB', '5');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('30', 'Alexa Lea Gray', 'OH', '5');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('31', 'Julia Nowicka', 'ST', '6');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('32', 'Marta Wójcik	', 'ST', '6');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('33', 'Klaudia Alagierska', 'MB', '6');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('34', 'Kamila Witkowska', 'MB', '6');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('35', 'Agnieszka Korneluk', 'MB', '6');
INSERT INTO `volleyball`.`player` (`Player_id`, `Player_name`, `Position`, `Team_id`) VALUES ('36', 'Martyna Łukasik', 'OS', '6');

INSERT INTO `volleyball`.`results` (`Match_id`, `Match_name`, `Match_date`, `Score`, `Winning_Team_id`, `Losing_Team_id`) VALUES ('1', 'First China Brazil', '2024-05-16', '3-1', '2', '1');
INSERT INTO `volleyball`.`results` (`Match_id`, `Match_name`, `Match_date`, `Score`, `Winning_Team_id`, `Losing_Team_id`) VALUES ('2', 'First Italy Japan', '2024-05-18', '3-0', '3', '4');
INSERT INTO `volleyball`.`results` (`Match_id`, `Match_name`, `Match_date`, `Score`, `Winning_Team_id`, `Losing_Team_id`) VALUES ('3', 'First Canada Poland', '2024-05-19', '3-1', '5', '6');
INSERT INTO `volleyball`.`results` (`Match_id`, `Match_name`, `Match_date`, `Score`, `Winning_Team_id`, `Losing_Team_id`) VALUES ('4', 'Second Brazil Italy', '2024-05-28', '3-1', '2', '3');
INSERT INTO `volleyball`.`results` (`Match_id`, `Match_name`, `Match_date`, `Score`, `Winning_Team_id`, `Losing_Team_id`) VALUES ('5', 'Second Brazil Canada', '2024-05-30', '3-0', '2', '5');
INSERT INTO `volleyball`.`results` (`Match_id`, `Match_name`, `Match_date`, `Score`, `Winning_Team_id`, `Losing_Team_id`) VALUES ('6', 'Second Italy Canada', '2024-06-01', '3-1', '3', '5');


