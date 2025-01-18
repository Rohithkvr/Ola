#Development of the visualisation using power bi is developing

A Ride-Sharing Data Analysis Project
Overview
This project analyzes ride-sharing data from OLA, focusing on booking patterns, customer behavior, vehicle preferences, and service performance metrics. The analysis is performed using SQL for data querying and Power BI for visualization (development in progress).
Dataset Structure
The dataset contains 100,000 rows of ride-sharing data from Bengaluru city, including the following key information:

Booking details (ID, status, date, time)
Customer information
Vehicle types (Auto, Prime Plus, Prime Sedan, Mini, Bike, eBike, Prime SUV)
Location data (50 areas in Bangalore)
Ride metrics (distance, value, ratings)
Cancellation and incomplete ride information

Key Data Parameters

Overall booking success rate: 62%
Customer cancellation rate: < 7%
Driver cancellation rate: < 18%
Incomplete rides: < 6%
Order value distribution:

Under 500: 70%
500-1000: 28%
Above 1000: 2%



Analysis Components
SQL Analysis
Implemented views and queries for:

Successful bookings tracking
Vehicle-wise ride distance analysis
Cancellation analysis
Customer booking patterns
Driver performance metrics
Payment method analysis
Rating analysis
Revenue calculations

Power BI Dashboard (In Development)
Currently developing visualizations for:

Temporal Analysis

Ride volume trends
Daily distance distribution


Performance Metrics

Booking status breakdown
Vehicle type performance


Revenue Analysis

Payment method distribution
Top customer analysis
Revenue patterns


Service Quality

Cancellation reason analysis
Driver and customer ratings
Rating correlations



Project Structure
Copy├── sql/
│   ├── create_views.sql
│   ├── analysis_queries.sql
│   └── retrieve_data.sql
├── powerbi/
│   └── dashboard.pbix (In Development)
└── data/
    └── ola_bookings.csv
Getting Started
Prerequisites

MySQL Server
Power BI Desktop
Python (for data generation)

Database Setup
sqlCopyCREATE DATABASE Ola;
USE Ola;
-- Run the create_views.sql script to set up all views
Current Status

✅ SQL Analysis Complete
🚧 Power BI Development (In Progress)

Basic visualizations implemented
Advanced analytics in development
Dashboard refinement ongoing



Future Enhancements

Integration of weather data for correlation analysis
Implementation of predictive analytics
Real-time dashboard updates
Advanced geographical analysis
