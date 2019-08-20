#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update "update_sources" do
  action :update
end

package 'python' do
  action :install
end

package 'python-pip' do
  action :install
end

execute 'python-pip' do
  command 'pip install -r requirements.txt'
end
