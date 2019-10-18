SELECT top 2 subscriber_web.number_of_entries AS subscriber_id,subscribers.*,tariff.tariff_name,subscriber_web.number_of_entries AS web_number_of_entries
FROM subscribers,subscriber_web,tariff
WHERE subscriber_id=subscriber_web.subscriber_id and tariff.id=subscribers.subscriber__recipe_id
ORDER BY subscriber_web.number_of_entries DESC