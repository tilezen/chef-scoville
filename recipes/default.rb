#
# Cookbook Name:: scoville
# Recipe:: default
#
# Copyright 2016, Mapzen
#
# Available under the MIT license, see LICENSE for details
#

%w(
  scoville::setup
  scoville::install
).each do |r|
  include_recipe r
end
