SELECT reservations.id AS id, reservations.start_date AS start_date, properties.cost_per_night AS cost_per_night, properties.title AS title, AVG(property_reviews.rating)
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, reservations.start_date, properties.cost_per_night, properties.title
ORDER BY start_date ASC
LIMIT 10;