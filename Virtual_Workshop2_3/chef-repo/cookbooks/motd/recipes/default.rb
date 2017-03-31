#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

 # This is incorrect, as it will not remove the line if the port is changes away from 8181, as the resource will be skipped
file "/etc/motd" do
  content "Note, Apache is serving from a non standard port"
  only_if { node['apache']['port'] == 8181}
end
