package com.gxh.utils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisTest {
	public static void main(String[] args) {
		
		 String redisAddress = "127.0.0.1";
		 int redisPort = 6379;
		 int redisTimeout = 2000;

		 JedisPool pool = new JedisPool(new JedisPoolConfig(), redisAddress, redisPort, redisTimeout);

		 Jedis jedis = pool.getResource();
		 jedis.set("test123", "lulu");
		 
		 System.out.println(jedis.ping());
		 System.out.println(jedis.get("test123"));
	}
}
