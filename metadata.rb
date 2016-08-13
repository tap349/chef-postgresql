name             "postgresql"
maintainer       "Christopher Chow"
maintainer_email "chris@chowie.net"
license          "MIT"
description      "Installs PostgreSQL 9.5"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

recipe "postgresql",                   "Set up the apt repository and install dependent packages"
recipe "postgresql::client",           "Front-end programs for PostgreSQL 9.x"
recipe "postgresql::configuration",    "Internal recipe to manage configuration files"
recipe "postgresql::data_directory",   "Internal recipe to setup the data directory"
recipe "postgresql::postgis",          "Geographic objects support for PostgreSQL 9.x"
recipe "postgresql::server",           "Object-relational SQL database, version 9.x server"
recipe "postgresql::service",          "Internal recipe to declare the system service"
recipe "postgresql::setup_databases",  "Internal recipe to manage specified databases"
recipe "postgresql::setup_extensions", "Internal recipe to manage specified database extensions"
recipe "postgresql::setup_users",      "Internal recipe to manage specified users"

supports "ubuntu"

depends "locale"
