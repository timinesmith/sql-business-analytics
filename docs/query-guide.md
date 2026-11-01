# SQL Query Guide

**Status:** Illustrative demonstration. The dataset is synthetic and intentionally small enough to inspect by hand.

## Data definitions

- **Completed revenue:** units × unit price for orders with `order_status = 'Completed'`.
- **Gross margin:** units × (unit price − unit cost). This is product-level margin before labor, freight, overhead, taxes, and fees.
- **Repeat customer:** a customer with at least two completed orders in the dataset.
- **Reorder signal:** a simple velocity flag, not a substitute for current stock, supplier lead time, open purchase orders, or seasonality.

## Query notes

### Monthly revenue

Useful for spotting growth, seasonality, and unusual declines. A reviewer should reconcile the completed-order filter with the business's revenue-recognition policy before using the pattern in production.

### Repeat customers

Customer concentration matters for service businesses. The output separates repeat and one-time buyers and ranks customers by completed-order revenue.

### Product margin

Margin dollars and margin percentage answer different questions. A lower-percentage institutional product can still produce the largest total margin if volume is high.

### Inventory reorder

The example uses sales velocity only. A production version should join current inventory, reserved stock, open purchase orders, supplier lead time, and minimum order quantities.

## Limitations

- Synthetic dates and customers.
- No returns netting beyond excluding non-completed statuses.
- No tax, discount, shipping, or payment-fee fields.
- SQL date functions vary by database platform; `DATE_TRUNC` may need adaptation.
