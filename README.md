
# 📊 Retail Analytics System

This project demonstrates key SQL skills using a simulated retail business database. It includes realistic data and a collection of analytical queries.

---

## 🛠️ Requirements

- MySQL installed locally (e.g., MySQL 8.x)
- MySQL client access from terminal or a code editor like **VSCode**
- Basic familiarity with SQL and MySQL CLI or GUI tools

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/loveleen1saini/retail-analytics-system.git
cd retail-analytics-system
```

### 2. Create and Use the Database
Start your MySQL CLI or use an SQL IDE like VSCode, and run:
```sql
CREATE DATABASE retail;
USE retail;
```

### 3. Import the Schema and Sample Data

#### Option A: Using Command Line
```bash
mysql -u your_username -p retail < retail_schema.sql
mysql -u your_username -p retail < retail_data.sql
```

#### Option B: Using VSCode (SQL Tools Extension)
- Open `retail_schema.sql` and run it
- Open `retail_data.sql` and run it

---

## 📂 Files Included

| File               | Description                                    |
|--------------------|------------------------------------------------|
| `retail_schema.sql`| Creates tables and indexes                     |
| `retail_data.sql`  | Inserts sample data into the tables            |
| `retail_queries.sql`| Analytical queries to explore the dataset     |

---

## 🧪 How to Run the Queries

### Option A: Run All Queries via CLI
```bash
mysql -u your_username -p retail < retail_queries.sql
```

### Option B: Run Interactively in VSCode
- Open `retail_queries.sql`
- Connect to your MySQL database
- Run individual queries or the full file

---

## 🔍 SQL Analysis Features

1. **Total Revenue by Product**
2. **Monthly Revenue with Running Total**
3. **Repeat Customers**
4. **Customer Lifetime Value (CLV)**
5. **Top 3 Products by Revenue (Window Function)**
6. **Low Stock Alerts**

## 📸 Example Output

### Total Revenue by Product

| product_name | total_revenue |
|--------------|----------------|
| Laptop       | 899.99         |
| Headphones   | 599.97         |
| Desk Chair   | 129.99         |
| Notebook     | 59.90          |

---

## ✅ Skills Demonstrated

- Relational schema design
- Indexing for performance
- SQL joins and aggregations
- Grouping and filtering
- Window functions (RANK, SUM OVER)
- Data analysis using SQL
- Real-world query design

---
