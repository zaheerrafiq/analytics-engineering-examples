select
    s.supplier_id,
    s.supplier_name,
    count(n.ncmr_id) as defect_count,
    avg(n.severity_score) as avg_severity
from staging.stg_supplier s
left join raw.ncmr n
    on s.supplier_id = n.supplier_id
group by
    s.supplier_id,
    s.supplier_name;
