reviews = LOAD 's3://amazon-reviews-pds/tsv/*' AS (marketplace:chararray,customer_id:chararray,review_id:chararray,product_id:chararray,product_parent:chararray,product_title:chararray,product_category:chararray,star_rating:int,helpful_votes:int,total_votes:int,vine:chararray,verified_purchase:chararray,review_headline:chararray,review_body:chararray, review_date:chararray);
filtered_reviews = FILTER reviews BY (SIZE(review_body) >= 100) AND (total_votes >= 30) AND (verified_purchase == 'Y');
grouped_reviews = GROUP filtered_reviews BY product_category;
avg_rating = FOREACH grouped_reviews GENERATE group, AVG(filtered_reviews.star_rating) AS avg;
ordered_avg_rating = ORDER avg_rating BY avg DESC, group ASC;
top_15_avg_rating = LIMIT ordered_avg_rating 15;
STORE top_15_avg_rating INTO 's3://alfred-kctang/output-big/' USING PigStorage ('\t');
