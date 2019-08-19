#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update "update_sources" do
  action :update
end

include_recipe 'poise-python'
