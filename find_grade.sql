CREATE DEFINER=`root`@`localhost` PROCEDURE `find_grade`(in mark int)
BEGIN
declare grade varchar(100);
if mark>=90
then
set grade="A";
elseif mark>=80
then
set grade="B";
elseif mark>=70
then
set grade="C";
elseif mark>=60
then
set grade="D";
else
set grade="Failed";
end if;
select grade;
END