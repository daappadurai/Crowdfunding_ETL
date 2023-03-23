-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT cf_id ,
	COUNT(backer_id)
FROM backer_count
WHERE(outcome ='live')
GROUP BY cf_id
ORDER BY COUNT(backer_id) DESC;



-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT cf_id ,
	COUNT(backer_id)
FROM backers
GROUP BY cf_id
ORDER BY COUNT(backer_id) DESC;
-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order.
SELECT t.first_name, 
    t.last_name,
    t.email,
	c.remaining_goal_amount
INTO remaining_goal_amount
FROM contacts as t
LEFT JOIN campaign as c
on t.contact_id = c.contact_id
where(c.outcome ='live')

-- Check the table
select * from remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT t.first_name, 
    t.last_name,
    t.email,
	c.remaining_goal_amount
INTO email_contacts_remaining_goal_amount
FROM contacts as t
LEFT JOIN campaign as c
on t.contact_id = c.contact_id
where(c.outcome ='live')
order by c.remaining_goal_amount desc



-- Check the table
select * from email_contacts_remaining_goal_amount

--create email_backers_remaining_goal_amount
select b.email,
	b.first_name,
	b.last_name,
	b.cf_id,
	c.company_name,
	c.description,
	c.end_date,
	c.left_of_goal
into email_backers_remaining_goal_amount
from campaign as c
left join backer_count as b
on b.cf_id = c.cf_id
--check the table
select * from email_backers_remaining_goal_amount


