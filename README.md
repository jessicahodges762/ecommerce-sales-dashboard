# E-Commerce Sales & Cuustomer Insights Dashboard
📊 Project Outline:
This project analyzes transactional e-commerce data to uncover trends in revenue, product performance, geographic distribution, and customer segmentation. Using SQL for data cleaning and transformation and Tableau for visualization, this dashboard provides an interactive view of key business metrics.

🛠️ Tools & Techniques:
- SQL
- Tableau Public
- Excel (data source)

📁 Dataset:
The dataset contains transactional retail data including invoice details, product descriptions, quantities, pricing, customer IDs, and country information.

📚 Data Source:
This dataset is publicly available and commonly used for data analysis practice:
- UCI Machine Learning Repository: Online Retail Dataset
- Link: https://archive.ics.uci.edu/ml/datasets/Online+Retail
The dataset contains transactions occurring between December 2010 and December 2011 for a UK-based online retailer.

🧹 Data Cleaning & Preparation

Data was cleaned and transformed using SQL, including:

- Removing cancelled transactions (negative quantities)
- Handling missing Customer IDs
- Creating a revenue column (Quantity × Unit Price)
- Standardizing date formats
- Aggregating customer-level revenue

📈 Key Analysis & Features
1. Monthly Revenue Trend
- Analyzes revenues over time to identify seasonality and growth patterns.
2. Top Products by Revenue
- Identifies the highest-performing products contributing to overall revenue.
3. Top Countries by Revenue (Excluding UK)
- Highlights international market performance while excluding the UK (primary market) for clearer comparison.
4. Customer Segmentation
- Customers were segmented based on total revenue:
  - High value: ≥ $100,000
  - Mid Value: $50,000-$99,999
  - Low Value: < $50,000

🔍 Key Insights
- Revenue shows an overall upward trend with strong growth in the later months of 2011.
- A small number of products contribute disproportionately to total revenue.
- International revenue is led by countries such as the Netherlands, Ireland, and Germany.
- Customer segmentation revealed that mid-value customers exist only within the UK market, while international markets are dominated by low- and high-value customers.
- Outside of the UK, revenue is nearly evenly split between low- and high-value customers, indicating a polarized customer base internationally.

📈 Dashboard Preview

Download the Tableau workbook to explore the dashboard:
👉 [Download Tableau Dashboard](ecommerce_analysis_dashboard.twbx)
![Dashboard](https://github.com/user-attachments/assets/be97c026-b8cd-467e-88fb-4bfa76ea1fd0)

🚀 How to Use:
- Use the country filter to explore trends across different markets
- Interact with visualizations to analyze product and customer behavior

Future Improvements:
- Add profit/margin analysis
- Incorporate time-based customer retention metrics
-Build predictive models for customer lifetime value

👤 Author
Jessica Hodges
