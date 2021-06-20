
/* using UNION ALL */
SELECT cust_id, cust_first_name, cust_last_name
  FROM sh.customers
 WHERE cust_id in (101, 102, 103)
 UNION ALL
SELECT cust_id, cust_first_name, cust_last_name
  FROM sh.customers
 WHERE cust_id in (103, 104, 105);