
https://github.com/RedisLabs/memtier_benchmark

```bash
docker-compose up
docker-compose exec benchmark memtier_benchmark -s redis-alpine
```

## Result

### Alpine
```
ALL STATS
=========================================================================
Type         Ops/sec     Hits/sec   Misses/sec      Latency       KB/sec
-------------------------------------------------------------------------
Sets         2189.36          ---          ---   1282.72000       168.62
Gets        21869.54         0.00     21869.54   1298.30300       851.91
Waits           0.00          ---          ---      0.00000          ---
Totals      24058.90         0.00     21869.54   1296.88500      1020.53
```

### Buster
```
=========================================================================
Type         Ops/sec     Hits/sec   Misses/sec      Latency       KB/sec
-------------------------------------------------------------------------
Sets         2151.72          ---          ---   1259.18500       165.72
Gets        21493.52         0.00     21493.52   1300.73400       837.27
Waits           0.00          ---          ---      0.00000          ---
Totals      23645.24         0.00     21493.52   1296.95300      1002.99
```
