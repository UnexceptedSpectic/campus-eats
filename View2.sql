/* Creating a view by joining the tables restaurant and restaurant_rating to get restaurant names 
which have avg rating of taste and freshness combined above 7.5 threshold*/
DROP VIEW IF EXISTS `Restaurant_with_Good_Avg_Rating`;
CREATE VIEW `Restaurant_with_Good_Avg_Rating` AS
Select `restaurant`.`restaurant_name`, (`restaurant_rating`.`taste_rating` + `restaurant_rating`.`freshness_rating`)/2 AS Avg_Rating
FROM `restaurant` 
Join `restaurant_rating` 
On `restaurant`.`restaurant_id` = `restaurant_rating`.`restaurant_id`
Having Avg_rating >= 7.5
Order by `restaurant`.`restaurant_name`;
