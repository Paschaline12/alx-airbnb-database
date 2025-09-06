# SQL Joins Queries

This directory contains SQL queries demonstrating different types of joins:

1. **INNER JOIN** – Retrieve all bookings and the respective users who made those bookings.
2. **LEFT JOIN** – Retrieve all properties and their reviews, including properties with no reviews.
3. **FULL OUTER JOIN** – Retrieve all users and all bookings, even if a user has no booking or a booking is not linked to a user.

File: `joins_queries.sql`
## Subqueries

This file (`subqueries.sql`) contains examples of both correlated and non-correlated subqueries:

1. **Non-Correlated Subquery** – Find all properties where the average rating is greater than 4.0.
2. **Correlated Subquery** – Find all users who have made more than 3 bookings.

## Aggregations and Window Functions

This file (`aggregations_and_window_functions.sql`) contains queries that demonstrate:

1. **Aggregation with GROUP BY** – Find the total number of bookings made by each user.
2. **Window Function (RANK)** – Rank properties based on the total number of bookings they have received.

