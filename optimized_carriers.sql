-- Select carriers with optimal delivery and cost
SELECT 
    Carrier,
    Avg_Delivery_Time,
    Cost_per_Shipment,
    On_Time_Rate
FROM carrier_metrics
WHERE Avg_Delivery_Time < 3.0 AND On_Time_Rate > 92;