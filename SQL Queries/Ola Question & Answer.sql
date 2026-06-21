/*1. Retrieve all successful bookings:*/
CREATE VIEW successful_bookings AS
SELECT * FROM BOOKINGS
WHERE BOOKING_STATUS="SUCCESS";
SELECT * FROM bookings;
	
/*2. Find the average ride distance for each vehicle type:*/
CREATE VIEW average_ride_distance_for_each_vehicle_type AS 
SELECT VEHICLE_TYPE, AVG(RIDE_DISTANCE) AS AVG_RIDE_DISTANCE
FROM BOOKINGS
GROUP BY VEHICLE_TYPE;

/*3. Get the total number of cancelled rides by customers:*/
CREATE VIEW RIDE_CANCELLED_BY_CUSTOMERS AS
SELECT COUNT(*) FROM BOOKINGS 
WHERE BOOKING_STATUS="CANCELED BY CUSTOMER";

/*4. List the top 5 customers who booked the highest number of rides:*/
CREATE VIEW TOP_5_CUSTOMER AS
SELECT CUSTOMER_ID,COUNT(Booking_ID) as HIGHEST_BOOKED
FROM BOOKINGS
GROUP BY CUSTOMER_ID
ORDER BY HIGHEST_BOOKED desc LIMIT 5;

/*5. Get the number of rides cancelled by drivers due to personal and car-related issues:*/
CREATE VIEW RIDES_CANCELLED_BY_DRIVER AS
SELECT COUNT(*) FROM bookings
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';	

/*6. Find the maximum and minimum driver ratings for Prime Sedan bookings:*/
CREATE VIEW MIN_MAX_DRIVER_RATING AS
select max(Driver_Ratings) as max_driver_rating,
		min(Driver_Ratings) as min_driver_rating
from bookings
where vehicle_Type = 'Prime Sedan';

/*7. Retrieve all rides where payment was made using UPI:*/
CREATE VIEW UPI_PAYMENTS AS
select * from bookings
where Payment_Method = 'UPI';

/*8. Find the average customer rating per vehicle type:*/
CREATE VIEW AVG_CUSTOMER_RATING_PER_VEHICLE AS
select Vehicle_Type,avg(Customer_Rating) as Avg_Rating 
from bookings 
group by Vehicle_Type ;

/*9. Calculate the total booking value of rides completed successfully:*/
CREATE VIEW RIDES_COMPLETE_SUCCESSFULLY AS
select sum(Booking_Value) as Total_booking
from bookings
where Booking_Status = 'Success';

/*10. List all incomplete rides along with the reason:*/
CREATE VIEW INCOMPLETE_RIDES_REASON AS
SELECT  BOOKING_ID, INCOMPLETE_RIDES_REASON 
FROM BOOKINGS
WHERE INCOMPLETE_RIDES = 'YES';
