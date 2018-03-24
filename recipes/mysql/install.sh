#!/usr/bin/env bash

# MySQL Recipe
#
# Caveats
#
# A "/etc/my.cnf" from another install may interfere with a
# Homebrew-built
#
# To connect:
# $ mysql.server start
# $ mysql -uroot
# $ quit
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "MySQL"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then

  subheader "Brew Install MySQL"

  if has brew ; then

    log "Brew Update and Upgrade"
    brew update && brew upgrade

    if ! has mysql ; then
      log "Install MySQL"
      brew install mysql

      unset TMPDIR
    fi

  fi

  subheader "Overwrite /usr/local/opt/mysql/my.cnf file"

  cp "$DOTFILES"/my.cnf /usr/local/opt/mysql/my.cnf

  # Check if /etc/my,cnf exists - backup and delete if it does
  # Delete test database

  source ~/.zshrc

  # Chef::Log.warn 'Please use https://github.com/pivotal-sprout/sprout instead'

  # #http://solutions.treypiepmeier.com/2010/02/28/installing-mysql-on-snow-leopard-using-homebrew/
  # require 'pathname'

  # PASSWORD = node["mysql_root_password"]
  # # The next two directories will be owned by WS_USER
  # DATA_DIR = "/usr/local/var/mysql"
  # PARENT_DATA_DIR = "/usr/local/var"

  # include_recipe "pivotal_workstation::homebrew"

  # [ "/Users/#{WS_USER}/Library/LaunchAgents",
  #   PARENT_DATA_DIR,
  #   DATA_DIR ].each do |dir|
  #   directory dir do
  #     owner WS_USER
  #     action :create
  #   end
  # end

  # brew "mysql"

  # ruby_block "copy mysql plist to ~/Library/LaunchAgents" do
  #   block do
  #     active_mysql = Pathname.new("/usr/local/bin/mysql").realpath
  #     plist_location = (active_mysql + "../../"+"homebrew.mxcl.mysql.plist").to_s
  #     destination = "#{WS_HOME}/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
  #     system("cp #{plist_location} #{destination} && chown #{WS_USER} #{destination}") || raise("Couldn't find the plist")
  #   end
  # end

  # ruby_block "mysql_install_db" do
  #   block do
  #     active_mysql = Pathname.new("/usr/local/bin/mysql").realpath
  #     basedir = (active_mysql + "../../").to_s
  #     data_dir = "/usr/local/var/mysql"
  #     system("mysql_install_db --verbose --user=#{WS_USER} --basedir=#{basedir} --datadir=#{DATA_DIR} --tmpdir=/tmp && chown #{WS_USER} #{data_dir}") || raise("Failed initializing mysqldb")
  #   end
  #   not_if { File.exists?("/usr/local/var/mysql/mysql/user.MYD")}
  # end

  # execute "load the mysql plist into the mac daemon startup thing" do
  #   command "launchctl load -w #{WS_HOME}/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
  #   user WS_USER
  #   not_if { system("launchctl list com.mysql.mysqld") }
  # end

  # ruby_block "Checking that mysql is running" do
  #   block do
  #     Timeout::timeout(60) do
  #       until system("ls /tmp/mysql.sock")
  #         sleep 1
  #       end
  #     end
  #   end
  # end

  # execute "set the root password to the default" do
  #   command "mysqladmin -uroot password #{PASSWORD}"
  #   not_if "mysql -uroot -p#{PASSWORD} -e 'show databases'"
  # end

  # execute "insert time zone info" do
  #   command "mysql_tzinfo_to_sql /usr/share/zoneinfo | sed 's/Local time zone must be set--see zic manual page/XXT/' | mysql -uroot -p#{PASSWORD} mysql"
  #   not_if "mysql -uroot -p#{PASSWORD} mysql -e 'select * from time_zone_name' | grep -q UTC"
  # end

fi
