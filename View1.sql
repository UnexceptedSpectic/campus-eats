/* Creating a view to get order descriptions and total prices of restaurants with freshness rating 
below avg and schedule 9am- 10pm */
DROP VIEW IF EXISTS `Order_with_freshness_rating_below_avg`;
CREATE VIEW `Orders_with_freshness_rating_below_avg` AS
Select `order`.`order_description`, `restaurant`.`schedule`,`order`.`total_price`, `restaurant_rating`.`freshness_rating`
From `order` 
Join `restaurant` 
On `order`.`restaurant_id` = `restaurant`.`restaurant_id`
Join `restaurant_rating`
On `restaurant`.`restaurant_id` = `restaurant_rating`.`restaurant_id`
WHERE `restaurant_rating`.`freshness_rating` <= (SELECT AVG(`restaurant_rating`.`freshness_rating`) From `restaurant_rating`)
AND `restaurant`.`schedule` = '9am -10pm'
Order by `restaurant_rating`.`freshness_rating` DESC;
