select * from Bike


--IN GENERAL--
select AVG(Income) as "Average Customers Income",COUNT(ID) as "Number Of Customers" 
from bike

select MAX(Income) as "Maximum Income",MIN(Income) as "Minimum Income"
from Bike


--Number Of Customers By Gender.
select Gender,COUNT(ID) as "Number Of Customers"
from Bike
group by Gender



--Number Of Customers For Each Age Bracket.
select Age_Bracket,COUNT(ID) as "Number Of Customers"
from Bike
group by Age_Bracket



--Number Of Customers By Gender And Age Brackets.
select Gender,Age_Bracket,COUNT(ID) as "Number Of Customers"
from Bike
group by Gender,Age_Bracket
order by Age_Bracket



--Number Of Customer By Gender And Marital Status.
select [Marital Status],Gender,COUNT(ID) as "Number Of Customers"
from Bike
group by [Marital Status],Gender
order by Gender



--Number Of Customers Who Purchased Bike Or Not.
select [Purchased Bike],COUNT(ID) as "Number Of Customers"
from Bike
group by [Purchased Bike]



--Number Of Customers By Gender And Their Purchase Of Bikes.
select Gender,[Purchased Bike],COUNT(ID) as "Number Of Customers"
from Bike
group by Gender,[Purchased Bike]



--Average Income For Customers Who Purchased Bike Or Not.
select [Purchased Bike],AVG(Income) as "Average Income For Each Group"
from Bike
group by [Purchased Bike]
order by "Average Income For Each Group"



--Average Age Of Our Customers In Relation To Their Purchase Of Bikes.
select [Purchased Bike],AVG(Age) as "Average Age"
from Bike
group by [Purchased Bike]



--Number Of Customers For Each Age Bracket And Their Purchase Of Bikes.
select Age_Bracket,[Purchased Bike],COUNT(ID) as "Number Of Customers"
from Bike
group by Age_Bracket,[Purchased Bike]
order by Age_Bracket



--Number Of Customers In Relation Between Marital Status And Purchased Of Bike.
select [Marital Status],[Purchased Bike],COUNT(ID) as "Number Of Customers"
from Bike
group by [Marital Status],[Purchased Bike]




--Show The Most And Least Occupation Between Customers And Average Income For Them.
select Occupation,AVG(Income) as "Average Income",COUNT(ID) as "Number Of Customers"
from Bike
group by Occupation
order by "Average Income" desc



--Relation Between Occupation And Purchase Bike And Average Income For Each Category.
select Occupation,[Purchased Bike],AVG(Income) as "Average Income",COUNT(ID) as "Number Of Customers"
from Bike
group by Occupation,[Purchased Bike]
order by Occupation



--Number Of Customers And Average Income By Cars And Home Owner.
select [Home Owner],car_owner,AVG(Income) as "Average Income",COUNT(ID) as "Number Of Customers"
from Bike
group by [Home Owner],car_owner
order by [Home Owner]



--Number Of Customers In Relation To Home Owner And Purchased Bike.
select [Home Owner],[Purchased Bike],COUNT(ID)
from Bike
group by [Purchased Bike],[Home Owner]
order by [Home Owner],[Purchased Bike]


--Number Of Customers In Relation To Car Owner And Purchased Bike.
select Car_Owner,[Purchased Bike],COUNT(ID) as "Number Of Customers"
from Bike
group by [Purchased Bike],Car_Owner
order by [Purchased Bike],Car_Owner



--The Most And Least Commute Distance Exists Between Customers.
select [Commute Distance],COUNT(ID) as "Number Of Customers"
from Bike
group by [Commute Distance]
order by [Number Of Customers] desc



--Relation Between Commute Distance And Purchased Bike And The Impact Of Owner's Car On This.
select [Commute Distance],car_owner,[Purchased Bike],COUNT(ID) as "Number Of Customers"
from Bike
group by [Commute Distance],car_owner,[Purchased Bike]
order by [Commute Distance]

--Number Of Customers In Each Region.
select Region,COUNT(ID) as "Number Of Customers" 
from Bike
group by Region
order by [Number Of Customers] desc


--Relation Between Region And Purchased Bike.
select Region,[Purchased Bike],COUNT(ID) as "Number Of Customers" 
from Bike
group by Region,[Purchased Bike]
order by [Number Of Customers] desc

--Number Of Children For Customers.
select Children,count(ID) as "Number Of Customers"
from Bike
group by Children
order by Children


--Relation Between Owning Children And Purchased Bike.
select Children,[Purchased Bike],Count(ID) as "Number Of Customers"
from Bike
group by Children,[Purchased Bike]
order by Children


--The Most Education Exists Between Our Customers.
select Education,count(id) as "Number Of Customers" 
from Bike
group by Education
order by Education desc

--Relation Between Education And Purchased Bike.
select Education,[Purchased Bike],Count(ID) as "Number Of Customers"
from Bike
group by Education,[Purchased Bike]
order by Education



--Impact Of Occupation And Distance On Purcahisng Process
select Occupation,[Commute Distance],[Purchased Bike],count(ID) as "Number Of Customers"
from Bike
group by Occupation,[Commute Distance],[Purchased Bike]
order by Occupation