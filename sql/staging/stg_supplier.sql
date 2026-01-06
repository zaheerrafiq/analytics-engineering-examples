select
    supplier_id,
    supplier_name,
    country,
    active_flag
from raw.suppliers
where active_flag = 'Y';
