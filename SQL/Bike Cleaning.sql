select * from Bike
where ID is null

with cte_duplicate as(
select *,ROW_NUMBER() over( partition by id order by id) as RowNum
from Bike
)
select * from cte_duplicate
where RowNum>1


with cte_duplicate as(
select *,ROW_NUMBER() over( partition by id order by id) as RowNum
from Bike
)
delete from cte_duplicate
where RowNum>1

select distinct [Marital Status] from Bike

select distinct [Gender] from Bike

select distinct Children from Bike

select distinct Education from Bike

select distinct Occupation from bike 

select distinct [Home Owner] from bike 

select distinct Cars from bike 

select distinct [Commute Distance] from bike 

select distinct Region from bike 

select distinct [Purchased Bike] from Bike

select age from Bike

update Bike
set [Marital Status]=REPLACE([Marital Status],'S','Single')

update Bike
set [Marital Status]=REPLACE([Marital Status],'M','Married')

update Bike
set [Gender]=REPLACE([Gender],'FeMaleale','Female')

update Bike
set [Gender]=REPLACE([Gender],'M','Male')


update Bike
set [Commute Distance]=replace([Commute Distance],'10+ Miles','More Than 10 MIles')


alter table Bike
add Age_Bracket varchar(255)

select min(Age),max(Age) from Bike
select age,age_bracket from Bike
order by age

update bike
set Age_Bracket=case
  when Age between 0 and 12 then 'Young'
  when Age between 13 and 19 then 'Teenagers'
  when Age between 20 and 35 then 'Youth'
  when Age between 36 and 55 then 'Adult'
  else 'Old People'
  end


alter table Bike
add Car_Owner varchar(255)

select distinct cars from Bike

update bike
set Car_Owner=case
  when Cars=0 then 'No Car'
  when Cars=1 then 'One Car'
  else 'More Than One'
  end