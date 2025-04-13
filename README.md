 🛒 eCommerce Sales Data Analysis using MySQL

Welcome to my SQL-based data analysis project where I dive deep into **sales trends, customer behavior, product performance, and order insights** using a self-created **eCommerce database**. This project was developed as part of my Data Analyst internship to simulate real-world retail data problems and solve them through SQL.

---

📦 Dataset: `ecommerce_big`

This project revolves around a mock **eCommerce platform** database that closely resembles platforms like **Amazon**, **Flipkart**, or **Shopify**. The database includes 4 core tables:

| Table Name     | Description                                      |
|----------------|--------------------------------------------------|
| `customers`    | Contains customer details like name and email    |
| `products`     | Product catalog with names, categories, and price|
| `orders`       | Transaction data including order dates and IDs   |
| `order_items`  | Line items of each order: quantity & product info|

📷 Screenshots showing the structure of these tables can be found in the `screenshots/` folder.

---

⚙️ Technologies Used

- **MySQL Workbench** – SQL Querying and database creation  
- **SQL (DDL + DML + Queries)** – Data definition and data manipulation  
- **Windows 11** – Local development environment

---

 🎯 Objectives

The core aim of this project was to:
- Understand how relational databases work in an eCommerce context
- Perform data extraction, transformation, and analysis via SQL
- Gain practical experience with real-world business scenarios

---

 🔍 Key Analytical Tasks

Each SQL file addresses a key eCommerce metric or analysis scenario, such as:

- 📈 **Top-selling products**
- 👥 **Repeat customers**
- 💸 **Total revenue by date/category**
- 📦 **Average items per order**
- 🕵️‍♂️ **Customer insights**

These were done using advanced SQL techniques like:
- `JOINs`
- `GROUP BY`
- `HAVING`, `WHERE`
- Subqueries & Nested Selects
- Aggregate functions (`SUM`, `COUNT`, `AVG`)

---

🧠 Business Insights Extracted

A few real-world learnings simulated from this dataset:

1. **High-value customers** contribute to a large chunk of sales — supporting Pareto’s 80/20 rule.
2. Certain products consistently outperform in terms of both units sold and revenue — useful for inventory planning.
3. **Order quantity patterns** indicate bulk purchasing behavior during specific periods (e.g., festive seasons).

---

 📝 Files in this Repo

| File Name              | Description                                     |
|------------------------|-------------------------------------------------|
| `task3_queries.sql`    | All SQL queries written during the analysis     |
| `README.md`            | Project overview and context                    |
| `screenshots/`         | MySQL Workbench screenshots for submission      |

---

📌 Notes

- The database was manually built using raw SQL (DDL + DML) to simulate a real-world eCommerce schema.
- All screenshots are included to validate the structure and execution of each query.
- The project assumes **one order can have multiple items** (i.e., 1-to-many relationship between `orders` and `order_items`).

---

👨‍💻 Author

Somya Sinha
Aspiring Data Analyst | SQL Enthusiast | Excel & Power BI Learner

🔗 www.linkedin.com/in/somyasinha100 
📧 somyasinha615@gmail.com

---

> 💬 “Data is the new oil. SQL is the engine that refines it.”  
> – Inspired by real-world analysts building smarter ecommerce systems
