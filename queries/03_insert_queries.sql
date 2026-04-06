-- ============================================
-- Hilton Honors Database - Insert Transactions
-- IT222 Database Principles Project
-- ============================================

-- 1. The guest enters their ID, name, phone, and email
INSERT INTO "CUSTOMER" ("NAME", "PHONE", "EMAIL")
VALUES ('New Guest', '0551112222', 'newguest@email.com');

-- 2. The guest enters the check-in and check-out dates (create a reservation)
INSERT INTO "RESERVATION" ("CHECK_INDATE", "CHECK_OUT_DATE", "TOTALPRICE", "CUSTOMER_ID", "ROOM_NUMBER", "EMPLOYEE_ID")
VALUES (DATE '2025-07-01', DATE '2025-07-05', 2000, 1, 2, 1);

COMMIT;
