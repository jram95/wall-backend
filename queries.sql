create table wall (
  id serial primary key,
  user varchar(20), 
  clue1 varchar(15) not null, 
  clue2 varchar(15) not null, 
  clue3 varchar(15) not null, 
  clue4 varchar(15) not null, 
  connection varchar(30) not null,
  explanation varchar(255) not null,
  submit_time timestamp default current_timestamp);

insert into wall (clue1, clue2, clue3, clue4, connection, explanation) 
values ('Ginger', 'Crumb', 'Sporty', 'Entwine', 'alcohol', 'They contain alcoholic beverage names within them'), 
('Twist', 'Weave','Tangle','Lace','synonym twist, weave, tangle, lace, entwine', 'They are all synonyms for each other to mean tangle or weave'),
('Mersey','Wye','Dee','Trent','rivers','Rivers in the UK'),
('Craig', 'Connery','Moore','Dalton','James Bond actors','Surnames of actors who played James Bond');