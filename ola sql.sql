CREATE DATABASE ola;
USE OLA;
SELECT * FROM bookings;
#1. Retrieve all successful_bookings
create view successful_booking as
select * from bookings
where Booking_Status ='Success';
#Retrieve all successful_bookings
select*from successful_booking ;

#2. Find the average ride distance for each vehicle type:
create view ride_distance As
select Vehicle_Type,avg(Ride_Distance) as avg_ride
from bookings
group by Vehicle_Type;
#Find the average ride distance for each vehicle type:
select* from ride_distance;

#3. Get the total number of cancelled rides by customers:
create view cancelled_rides as 
select count(*)
from bookings
where Booking_Status='Canceled by Customer';
#Get the total number of cancelled rides by customers:
select * from cancelled_rides;

#4. List the top 5 customers who booked the highest number of rides:
create view highest_booked as
select Customer_ID,count(Booking_ID) as most_book
from bookings 
group by Customer_ID
order by most_book desc limit 5;
#List the top 5 customers who booked the highest number of rides:
select* from highest_booked;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view cancelled_by_drivers As 
select count(*)
from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';
#Get the number of rides cancelled by drivers due to personal and car-related issues:
select *from cancelled_by_drivers;


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view min_max_rating as
select min(Driver_Ratings) as min_rating, max(Driver_Ratings) as max_rating
from bookings
where Vehicle_Type ='Prime Sedan';
#Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from min_max_rating ;


#7. Retrieve all rides where payment was made using UPI:
create view upi_payment as
select * 
from bookings
where Payment_Method ='UPI';
#Retrieve all rides where payment was made using UPI:
select * from upi_payment;

#8. Find the average customer rating per vehicle type:
create view avg_customer as
select Vehicle_Type, avg(Customer_Rating) as avg_rating
from bookings 
group by Vehicle_Type;

#Find the average customer rating per vehicle type:
select *from avg_customer;


# 9. Calculate the total booking value of rides completed successfully:
create view booking_value as 
select sum(Booking_Value) as total_booking
from bookings 
where Booking_Status ='success';

#Calculate the total booking value of rides completed successfully:


#10. List all incomplete rides along with the reason:
select Booking_ID, Incomplete_Rides_Reason 
from bookings 
where Incomplete_Rides ='yes';