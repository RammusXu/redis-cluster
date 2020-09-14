# redis-cluster
Base on redis 6.0


> [ERR] Node 127.0.0.1:6379 is not configured as a cluster node.



redis-server redis.conf --port 7001  --daemonize yes

redis-server redis.conf --port 7002  --daemonize yes


docker-compose up -d
docker-compose exec redis-1 sh -c \
    "echo yes | redis-cli --cluster create --cluster-replicas 1 172.28.1.1:6379 172.28.1.2:6379 172.28.1.3:6379 172.28.1.4:6379 172.28.1.5:6379 172.28.1.6:6379"
docker-compose restart redis-cluster-proxy

docker-compose exec redis-1 redis-cli -h redis-cluster-proxy -p 7777
docker-compose exec redis-cluster-proxy redis-cli -h redis-cluster-proxy -p 7777

docker-compose exec redis-6 sh
redis-cli -h redis-cluster-proxy -p 7777

redis-cluster-proxy

docker-compose up -d
docker-compose exec redis-1 sh -c \
    "echo yes | redis-cli --cluster create 172.28.1.1:6379 172.28.1.2:6379 172.28.1.3:6379"
docker-compose restart redis-cluster-proxy


Clean
```bash
docker-compose down -v
```

## Doc
- https://redis.io/topics/cluster-tutorial
- https://github.com/RedisLabs/redis-cluster-proxy
- https://rancher.com/blog/2019/deploying-redis-cluster
