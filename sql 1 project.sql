-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            0) AS Total_sales
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id