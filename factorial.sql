CREATE DEFINER=`root`@`localhost` PROCEDURE `factorial`(in num int)
BEGIN
declare fact int;
set fact=1;
while(num>0)
do
set fact=fact*num;
set num=num-1;
end while;
select fact;
END