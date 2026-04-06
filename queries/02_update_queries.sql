-- ============================================
-- Hilton Honors Database - Update/Delete Transactions
-- IT222 Database Principles Project
-- ============================================

-- 1. Update the phone number of a guest
UPDATE "CUSTOMER"
SET "PHONE" = '0559999999'
WHERE "CUSTOMER_ID" = 1;

-- 2. Update reservation dates (reschedule)
UPDATE "RESERVATION"
SET "CHECK_INDATE" = DATE '2025-02-10',
    "CHECK_OUT_DATE" = DATE '2025-02-15'
WHERE "RESERVATION_ID" = 1;

-- 3. Delete a reservation (cancel)
DELETE FROM "RESERVATION"
WHERE "RESERVATION_ID" = 1;

COMMIT;
