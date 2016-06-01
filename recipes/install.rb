#
# Cookbook Name:: scoville
# Recipe:: install
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

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
