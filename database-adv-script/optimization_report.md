# Query Optimization Report

## Initial Query
The initial query retrieved all bookings along with full user, property, and payment details.  
While it returned correct results, it pulled unnecessary columns (`users.email`, `properties.location`) that increased query cost.

## Performance Analysis
We ran `EXPLAIN` on the query:
- **Bookings table** required a full scan.
- **Users, Properties, and Payments tables** used `ALL` scan instead of indexes.
- The joins were not optimized.

## Optimization
1. Reduced unnecessary columns to only those required (`user_name`, `property_name`, `amount`, `status`).
2. Ensured indexes exist on join keys:
   - `bookings.user_id`
   - `bookings.property_id`
   - `payments.booking_id`
   - `users.id`
   - `properties.id`

## Refactored Query
The refactored query uses fewer columns and leverages indexes, which reduced execution time significantly as seen in the `EXPLAIN` plan.

## Conclusion
By limiting selected columns and applying proper indexes, query performance improved from full table scans to efficient indexed lookups.

