SELECT s.queryid,d.datname,calls, total_time,total_time / calls avg_ms, rows,
100.0*shared_blks_hit/nullif(shared_blks_hit+shared_blks_read,0) AS hit_percent
FROM pg_stat_statements As s INNER JOIN pg_database As d On d.oid = s.dbid
ORDER BY total_time DESC LIMIT 5;