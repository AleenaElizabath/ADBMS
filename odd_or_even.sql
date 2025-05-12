CREATE DEFINER=`root`@`localhost` PROCEDURE `odd_or_even`(in num int)
BEGIN
if num%2<=>0
then
select "even";
else
select "odd";
end if;
END