/*create database kiosk;*/
use kiosk;
DROP TABLE IF EXISTS allstudents;
DROP TABLE IF EXISTS timelogs;

create table allstudents(ID int not null unique,
                        personname tinytext, 
                        grade tinyint,
                        seniorPriv tinyint, 
                       /* Photo Image, */
                        isIn bit default null,
                        Primary key (ID)
                        ); 

create  table timelogs(ID int not null default 0,
                 timein datetime,
                 timeout datetime default now(),
                 isIn bit default 0,
                 FOREIGN KEY (ID) REFERENCES allstudents(ID)
                 );
                 
/*int x = /*IDintake*/

/*update kiosk;
set isIn = 0;
where ID = x;

if(select isin from students) then

update logs
set timein  = now();
where ID = x;

end if;*/