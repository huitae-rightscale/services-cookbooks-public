#
# Cookbook Name:: nginx
#
# Copyright RightScale, Inc. All rights reserved. All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

action :start do
  log "starting nginx"
  service "nginx" do
    action :start
    persist false
  end
end

action :stop do
  log "stopping nginx"
  service "nginx" do
    action :stop
    persist false
  end
end

action :reload do
  log "reloading nginx"
  service "nginx" do
    action :reload
    persist false
  end
end

action :restart do
  action_stop
  sleep 5
  action_start
end
