#!/bin/bash
for (( i=1; i<=3; i=i+1 ))
do
	nohup mongod --replSet shard$i --shardsvr --bind_ip 0.0.0.0  --port 300$i --dbpath /Users/ligeng/Documents/mongo-shard-data/300$i >300$i.log 2>&1 &
	nohup mongod --replSet shard$i --shardsvr --bind_ip 0.0.0.0  --port 400$i --dbpath /Users/ligeng/Documents/mongo-shard-data/400$i >400$i.log 2>&1 &
	nohup mongod --replSet shard$i --shardsvr --bind_ip 0.0.0.0  --port 500$i --dbpath /Users/ligeng/Documents/mongo-shard-data/500$i >500$i.log 2>&1 &
#!	echo $i
#!	for (( j=1; j<=3; j=j+1 ))
#!	do
#! 	echo("	nohup mongod --replSet shard$i --bind_ip 192.168.1.101  --port $i00$j --dbpath /Users/ligeng/Documents/mongo-shard-data/$i00$j >$i00$j.log 2>&1 & ")
#!	done
done

echo "success"
