#
# Cookbook Name:: scoville
# Recipe:: default
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

include_recipe 'scoville::install'
include_recipe 'runit::default'

runit_service 'scoville' do
  action [:enable]
  log true
  default_logger true
  sv_timeout node[:scoville][:runit][:timeout]
end
