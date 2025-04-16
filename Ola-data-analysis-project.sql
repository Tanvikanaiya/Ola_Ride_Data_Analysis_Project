create database ola;
use ola;
CREATE TABLE ola.Bookings (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(255),
    Booking_Status VARCHAR(255),
    Customer_ID VARCHAR(255),
    Vehicle_Type TEXT,
    Pickup_Location TEXT,
    Drop_Location TEXT,
    V_TAT INT,
    C_TAT INT,
    Canceled_Rides_by_Customer TEXT,
    Canceled_Rides_by_Driver TEXT,
    Incomplete_Rides TEXT,
    Incomplete_Rides_Reason TEXT,
    Booking_Value INT,
    Payment_Method TEXT,
    Ride_distance INT,
    Ride_Ratings FLOAT,
    Customer_Ratings FLOAT,
    Vehicle_Images TEXT
);


#select count(Customer_ID) from ola.bookings;
 
 #1. Retrieve all successful bookings:
 create view Successfull_Bookings As
 select * from ola.bookings
 where Booking_Status = "Success";
 
 #2. Find the average ride distance for each vehicle type:
 create view Avg_distance_ride as
 select  Vehicle_Type, avg(ride_distance) 
 as avg_distance from ola.bookings
 group by Vehicle_Type;
 
 #3. Get the total number of cancelled rides by customers
 create view total_number_of_cancelled_rides_by_customer as
 select count(Canceled_Rides_by_Customer) from ola.bookings;
 

 #4. List the top 5 customers who booked the highest number of rides:
 create view highest_number_of_ride_by_customer as
 select  customer_id,count(booking_id) As total_rides
 from  ola.bookings
 group by customer_id
 order by total_rides desc limit 5;
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view rides_cancelled_by_drivers as
SELECT COUNT(*) AS Cancelled_Rides_Count
FROM ola.bookings
WHERE Canceled_Rides_by_Driver LIKE '%personal%' 
   OR Canceled_Rides_by_Driver LIKE '%car%';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create view max_min_ratings_prime_sedan as
select max(Driver_Ratings) as max_ratings,
min(Driver_Ratings) as min_ratings
from ola.bookings where Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
create view ride_payment_UPI as
select * from bookings
where Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:
create view avg_customer_rating as
select Vehicle_Type , avg(Customer_Ratings) as avg_coustomer_ratings
from ola.bookings
group by Vehicle_Type; 

#9. Calculate the total booking value of rides completed successfully:
create view total_booking_value as 
select sum(Booking_Value) as Total_booking_value
from ola.bookings
where Booking_Status = 'Success';

#10. List all incomplete rides along with the reason
create view incomplete_rides_with_reasons as
select Booking_ID , Incomplete_Rides_Reason
from ola.bookings
where Incomplete_Rides = 'Yes';



## SUMMARY
#1. Retrieve all successful bookings:
 Select view Successfull_Bookings;
 
 #2. Find the average ride distance for each vehicle type:
Select view Avg_distance_ride; 

#3. Get the total number of cancelled rides by customers
 select view total_number_of_cancelled_rides_by_customer;
 
 #4. List the top 5 customers who booked the highest number of rides:
 select view highest_number_of_ride_by_customer;
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select view rides_cancelled_by_drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select view max_min_ratings_prime_sedan;

#7. Retrieve all rides where payment was made using UPI:
select view ride_payment_UPI ;

#8. Find the average customer rating per vehicle type:
select view avg_customer_rating ;

#9. Calculate the total booking value of rides completed successfully:
select view total_booking_value ;

#10. List all incomplete rides along with the reason
select view incomplete_rides_with_reasons;




 








