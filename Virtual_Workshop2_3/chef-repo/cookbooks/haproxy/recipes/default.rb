#
# Cookbook Name:: haproxy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'haproxy'

if Chef::Config[:solo]
  Chef::Log.warn('This recipe uses search. Chef Solo does not support search.')
else
  allwebnodes = search('node', 'recipes:apache')
end

template '/etc/haproxy/haproxy.cfg' do
  source 'haproxy.cfg.erb'
  variables(
    :webservers => allwebnodes
  )
  notifies :restart, 'service[haproxy]'
end

service 'haproxy' do
  action [:start, :enable]
end
