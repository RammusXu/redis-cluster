
redis-3_1              | 1:C 10 Sep 2020 04:12:57.007 # Configuration loaded
redis-3_1              | 1:M 10 Sep 2020 04:12:57.014 * No cluster configuration found, I'm 21bf15d692d2d210ab956f25a30b4a57f55de395
redis-3_1              | 1:M 10 Sep 2020 04:12:57.017 * Running mode=cluster, port=6379.

/data # redis-cli --cluster create --cluster-replicas 1 redis-1:7000
[ERR] Wrong number of arguments for specified --cluster sub command

/data # redis-cli --cluster create --cluster-replicas 1 redis-1:7000 redis-2:7000
*** ERROR: Invalid configuration for cluster creation.
*** Redis Cluster requires at least 3 master nodes.
*** This is not possible with 2 nodes and 1 replicas per node.
*** At least 6 nodes are required.


/data # redis-cli --cluster create --cluster-replicas 1 172.28.1.1:6379 172.28.1.2:6379 172.28.1.3:6379 172.28.1.4:6379 172.28.1.5
:6379 172.28.1.6:6379
>>> Performing hash slots allocation on 6 nodes...
Master[0] -> Slots 0 - 5460
Master[1] -> Slots 5461 - 10922
Master[2] -> Slots 10923 - 16383
Adding replica 172.28.1.5:6379 to 172.28.1.1:6379
Adding replica 172.28.1.6:6379 to 172.28.1.2:6379
Adding replica 172.28.1.4:6379 to 172.28.1.3:6379
M: 09cb18472c79cc4bb98c2adebeb525fe04ad5f62 172.28.1.1:6379
   slots:[0-5460] (5461 slots) master
M: 8bacf05e867a2af1b3a3bcaa81eebb177212136a 172.28.1.2:6379
   slots:[5461-10922] (5462 slots) master
M: b75cd8e4dc07b0c04e3c7ca861d23763ae836375 172.28.1.3:6379
   slots:[10923-16383] (5461 slots) master
S: e4762dbe5c66069251921fcc15118c084dabcdc1 172.28.1.4:6379
   replicates b75cd8e4dc07b0c04e3c7ca861d23763ae836375
S: c30c7b9b4eae04b435391fe23ac76a793e2e9f45 172.28.1.5:6379
   replicates 09cb18472c79cc4bb98c2adebeb525fe04ad5f62
S: 307c1c027c10ebc39f781931117f41f9b3c7d379 172.28.1.6:6379
   replicates 8bacf05e867a2af1b3a3bcaa81eebb177212136a
Can I set the above configuration? (type 'yes' to accept): yes
>>> Nodes configuration updated
>>> Assign a different config epoch to each node
>>> Sending CLUSTER MEET messages to join the cluster
Waiting for the cluster to join
.
>>> Performing Cluster Check (using node 172.28.1.1:6379)
M: 09cb18472c79cc4bb98c2adebeb525fe04ad5f62 172.28.1.1:6379
   slots:[0-5460] (5461 slots) master
   1 additional replica(s)
S: e4762dbe5c66069251921fcc15118c084dabcdc1 172.28.1.4:6379
   slots: (0 slots) slave
   replicates b75cd8e4dc07b0c04e3c7ca861d23763ae836375
S: 307c1c027c10ebc39f781931117f41f9b3c7d379 172.28.1.6:6379
   slots: (0 slots) slave
   replicates 8bacf05e867a2af1b3a3bcaa81eebb177212136a
M: b75cd8e4dc07b0c04e3c7ca861d23763ae836375 172.28.1.3:6379
   slots:[10923-16383] (5461 slots) master
   1 additional replica(s)
S: c30c7b9b4eae04b435391fe23ac76a793e2e9f45 172.28.1.5:6379
   slots: (0 slots) slave
   replicates 09cb18472c79cc4bb98c2adebeb525fe04ad5f62
M: 8bacf05e867a2af1b3a3bcaa81eebb177212136a 172.28.1.2:6379
   slots:[5461-10922] (5462 slots) master
   1 additional replica(s)
[OK] All nodes agree about slots configuration.
>>> Check for open slots...
>>> Check slots coverage...
[OK] All 16384 slots covered.
