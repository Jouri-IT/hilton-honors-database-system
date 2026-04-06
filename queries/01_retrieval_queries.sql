-- ============================================
-- Hilton Honors Database - Retrieval Queries
-- IT222 Database Principles Project
-- ============================================

-- =====================
-- Without Condition
-- =====================

-- 1. List all rooms
SELECT * FROM "ROOM";

-- 2. List the number of my reservations
SELECT COUNT(*) AS "Total_Reservations"
FROM "RESERVATION"
WHERE "CUSTOMER_ID" = 1;

-- 3. List all rooms ordered by price from lowest to highest
SELECT * FROM "ROOM"
ORDER BY "PRICE" ASC;

-- =====================
-- With Condition
-- =====================

-- 4. List all rooms of type 'Suite'
SELECT * FROM "ROOM"
WHERE "TYPE" = 'Suite';

-- 5. List rooms with prices less than 1000
SELECT * FROM "ROOM"
WHERE "PRICE" < 1000;

-- 6. List my reservations for a specific room type and price range
--    Example: reservations for "Deluxe" rooms with total price between 500 and 1000
SELECT R."RESERVATION_ID", R."CHECK_INDATE", R."CHECK_OUT_DATE", R."TOTALPRICE",
       RM."TYPE", RM."PRICE"
FROM "RESERVATION" R
JOIN "ROOM" RM ON R."ROOM_NUMBER" = RM."ROOM_NUMBER"
WHERE R."CUSTOMER_ID" = 1
  AND RM."TYPE" = 'Deluxe'
  AND R."TOTALPRICE" BETWEEN 500 AND 1000;

-- 7. List my reservations between specific dates
SELECT * FROM "RESERVATION"
WHERE "CUSTOMER_ID" = 1
  AND "CHECK_INDATE" >= DATE '2025-01-01'
  AND "CHECK_OUT_DATE" <= DATE '2025-06-30';

-- 8. List all available rooms for a given date range
SELECT RM.* FROM "ROOM" RM
WHERE RM."STATUS" = 'available'
  AND RM."ROOM_NUMBER" NOT IN (
      SELECT R."ROOM_NUMBER" FROM "RESERVATION" R
      WHERE R."CHECK_INDATE" <= DATE '2025-03-14'
        AND R."CHECK_OUT_DATE" >= DATE '2025-03-10'
  );

-- 9. List my reservations handled by a specific employee and within a total price range
--    Example: reservations processed by employee "Ali Ahmed" with total prices between 300 and 800
SELECT R.*, E."NAME" AS "Employee_Name"
FROM "RESERVATION" R
JOIN "EMPLOYEE" E ON R."EMPLOYEE_ID" = E."EMPLOYEE_ID"
WHERE R."CUSTOMER_ID" = 1
  AND E."NAME" = 'Ali Ahmed'
  AND R."TOTALPRICE" BETWEEN 300 AND 800;

-- 10. List my reservations with a count greater than 1
SELECT "CUSTOMER_ID", COUNT(*) AS "Reservation_Count"
FROM "RESERVATION"
GROUP BY "CUSTOMER_ID"
HAVING COUNT(*) > 1;

-- 11. List rooms with prices greater than average
SELECT * FROM "ROOM"
WHERE "PRICE" > (SELECT AVG("PRICE") FROM "ROOM");
