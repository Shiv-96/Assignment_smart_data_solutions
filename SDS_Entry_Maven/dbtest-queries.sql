select sum(claimed_charge) AS total_charge
from document
where status = 'EXPORTED';


select insured_name, insured_address, claimed_charge
from document d
join batch b on d.batch_id = b.id
where d.status = 'TO_REPRICE'
and b.customer_id in (1, 2);