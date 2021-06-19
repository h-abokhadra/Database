SELECT c.campusname,r.roomid,r.roomtype,r.campusid,c.campusid
from Campus c FULL OUTER JOIN room r
ON c.campusid=r.campusid
-------------
SELECT c.campusname,r.roomtype,r.campusid
from Campus c , room r
where c.campusid=r.campusid
-------------
SELECT c.campusname,r.roomid,r.roomtype,r.campusid,c.campusid
from Campus c LEFT OUTER JOIN room r
ON c.campusid=r.campusid
--------------------------------
SELECT c.campusname,r.roomid,r.roomtype,r.campusid,c.campusid
from Campus c RIGHT OUTER JOIN room r
ON c.campusid=r.campusid
order by r.roomid DESC