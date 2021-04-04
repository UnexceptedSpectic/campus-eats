/* Creating a view to find the count of drop_off_locations that gave the different promptness_ratings for drivers */
DROP VIEW IF EXISTS `Drop_off_location_and_promptness_rating`;
CREATE VIEW `Drop_off_location_and_promptness_rating` AS
Select `driver_rating`.`promptness_rating`, COUNT(`location`.`drop_off_point`) AS Count_of_drop_off_locations
From `driver_rating`
Join `restaurant`
On `driver_rating`.`restaurant_id` = `restaurant`.`restaurant_id`
Join `order`
On `restaurant`.`restaurant_id` = `order`.`restaurant_id`
Join `location`
On `order`.`location_id` = `location`.`location_id`
Group by `driver_rating`.`promptness_rating`
Order by `driver_rating`.`promptness_rating`;