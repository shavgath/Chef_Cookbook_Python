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
  command 'pip install Flask==0.10.1'
end

execute 'python-pip' do
  command 'pip install Jinja2==2.7.3'
end

execute 'python-pip' do
  command 'pip install MarkupSafe==0.23'
end

execute 'python-pip' do
  command 'pip install Werkzeug==0.9.6'
end

execute 'python-pip' do
  command 'pip install gnureadline==6.3.3'
end

execute 'python-pip' do
  command 'pip install itsdangerous==0.24'
end

execute 'python-pip' do
  command 'pip install rauth==0.7.0'
end

execute 'python-pip' do
  command 'pip install requests==2.3.0'
end

execute 'python-pip' do
  command 'pip install wsgiref==0.1.2'
end

execute 'python-pip' do
  command 'pip install gunicorn==18.0'
end

execute 'python-pip' do
  command 'pip install Flask-SSLify==0.1.4'
end
