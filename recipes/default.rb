#
# Cookbook Name:: chef_rails_redis
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['redisio']['safe_install'] = false
node.default['redisio']['servers'] = [
  {
    'name' => 'master',
    'address' => '127.0.0.1',
    'port' => '6379',
    'unixsocket' => '/tmp/redis.sock',
    'unixsocketperm' => '755'
  }
]

include_recipe 'redisio'
include_recipe 'redisio::enable'
