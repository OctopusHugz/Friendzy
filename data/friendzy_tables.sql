-- creates the database friendzy_db and the tables states, cities,
-- users, interests

-- Drop database
DROP DATABASE IF EXISTS friendzy_dev_db;

-- Create database + user if doesn't exist
CREATE DATABASE IF NOT EXISTS friendzy_dev_db;
CREATE USER IF NOT EXISTS 'friendzy_dev'@'localhost';
SET PASSWORD FOR 'friendzy_dev'@'localhost' = 'friendzy_pwd';
GRANT ALL ON `friendzy_dev_db`.* TO 'friendzy_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'friendzy_dev'@'localhost';
FLUSH PRIVILEGES;

USE friendzy_dev_db;

DROP TABLE IF EXISTS states;
CREATE TABLE IF NOT EXISTS states (
    id varchar(60) PRIMARY KEY,
    name VARCHAR(128) NOT NULL
    );

DROP TABLE IF EXISTS cities;
CREATE TABLE IF NOT EXISTS cities (
    id varchar(60) PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    state_id VARCHAR(60) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states (id)
    );

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    id varchar(60) PRIMARY KEY,
    email varchar(128) NOT NULL,
    password varchar(128) NOT NULL,
    first_name varchar(128) DEFAULT NULL,
    last_name varchar(128) DEFAULT NULL
    );
