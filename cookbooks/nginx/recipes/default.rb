#
# Cookbook Name:: web_apache
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

# pushed onto HTKIM-Nginx
# should not be showed on master branch
# another one

rightscale_marker :begin

service "nginx" do
  action :stop
  only_if do
    File.exists?("/var/run/nginx.pid")
  end
end

package "nginx" do
  action :remove
  only_if do
    File.exists?("/etc/init.d/nginx")
  end
end

package "nginx" do
  action :install
end

execute "chkconfig" do
  command "chkconfig nginx on"
  action :run
end

template "/etc/nginx/nginx.conf" do
  source "nginx.conf.erb"
  variables(
      :worker_process => node[:config][:worker_process],
      :worker_connections => node[:config][:worker_connections],
      :keepalive_timeout => node[:config][:keepalive_timeout]
  )
end

template "/etc/nginx/conf.d/default.conf" do
  source "default.conf.erb"
  variables(
      :index_root => node[:config][:index_root]
  )
end

template "/etc/nginx/conf.d/ssl.conf" do
  source "ssl.conf.erb"
end

template "/etc/nginx/conf.d/virtual.conf" do
  source "virtual.conf.erb"
end

template "/etc/nginx/mime.types" do
  source "mime.types.erb"
end

service "nginx" do
  action :start
end

rightscale_marker :end
