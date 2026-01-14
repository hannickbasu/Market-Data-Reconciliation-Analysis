# Market-Data-Reconciliation-Analysis
A robust SQL-based data reconciliation project designed to identify discrepancies and sync gaps between two massive market datasets. This project demonstrates high-level proficiency in Set Theory, Relational Joins (Left, Right, Full), and Data Auditing.

# Key Insights & Data Reconciliation Audit
**Data Integrity Gap (Data 1 → Data 2):** Identified 507 unique records (Order ID + Product ID combinations) that exist in the primary source (data1) but are completely missing from the target source (data2).

**Data Integrity Gap (Data 2 → Data 1):** Found 508 records present in data2 that were not captured in data1, indicating a two-way synchronization failure between the datasets.

**Volume Impact Analysis:** The records missing from data1 represent a total missing quantity of 1,956 units. This finding is critical for inventory and sales reporting accuracy.
