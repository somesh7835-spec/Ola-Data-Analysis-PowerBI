/*1. Retrieve all successful bookings:*/
SELECT * FROM successful_bookings;
	
/*2. Find the average ride distance for each vehicle type:*/
SELECT * FROM average_ride_distance_for_each_vehicle_type;

/*3. Get the total number of cancelled rides by customers:*/
SELECT * FROM RIDE_CANCELLED_BY_CUSTOMERS;

/*4. List the top 5 customers who booked the highest number of rides:*/
SELECT * FROM TOP_5_CUSTOMER;

/*5. Get the number of rides cancelled by drivers due to personal and car-related issues:*/
SELECT * FROM RIDES_CANCELLED_BY_DRIVER;

/*6. Find the maximum and minimum driver ratings for Prime Sedan bookings:*/
SELECT * FROM MIN_MAX_DRIVER_RATING;

/*7. Retrieve all rides where payment was made using UPI:*/
SELECT * FROM UPI_PAYMENTS;

/*8. Find the average customer rating per vehicle type:*/
SELECT * FROM AVG_CUSTOMER_RATING_PER_VEHICLE;

/*9. Calculate the total booking value of rides completed successfully:*/
SELECT * FROM RIDES_COMPLETE_SUCCESSFULLY;

/*10. List all incomplete rides along with the reason:*/
SELECT * FROM INCOMPLETE_RIDES_REASON;