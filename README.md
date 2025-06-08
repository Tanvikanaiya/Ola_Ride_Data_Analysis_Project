#  Ola Ride Data Analysis Project

##  Power BI Dashboard & SQL Insights

This project focuses on analyzing Ola ride booking data to identify key trends in booking success, ride cancellations, customer behavior, and vehicle performance. It combines SQL for data processing and Power BI for interactive visualization.

---

##  Project Objective

To derive actionable insights from Ola's ride booking data using a combination of SQL and Power BI. The goal is to uncover booking patterns, optimize vehicle usage, and reduce ride cancellations through visual storytelling and data exploration.

---

##  Tools & Technologies

- **SQL (MySQL)** – Data querying, cleaning, and view creation
- **Power BI** – Dashboard design and data visualization
- **DAX (Data Analysis Expressions)** – For custom KPIs and calculations

---

##  Dataset Overview

The dataset includes detailed information about ride bookings with the following fields:

- `Booking_ID`, `Date`, `Time`, `Customer_ID`
- `Vehicle_Type`, `Pickup_Location`, `Drop_Location`
- `Booking_Status`, `Canceled_Rides_by_Customer`, `Canceled_Rides_by_Driver`
- `V_TAT`, `C_TAT`, `Incomplete_Rides`, `Incomplete_Rides_Reason`
- `Booking_Value`, `Payment_Method`, `Ride_distance`
- `Ride_Ratings`, `Customer_Ratings`, `Vehicle_Images`

---

##  Key SQL Operations

- **View 1**: Successful bookings
- **View 2**: Average ride distance per vehicle type
- **View 3**: Total cancelled rides by customers
- **View 4**: Top 5 customers by booking volume
- **View 5**: Cancellations by drivers (personal and vehicle issues)

These queries helped in shaping the KPIs and visuals used in the dashboard.

---

##  Power BI Dashboard Features

- **KPIs**:
  - Total Bookings
  - Success Rate
  - Cancellation Rate
  - Average Ride Value

- **Visuals**:
  - Booking status trends over time
  - Ride distance comparison by vehicle type
  -  Booking cancellation 
  - Customer and ride rating analysis
  - Top customers by bookings

- **Slicers**:
  - Date range
  - Vehicle type
  - Booking status
  - Payment method

  Ola-Dashboard-Analysis/

📁 images/
### 1. Overall Performance

- **Total Bookings:** 71,201  
- **Total Booking Value:** ₹24M  
- **Success Rate:** 62.18%  
- **Cancellations & Issues:**
  - By Driver: 17.88%
  - By Customer: 10.13%
  - Driver Not Found: 9.81%

![Image](https://github.com/user-attachments/assets/84144cf1-3a1b-47e1-b639-98b0a2f0a3a4)

### 2. Vehicle Type Analysis

Key insights into different vehicle types such as Prime Sedan, SUV, Mini, Auto, Bike, and E-Bike.

| Vehicle Type | Total Booking Value | Avg Distance (km) |
|--------------|----------------------|-------------------|
| Prime Sedan  | ₹5.76M              | 24.87             |
| E-Bike       | ₹5.67M              | 25.05             |
| Bike         | ₹5.54M              | 25.08             |
| Auto         | ₹5.54M              | 10.05             |

![Image](https://github.com/user-attachments/assets/134d0387-6517-45b3-a502-889997ddf716)


### 3. Revenue & Ride Distance

- **Top Payment Method:** Cash  
- **Top 5 Customers by Booking Value:** CID933539, CID635848, etc.  
- **Daily Distance Travelled:** ~30K - 40K km  

![Image](https://github.com/user-attachments/assets/73a85a9f-4318-401b-a8b6-12ca97f44c50)


---
### 4. Cancellations & Booking Failures
- Top Cancellation Reason by Customer: Driver is not moving toward location (29.96%)
- Top Cancellation Reason by Driver: Personal & Car related issue (34.95%)
- Total Cancelled Bookings: 19,942 (27.99% of total bookings)
- Success Rate: 62.18%
 ![Image](https://github.com/user-attachments/assets/0bc78e26-1a33-425d-85bf-ad9ca9f684a9)


---
### 5. Ride Ratings
- Top Rated Vehicle by Drivers: Prime SUV & E-Bike – 4.01
- Top Rated Vehicle by Customers: Prime Plus – 4.01
- Lowest Rated by Drivers: Bike – 3.98
- Lowest Rated by Customers: Bike & E-Bike – 3.99
- Most Consistent Ratings: Auto & Mini – 4.00 by both Drivers and Customers
  ![Image](https://github.com/user-attachments/assets/e316fbee-11bb-42dc-8a2b-59f18884defe)

  ---
##  Key Insights

- A significant number of **cancellations are customer-driven**, often influenced by pickup time or location.
- **Sedans and SUVs** generate higher average revenues and are preferred for longer trips.
- **Prepaid rides** show a higher success rate than cash payments.
- **Top 5 loyal customers** contribute a noticeable portion of bookings.
- **Long vehicle turnaround times** correlate with incomplete or cancelled rides.

---

##  Conclusion

This project provides a data-driven view of Ola's ride operations. The dashboard can assist decision-makers in:

- Reducing ride cancellations
- Enhancing customer experience
- Optimizing vehicle usage
- Understanding payment trends

---

##  Future Improvements

- Real-time data streaming and live dashboard updates
- Predictive modeling to forecast cancellations or demand
- Enhanced location-based analytics using geospatial tools

---

## Files Included

- `Ola-data-analysis-project.sql` – SQL script for data preprocessing and views
- `Ola dashboard.pbix` – Power BI dashboard file

---

## Author

**Tanvi Kanaiya**  
Aspiring Data Scientist | Power BI Enthusiast  
📧 [kanaiyatanvi@gmail.com](mailto:kanaiyatanvi@gmail.com)

---

> ⭐ *Feel free to fork or star this project if you found it helpful!*
