#
# Cookbook Name:: scoville
# Recipe:: install
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

include_recipe "runit"

template "#{node[:scoville][:cfg_path]}/#{node[:scoville][:cfg_file]}" do
  source 'scoville-config.yaml.erb'
  notifies :restart, 'runit_service[scoville]', :delayed
end

template "#{node[:scoville][:cfg_path]}/#{node[:scoville][:logging_file]}" do
  source 'scoville-logging.conf.erb'
  notifies :restart, 'runit_service[scoville]', :delayed
end

execute 'pip_install_nodeps' do
  command "pip install --upgrade --no-deps git+https://github.com/tilezen/scoville@#{node[:scoville][:revision][:scoville]}#egg=scoville"
  notifies :restart, 'runit_service[scoville]', :delayed
end

execute 'pip_install' do
  command "pip install git+https://github.com/tilezen/scoville@#{node[:scoville][:revision][:scoville]}#egg=scoville"
  notifies :restart, 'runit_service[scoville]', :delayed
end

runit_service 'scoville' do
  action [:enable]
  log true
  default_logger true
  sv_timeout node[:scoville][:runit][:timeout]
end