INSERT INTO users VALUES ('28328ecf-43d8-4cc1-9405-d288c8f6ef3e', 'charlotte.lane@example.com', '1qaz2wsx', 'Charlotte', 'Lane'), ('34ac3690-02e3-409f-b433-38621f71ea7b', 'carl.boyd@example.com', 'mommy', 'Carl', 'Boyd'), ('5e3d29c9-9998-4325-acb4-0f677bd6863f', 'michael.ellis@example.com', 'aaaaa1', 'Michael', 'Ellis'), ('c75eff36-23b3-4950-9983-0b194f60e5d1', 'melvin.lawrence@example.com', 'cadillac', 'Melvin', 'Lawrence'), ('67408bca-3ae6-4655-bdec-69cb8c35be17', 'tony.washington@example.com', 'spread', 'Tony', 'Washington'), ('2fcccdba-23f3-4b53-a2c6-6d2e02edb408', 'nevaeh.holland@example.com', 'joker', 'Nevaeh', 'Holland'), ('35cb73ec-ec91-4e15-b160-ef757cf6ccac', 'paula.peck@example.com', 'metoo', 'Paula', 'Peck'), ('34dd41bd-4350-4542-ab93-1b92b2950edb', 'rosa.owens@example.com', 'mickey1', 'Rosa', 'Owens'), ('71dd73cb-6ad8-4591-970b-92dad73507af', 'tracey.silva@example.com', 'rrrrr', 'Tracey', 'Silva'), ('c3c304e3-83ec-4634-a6a0-875456008dca', 'erika.fields@example.com', 'sierra', 'Erika', 'Fields'), ('b566fea0-e0c0-4095-9b28-7c0f854c8ce7', 'timmothy.stanley@example.com', 'sawyer', 'Timmothy', 'Stanley'), ('1d716791-2535-40f4-92ac-a7b7f9fc5ea4', 'chester.cole@example.com', 'power', 'Chester', 'Cole'), ('259be2ed-739a-43bd-9957-cc7ceead5ed2', 'dale.allen@example.com', 'bondage', 'Dale', 'Allen'), ('13946cef-d9f1-4ed5-ba3c-fde1bcdc19b0', 'doris.kuhn@example.com', 'telefon', 'Doris', 'Kuhn'), ('a3177f34-0c6e-434d-ab27-d54003043853', 'cameron.castillo@example.com', 'weston', 'Cameron', 'Castillo'), ('865b559d-a1d2-45c4-8776-a46697b04f99', 'catherine.baker@example.com', 'rhythm', 'Catherine', 'Baker'), ('dba20f2b-3b6e-4881-835e-dc979242f7ae', 'sylvia.jackson@example.com', 'boob', 'Sylvia', 'Jackson'), ('6cc9ec79-2b94-4b05-b2a7-8dfa97d1d523', 'gavin.barnett@example.com', 'sausages', 'Gavin', 'Barnett'), ('713c1222-18a7-4853-bb2d-3e2b6befd4ab', 'alfred.hopkins@example.com', 'nt5d27', 'Alfred', 'Hopkins'), ('29c9c2ac-1bce-458d-a66e-7b7832d23022', 'brooklyn.wade@example.com', 'postman', 'Brooklyn', 'Wade'), ('48d1883a-7a29-4778-a8b2-fc764f98db27', 'sally.watson@example.com', 'silly', 'Sally', 'Watson'), ('19d8c148-9148-432d-8890-dc60c71fead2', 'tony.carroll@example.com', 'groups', 'Tony', 'Carroll'), ('ae7871d7-6341-4ca9-b445-3f6978e5ee60', 'serenity.reyes@example.com', 'dalejr', 'Serenity', 'Reyes'), ('2813229b-8f46-441f-934e-7f44282e89ab', 'jason.banks@example.com', 'nova', 'Jason', 'Banks'), ('0ed6501f-7f0a-4499-a269-50b2f82021d7', 'louella.bradley@example.com', 'honda1', 'Louella', 'Bradley'), ('1768a468-bcca-4b51-b802-2a61a7f072b6', 'stella.ray@example.com', 'republic', 'Stella', 'Ray'), ('7a70ebb7-c8de-40ee-b7ba-77531cd71b34', 'brent.cruz@example.com', 'vvvvv', 'Brent', 'Cruz'), ('f4e01f8a-15dc-4de9-8c45-b79814228945', 'rhonda.fuller@example.com', 'gabriela', 'Rhonda', 'Fuller'), ('81250f26-df9c-46d6-87e0-c34ad0a2bb44', 'allison.burton@example.com', 'syracuse', 'Allison', 'Burton'), ('d130880a-3092-4064-9b65-600820616fae', 'vera.watson@example.com', 'kenneth', 'Vera', 'Watson'), ('fe8be1ca-68df-4310-b14d-80972af9fe9b', 'terry.jacobs@example.com', 'webber', 'Terry', 'Jacobs'), ('dc15dab8-4e2e-42ed-bfc1-270a45ba99b4', 'noelle.james@example.com', 'melissa1', 'Noelle', 'James'), ('10a603f5-868d-4a3d-a98b-182d5fe778f2', 'theresa.wells@example.com', 'dolemite', 'Theresa', 'Wells'), ('adf08e01-f2d2-4ce5-99bc-e65c294fc494', 'penny.carlson@example.com', 'mickey1', 'Penny', 'Carlson'), ('dbf7d452-a30d-45d2-a245-6882e21b3d1f', 'ernest.griffin@example.com', 'wrestlin', 'Ernest', 'Griffin'), ('c95b5264-36bf-422a-ba57-07858809500f', 'christine.reid@example.com', 'freee', 'Christine', 'Reid'), ('0f211bef-82ed-4b44-891a-943e81960425', 'kaylee.fox@example.com', 'brasil', 'Kaylee', 'Fox'), ('7301879e-2846-42e7-bfb5-8ed8ed5b5be2', 'lance.butler@example.com', 'torpedo', 'Lance', 'Butler'), ('70df8023-da73-4d4e-ba48-2a7a0b1ab222', 'roberta.peters@example.com', 'darren', 'Roberta', 'Peters'), ('b23f2734-3a0e-43ce-a38d-1e916288163f', 'mia.watts@example.com', 'awesome', 'Mia', 'Watts'), ('587087df-771e-4512-b767-e10cf7301119', 'jim.matthews@example.com', 'lighter', 'Jim', 'Matthews'), ('3cbc789b-4aeb-4e3b-9de1-9615b549bc2e', 'ben.gray@example.com', 'spank', 'Ben', 'Gray'), ('794f9c11-b8cb-44ea-8584-e764b6ac9100', 'debbie.fowler@example.com', 'star', 'Debbie', 'Fowler'), ('26041d01-3dc5-4146-b59e-155fdd609eec', 'alex.hansen@example.com', 'fright', 'Alex', 'Hansen'), ('3d652fd5-68c9-45c2-851c-8c4283af4726', 'ricky.nelson@example.com', 'naruto', 'Ricky', 'Nelson'), ('477d6473-cd7f-4e58-80b1-7c1e10a28036', 'grace.butler@example.com', 'carol', 'Grace', 'Butler'), ('ec4091f8-e01c-4f4a-8204-c396b6eeb664', 'edna.kuhn@example.com', 'makaveli', 'Edna', 'Kuhn'), ('3f5cfb53-69f2-46b5-ba9a-8fae9b26883a', 'riley.carroll@example.com', 'rudy', 'Riley', 'Carroll'), ('6a5cd98b-60c9-4eb7-8f64-466b1035ff81', 'zack.daniels@example.com', 'disco', 'Zack', 'Daniels'), ('bfce10c2-9b78-4265-bceb-4e7026583323', 'alma.burns@example.com', '2580', 'Alma', 'Burns');

DROP TABLE IF EXISTS interests;
CREATE TABLE interests (
    id Integer PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(128) NOT NULL
    );
