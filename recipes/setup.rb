#
# Cookbook Name:: scoville
# Recipe:: setup
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

%w(
  apt::default
  git::default
).each do |r|
  include_recipe r
end

# packages required by scoville
%w(
  python
  python-pip
).each do |p|
  package p
end

user_account node[:scoville][:user][:user] do
  manage_home true
  create_group node[:scoville][:user][:create_group]
  home node[:scoville][:user][:home]
  only_if { node[:scoville][:user][:enabled] }
end

directory node[:scoville][:cfg_path] do
  action :create
  recursive true
end
