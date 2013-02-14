maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          "Copyright RightScale, Inc. All rights reserved."
description      "Installs/Configures CouchBase Server 2.0"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

depends "rightscale"

recipe "couchbase::default", "Install Couchbase Server specific packages. Setup Couchbase Server specific default attributes"
recipe "couchbase::setup-2.0.0", "Install Couchbase Server 2.0 specific packages. Setup Couchbase Server 2.0 specific default attributes"

attribute "db_couchbase/cluster/username",
      :description => "Cluster REST/Web Administrator Username",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default => "Administrator",
      :display_name => "Cluster REST/Web Username",
      :required => "optional"

attribute "db_couchbase/cluster/password",
      :description => "Cluster REST/Web Administrator Password",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default =>  "password",
      :display_name => "Cluster REST/Web Password",
      :required => "optional"

#attribute "db_couchbase/cluster/ramsize",
#      :description => "Cluster Initial Ram Size used to create bucket",
#      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
#      :type => "string",
#      :default => "1000",
#      :display_name => "Cluster RamSize",
#      :required => "required"

attribute "db_couchbase/cluster/tag",
      :description => "Cluster Tag used to auto-join nodes of the same tag, when non-empty",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default => "",
      :display_name => "Cluster Tag",
      :required => "optional"

attribute "db_couchbase/bucket/name",
      :description => "Bucket Name",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default => "default",
      :display_name => "Bucket Name",
      :required => "optional"

attribute "db_couchbase/bucket/password",
      :description => "Bucket Password",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default => "",
      :display_name => "Bucket Password",
      :required => "optional"

attribute "db_couchbase/bucket/ram",
      :description => "Bucket RAM Quota in MB",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default => "1000",
      :display_name => "Bucket RAM Quota",
      :required => "optional"

attribute "db_couchbase/bucket/replica",
      :description => "Bucket Replica Count",
      :recipes => [ "couchbase::default", "couchbase::setup-2.0.0" ],
      :type => "string",
      :default => "1",
      :display_name => "Bucket Replica Count",
      :required => "optional"
