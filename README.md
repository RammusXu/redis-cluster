# redis-cluster
Base on redis 6.0


> [ERR] Node 127.0.0.1:6379 is not configured as a cluster node.



redis-server redis.conf --port 7001  --daemonize yes

redis-server redis.conf --port 7002  --daemonize yes


redis-cli --cluster create --cluster-replicas 1 127.0.0.1:7001 127.0.0.1:7002
