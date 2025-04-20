{% docs _mart_00_local_bike__all_tables2 %}

This model provides an aggregated view of orders items, combining data from multiple sources such as order, product, brand, catégories, staff, customer and store.
It includes information about products sold, quantities, pricing, discounts, as well as staff and store details associated with each order.
The table aggregates sales data at the product level and joins it with store and customer data to provide a detailed overview of product sales, including:

- Customer name and contact information
- Store and staff details
- Product details (including brand and category)
- Total sales amount, including discounts

It enriches the order data with the following metrics:

- **customer_id**: Unique identifier for the customer making the order.
- **customer_name**: Full name of the customer.
- **order_id**: Unique identifier for the order.
- **sold_amount**: The total sales amount for the order after discount, calculated as `quantity * discounted_price`.
- **store_id**: Unique identifier for the store where the order was placed.
- **staff_name**: Full name of the staff member who processed the order.
- **item_quantity**: Quantity of the product ordered.
- **product_id**: Unique identifier for the product ordered.
- **brand_id**: Unique identifier for the brand of the product.
- **brand_name**: Name of the brand of the product.
- **category_id**: Unique identifier for the product category.
- **category_name**: Name of the product category.
- **order_date**: Date when the order was placed.
- **shipped_date**: Date when the order was shipped.

It provides a comprehensive view of each order.

{% enddocs %}