CREATE DEFINER=`root`@`localhost` PROCEDURE `test`(in num1 int)
BEGIN
declare var varchar(100);
set var="Hello";
if num1>0
then
select "positive";
else
select "negative";
end if;
END