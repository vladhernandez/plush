# require 'deprec'
default_run_options[:pty] = false
# set :use_sudo, false
set :user, 'plushadmin'
set :password, "nikita"
set :repository,  "gitdeployer@git.aaronglenn.ca:/home/gitdeployer/git/plush.git"

set :scm, "git"
set :scm_user, 'gitdeployer'
set :scm_passphrase, "giterdone" #This is your custom users password
set :deploy_via, :remote_cache


set :application, "plush"
set :domain, "plush.dreamhosters.com"
# set :gems_for_project, %w(dr_nic_magic_models swiftiply) # list of gems to be installed

# Update these if you're not running everything on one host.
role :app, domain
role :web, domain
role :db,  domain, :primary => true
role :scm, domain # used by deprec if you want to install subversion

# If you aren't deploying to /var/www/apps/#{application} on the target
# servers (which is the deprec default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/plushadmin/#{application}"

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path}; touch tmp/restart.txt;"
  end
end

# Automatically symlink these directories from current/public to shared/public.
 task :after_symlink, :roles => [:app, :web] do
   run "ln -nfs #{shared_path}/public/files #{current_path}/public/files"
 end