###### **Which product categories drive the most revenue and margin?**



SELECT

&#x09;category,

&#x09;ROUND (SUM (revenue)::numeric, 2) AS total\_revenue,

&#x09;ROUND((SUM(gross\_profit) \* 100.0 / SUM(revenue))::numeric, 1) AS margin\_pct,

&#x09;COUNT(\*) AS total\_orders

FROM orders

GROUP BY category

ORDER BY total\_revenue DESC;



###### **What does the month-over-month sales trend look like in 2023 vs 2024?**



SELECT

&#x20;   order\_month,

&#x20;   COUNT(\*) AS total\_orders,

&#x20;   ROUND(SUM(revenue)::numeric, 2) AS total\_revenue

FROM orders

GROUP BY order\_month

ORDER BY order\_month;



###### **Which acquisition channels bring the most valuable customers?**



SELECT

&#x09;acquisition\_channel,

&#x09;COUNT(\*) AS total\_orders,

&#x09;ROUND (SUM(revenue)::numeric, 2) AS total\_revenue,

&#x09;ROUND(SUM(revenue)::numeric / COUNT(\*), 2) AS avg\_order\_value

FROM orders

GROUP BY acquisition\_channel

ORDER BY total\_revenue  DESC;



###### **What is the cancellation rate by product category?**



SELECT

&#x20;   category,

&#x20;   SUM(CASE WHEN order\_status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled\_orders,

&#x20;   ROUND(SUM(CASE WHEN order\_status = 'Cancelled' THEN 1 ELSE 0 END) \* 100.0 / COUNT(\*), 1) AS cancellation\_rate\_pct,

&#x09;COUNT(\*) AS total\_orders

FROM orders

GROUP BY category

ORDER BY cancellation\_rate\_pct DESC;





###### **Who are our most valuable customers? (new vs returning)**



SELECT

&#x09;CASE WHEN is\_returning\_customer THEN 'Returning' ELSE 'New' END AS customer\_segment,

&#x09;ROUND(SUM(revenue)::numeric, 2) AS total\_revenue,

&#x09;ROUND (AVG(revenue)::numeric, 2) AS avg\_revenue,

&#x09;COUNT(\*) AS total\_orders

FROM orders

GROUP BY is\_returning\_customer;



###### **Which countries generate the most revenue and how does order value differ?**



SELECT

&#x09;country,

&#x09;ROUND (SUM(revenue)::numeric, 2) AS total\_revenue,

&#x09;ROUND(SUM(revenue)::numeric / COUNT(\*), 2) AS avg\_order\_value,

&#x09;COUNT(\*) AS total\_orders

FROM orders

GROUP BY country

ORDER BY total\_revenue DESC;

