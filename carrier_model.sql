-- carrier_model.sql
-- Create a detailed view to analyze carrier performance metrics

CREATE VIEW carrier_performance AS
SELECT 
  Carrier,
  AVG(Avg_Delivery_Time) AS Avg_Delivery_Time,
  AVG(Cost_per_Shipment) AS Avg_Cost,
  AVG(On_Time_Rate) AS Avg_On_Time_Rate
FROM carrier_metrics
GROUP BY Carrier;

-- Example query: Find carriers with optimal cost and performance
SELECT *
FROM carrier_performance
WHERE Avg_Delivery_Time < 3.0 AND Avg_On_Time_Rate > 92;
