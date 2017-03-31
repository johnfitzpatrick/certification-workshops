#
# Cookbook Name:: my_ntp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'ntp::default'

template '/etc/ntp.conf' do
  source 'ntp.conf.erb'
end
