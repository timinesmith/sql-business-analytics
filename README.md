# SQL & Business Analytics

## Executive summary

Readable SQL demonstrations for common business reporting questions: monthly revenue, repeat customers, product margin, and inventory reorder signals. The repository demonstrates analytical thinking and reporting logic using a small synthetic dataset.

## Business problem

Business users often ask simple questions that become difficult when data is stored in operational tables: Which months are growing? Which products protect margin? Which customers return? Which items need replenishment? These examples show how to structure transparent, auditable queries.

## Scope

- Synthetic order dataset
- Table definition
- Monthly revenue and order reporting
- Repeat-customer analysis
- Product margin analysis
- Inventory reorder signal logic
- Plain-language query explanations

## Role and evidence basis

**Illustrative demonstration.** Timothy Nesmith's documented background includes SQL and Tableau as business-analytics tools, alongside advanced Excel reporting. These queries were created for this portfolio and were not delivered to a client. They demonstrate business reporting, not software engineering or database administration.

## Methods and tools

Standard SQL concepts: filtering completed orders, grouping, aggregation, date truncation, common table expressions, calculated margin, customer-level aggregation, and threshold-based operational flags.

## Deliverables

- [Synthetic orders dataset](data/synthetic-orders.csv)
- [Table definition](sql/00_create_synthetic_orders_table.sql)
- [Monthly revenue query](sql/01_monthly_revenue.sql)
- [Repeat-customer query](sql/02_customer_repeat_rate.sql)
- [Product margin query](sql/03_product_margin.sql)
- [Inventory reorder query](sql/04_inventory_reorder.sql)
- [Query guide](docs/query-guide.md)

## Verified outcomes

No client outcome is claimed for these demonstrations. Their purpose is to make Timothy's documented reporting approach inspectable: clear definitions, completed-order filters, and outputs a manager can act on.

## Skills demonstrated

Business analytics, SQL reporting, revenue analysis, customer analysis, margin analysis, inventory reporting, and data definitions.

## How clients benefit

Clients receive reporting logic they can understand and reuse — with definitions stated in business language and queries structured for review rather than hidden inside a spreadsheet.
