select
    supplier_id,
    supplier_name,
    defect_count,
    avg_severity,
    case
        when defect_count >= 10 or avg_severity >= 4 then 'High'
        when defect_count >= 5  or avg_severity >= 3 then 'Medium'
        else 'Low'
    end as risk_tier
from intermediate.int_supplier_quality;
