SELECT subscribers.*,tariff.tariff_name
FROM subscribers,tariff
WHERE subscribers.id = ANY (SELECT bills.subscribers_id
FROM bills
WHERE bills.minute_amount= ANY (SELECT MAX(bills.minute_amount) FROM bills )) and subscribers.subscriber__recipe_id=tariff.id;