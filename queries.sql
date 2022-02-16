create table wall (
  id serial primary key,
  username varchar(20), 
  clue11 varchar(15) not null, 
  clue12 varchar(15) not null, 
  clue13 varchar(15) not null, 
  clue14 varchar(15) not null, 
  connection1 varchar(30) not null,
  clue21 varchar(15) not null, 
  clue22 varchar(15) not null, 
  clue23 varchar(15) not null, 
  clue24 varchar(15) not null, 
  connection2 varchar(30) not null,
  clue31 varchar(15) not null, 
  clue32 varchar(15) not null, 
  clue33 varchar(15) not null, 
  clue34 varchar(15) not null, 
  connection3 varchar(30) not null,
  clue41 varchar(15) not null, 
  clue42 varchar(15) not null, 
  clue43 varchar(15) not null, 
  clue44 varchar(15) not null, 
  connection4 varchar(30) not null,
  submit_time timestamp default current_timestamp);

insert into wall (username,
    clue11,
    clue12,
    clue13,
    clue14,
    connection1,
    clue21,
    clue22,
    clue23,
    clue24,
    connection2,
    clue31,
    clue32,
    clue33,
    clue34,
    connection3,
    clue41,
    clue42,
    clue43,
    clue44,
    connection4) 
values ('jram95','Ginger', 'Crumb', 'Sporty', 'Entwine', 'Hidden alcohols','Twist', 'Weave','Tangle','Lace','Synonym for twist', 'Mersey','Wye','Dee','Trent','UK rivers','Smith', 'Tennant','Eccleston','Whittaker','Doctor Who actors');