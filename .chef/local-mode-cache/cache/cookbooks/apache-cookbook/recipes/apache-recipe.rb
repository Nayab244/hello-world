#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end
file '/var/www/html/index.html' do
  content 'Dear Students!! Automated chef-client!!Tested again!!Full and Final!!'
  action :create
end
service 'httpd' do
  action [:enable,:start]
end
%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action :install
  end
end
%w(sai hari raj test xyz).each do |p|
  user p do
    action :create
  end
end

