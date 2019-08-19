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

execute 'pip install requirements' do
  command 'pip install -R requirements.txt'
end
