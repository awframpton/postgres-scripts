select
blk_read_time,
blk_write_time
from pg_stat_statements
where queryid = 3856878552;
