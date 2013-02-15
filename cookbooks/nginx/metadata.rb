maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          "Copyright RightScale, Inc. All rights reserved."
description      "Installs/configures the nginx2 webserver"
version          "12.1.0"

supports "centos", "~> 5.8"
supports "redhat", "~> 5.8"
supports "ubuntu", "~> 10.04.0"

recipe "nginx::default", "Runs nginx::install_nginx."

all_recipes = [
  "nginx::default",
]

#depends "nginx"
depends "rightscale"

attribute "nginx",
  :display_name => "nginx for test",
  :description => "nginx Web Server",
  :type => "hash"

#attribute "nginx/mpm",
#  :display_name => "Multi-Processing Module",
#  :description => "Defines the multi-processing module setting in httpd.conf.  Use 'worker' for Rails/Tomcat/Standalone frontends and 'prefork' for PHP. Example: prefork",
#  :required => "optional",
#  :recipes => all_recipes,
#  :choice => [ "prefork", "worker" ],
#  :default =>  "prefork"
#
#attribute "nginx/ssl_enable",
#  :display_name => "SSL Enable",
#  :description => "Enables SSL ('https'). Example: true",
#  :recipes => [
#    "nginx::install_nginx",
#    "nginx::setup_frontend_ssl_vhost",
#    "nginx::setup_frontend"
#   ],
#  :required => "optional",
#  :choice => [ "true", "false" ],
#  :default =>  "false"
#
#attribute "nginx/ssl_certificate",
#  :display_name => "SSL Certificate",
#  :description => "The name of your SSL Certificate. Example: cred:SSL_CERT",
#  :required => "optional",
#  :default =>  "",
#  :recipes => [
#    "nginx::setup_frontend_ssl_vhost",
#    "nginx::setup_frontend" 
#  ]

#attribute "nginx/ssl_certificate_chain",
#  :display_name => "SSL Certificate Chain",
#  :description => "Your SSL Certificate Chain. Example: cred:SSL_CERT_CHAIN",
#  :required => "optional",
#  :default =>  "",
#  :recipes => [
#    "nginx::setup_frontend_ssl_vhost",
#    "nginx::setup_frontend" 
#  ]

#attribute "nginx/ssl_key",
#  :display_name => "SSL Certificate Key",
#  :description => "Your SSL Certificate Key. Example: cred:SSL_KEY",
#  :required => "optional",
#  :default =>  "",
#  :recipes => [
#    "nginx::setup_frontend_ssl_vhost",
#    "nginx::setup_frontend" 
#  ]

#attribute "nginx/ssl_passphrase",
#  :display_name => "SSL Passphrase",
#  :description => "Your SSL passphrase. Example: cred:SSL_PASSPHRASE",
#  :required => "optional",
#  :default =>  "",
#  :recipes => [
#    "nginx::setup_frontend_ssl_vhost",
#    "nginx::setup_frontend" 
#  ]

#attribute "nginx/application_name",
#  :display_name => "Application Name",
#  :description => "Sets the directory for your application's web files (/home/webapps/Application Name/current/).  If you have multiple applications, you can run the code checkout script multiple times, each with a different value for the 'Application Name' input, so each application will be stored in a unique directory.  This must be a valid directory name.  Do not use symbols in the name. Example: myapp",
#  :required => "optional",
#  :default => "myapp",
#  :recipes => [
#    "nginx::setup_frontend_ssl_vhost",
#    "nginx::setup_frontend_http_vhost",
#    "nginx::setup_frontend",
#    "nginx::default"
#  ]
