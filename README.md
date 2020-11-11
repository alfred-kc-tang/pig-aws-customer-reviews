# Analysing Amazon Customer Reviews using Pig on AWS

This project aims at tracking down which product categories have the highest average star rating in the customer reviews on Amazon Customer Reviews. Specifically, the top 15 product categories will be spotted. By doing so, only reviews with (1) considerable lengths (i.e. 100 characters or longer), (2) significant number of votes (30 or above) and (3) verified purchases are considered, in order to reach a trustworthy and reliable results.

## Table of Contents

* [Data Source](#data-source)
* [Keywords](#keywords)
* [License](#license) 

## Data Source

The data contain over 130 million customer reviews from Amazon Customer Reviews. The data file is approximately of size 32 GB stored as a tab-separated-values (tsv) file. Due to its giant size, it is stored on AWS S3 storage, and thus being accessed on AWS using the Pig script. A sample dataset is given [here](https://github.com/alfred-kctang/pig-aws-customer-reviews/blob/master/sample.tsv) for reference. Each line in the data file has the following information: (1) marketplace (in terms of region), (2) customer id, (3) review_id, (4) product_id, (5) product_parent, (6) product_title, (7) product_category, (8) star_rating, (9) helpful_votes, (10) total_votes, (11) vine, (12) verified_purchase, (13) review_headline, (14) review_body, (15) review_date. For more details, please go to [this website](https://registry.opendata.aws/amazon-reviews/).

## Keywords

Amazon Web Services (AWS); Apache Pig; Pig Latin.

## License

This repository is covered under the [MIT License](https://github.com/alfred-kctang/pig-aws-customer-reviews/blob/master/LICENSE).
