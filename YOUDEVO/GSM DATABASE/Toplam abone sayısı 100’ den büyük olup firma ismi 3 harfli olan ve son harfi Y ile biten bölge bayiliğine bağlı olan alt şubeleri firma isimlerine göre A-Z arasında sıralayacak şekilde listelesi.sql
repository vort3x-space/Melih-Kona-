SELECT * FROM sub_dealerships JOIN regional_dealerships ON sub_dealerships.regional_dealerships_id=regional_dealerships_id WHERE regional_dealerships_id IN

(SELECT regional_dealerships_id
FROM ((regional_dealerships 
INNER JOIN sub_dealerships ON regional_dealerships_id = sub_dealerships.regional_dealerships_id and regional_dealerships.region_name LIKE '__c%')
INNER JOIN subscribers ON sub_dealerships.id=subscribers.subscriber_dealership_id)
GROUP BY regional_dealerships_id
HAVING COUNT(sub_dealerships.regional_dealerships_id)>1 )
ORDER BY sub_region_name ASC
;
