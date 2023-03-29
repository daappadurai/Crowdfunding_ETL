# Crowdfunding_ETL

## **Purpose of the ETL project** 

The purpose of this project is to extract information from a large excel file, re-organize, drop incomplete values (clean) and divide the bigger excel file data into subset of data that are each loaded into a separate table in postgres-sql database, named Crowdfunding_db. The Crowdfunding_db has the following tables
- campaign (the original all inclusive data from the crowdfundiont.xls file)
- categories (category of crowdfunding event)
- subcategories (subcategory withing the crowdfunction category)
- contacts (a list of contact information for each crowdfunding event)
- backers (a list of backers for each crowdfunding event)

Finally two additional tables (listed below) are created for the purpose of emailing contacts and backers regarding the remaining goal amount for each crowdfunding event.
- email_contacts_remaining_goal_amount
- email_backers_remaining_goal_amount
