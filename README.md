# Airbnb Riga listings dataset analysis
This project is dedicated to analyzing Airbnb listings and reviews data from [Inside Airbnb](http://insideairbnb.com/get-the-data/).
### Data:
- reviews.csv (listings info, hosts info)
- listings.csv (listings reviews)

## Tasks:
1. Get data for owners with the dirtiest apartemnts
2. Get data for owners with the highest amount of listings
3. Get listings with highest revenue

## Task 1 (top20_dirty_owners)  

This query gets us 20 names, urls for hosts having mosts amount complaints for dirtiness. This information allows us to offer cleaning services for listed owners.  
  
![top20_dirty](https://i.imgur.com/6wolf0B.png)

## Task 2 (top20_revenue)   

There are a lot of profitable listings. This query gets us 20 highest earning listings. Most of the listings are luxury appartments or villas.
  
![top20_revenue](https://i.imgur.com/nsX76dG.png)
  
## Task 3 (top_owners_listings)
  
Some Airbnb hosts have multiple listings. A host may list separate rooms in the same apartment, or multiple apartments or homes available in their entirity. Hosts with multiple listings are more likely to be running a business, are unlikely to be living in the property, and in violation of most short term rental laws designed to protect residential housing.  
This query shows urls, names, total listings per host, revenue for  us 20 top owners with the highest amounts of listings.

![top_owners_listings](https://i.imgur.com/7v14QEv.png)