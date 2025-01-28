# TV Shows Database

My databse takes some of my favorite tv shows and the lead actors from them and connects them to each other and to emmy awards those actors and shows have won. 

Here is the shcema that I made for my database.

![Image](/Users/ellieclark/Documents/CS452/cs452/aisql/schema.png)

You can see other examples and my code in the aisql file. 

## Response it did well on

My question was "Which tv shows have the most awarded actors?" and it gave this sql and friendly response: 

### SQL
```sql
SELECT s.title, COUNT(ae.emmy_id) AS emmy_count
FROM show s
JOIN show_actor sa ON s.show_id = sa.show_id
JOIN actor_emmys ae ON sa.actor_id = ae.actor_id
GROUP BY s.show_id
ORDER BY emmy_count DESC
LIMIT 1;
```
### Query Response
"[('The West Wing', 5)]"

### Friendly Response
"The West Wing" with 5 awarded actors.

#### Why I thought this did well
This gave me some clean sql with two join statements that correctly interpreted not only that the west wing had the most awarded actors, but also caught that there were 5 awards between the two actors for the West wing in the database.

## Response it did not do well on

My question was: "Which tv shows have lead actors with a large age gap?" but not only did it give the wrong answer, but it then continued trying to answer this question when I asked the next one which was "What genre of tv shows are the most awarded?"

### SQL
```sql
SELECT s.title, a1.first_name AS first_lead_name, a1.last_name AS first_lead_last_name, a2.first_name AS second_lead_name, a2.last_name AS second_lead_last_name, ABS(JULIANDAY(a1.birthDay) - JULIANDAY(a2.birthDay)) / 365 AS age_gap_years
FROM show_actor sa1
JOIN show_actor sa2 ON sa1.show_id = sa2.show_id AND sa1.actor_id < sa2.actor_id
JOIN show s ON sa1.show_id = s.show_id
JOIN actor a1 ON sa1.actor_id = a1.actor_id
JOIN actor a2 ON sa2.actor_id = a2.actor_id
WHERE ABS(JULIANDAY(a1.birthDay) - JULIANDAY(a2.birthDay)) / 365 >= 10;
```

### Query Response
"[('The Good Place', 'Ted', 'Danson', 'Kristen', 'Bell', 32.57534246575342), ('Brooklyn Nine-Nine', 'Amy', 'Poehler', 'Melissa', 'Fumero', 10.931506849315069), ('The West Wing', 'Martin', 'Sheen', 'Allison', 'Janney', 19.306849315068494)]"

### Friendly Response
"Certainly! Some TV shows with lead actors having a noticeable age gap include "The Good Place" with Ted Danson and Kristen Bell, "Brooklyn Nine-Nine" with Amy Poehler and Melissa Fumero, and "The West Wing" with Martin Sheen and Allison Janney.

#### Why I thought this response did not do well
This response is incorrect because I asked for only the *largest* age gap, and it also paired two actresses who were not in the same show. It also caused issues with my next question, throwing an error ""near \"ite\": syntax error"" and just answering the previous question again. 

## Strategies
It may be because I had some errors in my double shot code, my double shot responses threw more errors and were more often incorrect. Three of my questions caused "you can only execute one statement at a time" errors and ended up just trying to answer the question previous to them. 

The first question "Which are the most awarded actors?" actually gave me a response that had nothing to do with my database at all which was confusing because it gave sql that had to do with my database, but then the friendly response included actors that were not in the database. 

That being said, I got a correct response for the age gap question in the double shot as opposed to the single domain query, and those that did not throw errors (minus the first one) all gave correct answers. 

Overall I think if I was able to go through and find the error that was causing multiple statements to execute at a time and fix it the double shot would have performed better, as long as I *also* clarified in the question that I only wanted to pull the response from the database. For these reasons, the single domain queries were more reliable. 