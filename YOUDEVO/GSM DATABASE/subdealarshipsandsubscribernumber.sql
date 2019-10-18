SELECT regional_dealerships.region_name,COUNT(sub_dealerships.id)AS sub_dealerships_number,COUNT (subscribers.id) AS subscriber_number
FROM ((regional_dealerships LEFT JOIN sub_dealerships
ON regional_dealerships.id=sub_dealerships.regional_dealerships_id)LEFT JOIN subscribers ON subscribers.subscriber_dealership_id=sub_dealerships.id)
GROUP BY region_name;