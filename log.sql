CREATE PROCEDURE `logentry/exit` ()
BEGIN
if(isin)then 

update kiosk
set isin = false
where ID = x;

else

 update kiosk
 set isin = true
 where ID = x;
 
end if;
END
