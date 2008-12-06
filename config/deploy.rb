# require 'deprec'

default_run_options[:pty] = true
set :repository,  "aglenn@git.aaronglenn.ca:/home/aglenn/git/plush.git"

set :scm, "git"
set :scm_passphrase, "glennsk8" #This is your custom users password
set :deploy_via, :remote_cache

set :user, "aglenn"
set :use_sudo, false

set :application, "plush"
set :domain, "plush.aaronglenn.ca"
# set :gems_for_project, %w(dr_nic_magic_models swiftiply) # list of gems to be installed

# Update these if you're not running everything on one host.
role :app, domain
role :web, domain
role :db,  domain, :primary => true
role :scm, domain # used by deprec if you want to install subversion

# If you aren't deploying to /var/www/apps/#{application} on the target
# servers (which is the deprec default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/aglenn/#{application}"

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path}; touch tmp/restart.txt;"
  end
end