require 'deprec'
  
set :application, "set your application name here"
set :domain, "set domain name project will be served on here"
set :repository,  "svn+ssh://#{domain}/var/www/apps/#{application}/repos/trunk"
# set :gems_for_project, %w(dr_nic_magic_models swiftiply) # list of gems to be installed

# Update these if you're not running everything on one host.
role :app, domain
role :web, domain
role :db,  domain, :primary => true
role :scm, domain # used by deprec if you want to install subversion

# If you aren't deploying to /var/www/apps/#{application} on the target
# servers (which is the deprec default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    top.deprec.mongrel.restart
  end
end