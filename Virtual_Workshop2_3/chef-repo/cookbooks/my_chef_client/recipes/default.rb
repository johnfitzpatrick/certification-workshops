#
# Cookbook Name:: my_chef_client
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


node.default['chef_client']['interval'] = '300'

include_recipe 'chef-client::default'
