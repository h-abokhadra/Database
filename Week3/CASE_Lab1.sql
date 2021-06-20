SELECT prod_id, cust_id, channel_id,
  CASE channel_id
      WHEN 1
          THEN 'Channel 1'
      WHEN 2
          THEN 'Channel 2'
      WHEN 3 
          THEN 'Channel 3'
  END AS "Channel"
 FROM sh.sales
WHERE ROWNUM < 100;