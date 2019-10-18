SELECT subscribers.*,(bills.minute_amount*tariff.tariff_minute_bills+bills.sms_amount*tariff.tariff_sms_bills) AS odenecekfatura
FROM subscribers,tariff,bills
WHERE subscribers.subscriber__recipe_id IN
(SELECT tariff.id FROM tariff WHERE tariff.tariff_name='ZOOM' and tariff.tariff_minute_bills=0.5 and tariff.tariff_sms_bills=0.5)and subscribers.subscriber__recipe_id=tariff.id  and bills.subscribers_id=subscribers.id
