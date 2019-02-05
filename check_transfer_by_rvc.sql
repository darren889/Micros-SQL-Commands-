select 
a.xfer_ttl as 'transfer total',
b.chk_num as 'Transfered To Check',
c.chk_num as 'Transfered From Check'
from 
micros.v_get_chk_xfers as a
join micros.chk_dtl as b on a.xfer_chk_seq = b.chk_seq 
join micros.chk_dtl as c on a.chk_seq = c.chk_seq 
where a.business_date = '2019-02-01'
and a.rvc_seq = 5
