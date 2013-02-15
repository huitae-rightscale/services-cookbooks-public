#
# Cookbook Name:: web_nginx
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.


# Recommended attributes

# Admin email
#set_unless[:nginx][:contact] = "root@localhost"

# Optional attributes

# Turning off Keepalive to prevent conflicting HAproxy
#set_unless[:nginx][:keepalive] = "Off" 

# Turn on generation of "full" nginx status
#set_unless[:nginx][:extended_status] = "On"

# worker = multithreaded (when you need a great deal of scalability)
# prefork = single-threaded (when you need stability or compatibility with older software)
# for more info please visit: http://httpd.nginx.org/docs/2.0/en/mpm.html
#set_unless[:nginx][:mpm] = "prefork"

# Security: Configuring Server Signature
#set_unless[:nginx][:serversignature] = "Off "

# Calculated attributes

# DISTRO specific config dir

set_unless[:config][:index_root] = "/var/nginx/html"
set_unless[:config][:worker_process] = "2"
set_unless[:config][:worker_connections] = "2048"
set_unless[:config][:keepalive_timeout] = "30"

# another one
