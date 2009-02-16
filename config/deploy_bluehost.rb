require 'mongrel_cluster/recipes'

set :application, "MusinskyRareBooks"
#set :repository, '~/Sites/Repos'

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/public_html/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:

#set :scm, :subversion

role :app, "musinsky@box478.bluehost.com"
role :web, "musinsky@box478.bluehost.com"
role :db,  "musinsky@box478.bluehost.com", :primary => true    


#########
#source control / svn repository parameters
#########
set :scm_host, "musinskyrarebooks.googlecode.com"
set :scm_username, "catemuse"
set :scm_password, "pR9WQ4YR6gw6"

set :repository, "https://#{scm_host}/svn/trunk/"    

# We want subversion to "export", so that it won't pull all the .svn files.
set :deploy_via, :export
                             
                                              
##########
#production server configuration
##########
set :domain, "katemuse.net"

#the bluehost user name
set :user, "musinsky"

 # set :scm_command, "/home/#{user}/bin/svn"
 # set :local_scm_command, :default      

#don't use the sudo command to execute commands
set :use_sudo, false

#what directory to deploy to
set :deploy_to, "/home5/#{user}/public_html/#{application}"


##########
# TASKS
# ================================================== ===========================
# Define tasks that run on all (or only some) of the machines. You can specify
# a role (or set of roles) that each task should be executed on. You can also
# narrow the set of servers to a subset of a role by specifying options, which
# must match the options given for the servers to select (like rimary => true)
##########

# This overwrites the original task for our purposes
desc <<-DESC
A macro-task that updates the code, fixes the symlink, added the symlink
to the shared uploads folder. Finally takes a snapshot of the db.
DESC
deploy.task :default do
  transaction do
    update_code
    symlink 
  end
end


##########
# Bluehost specific
# (since you can't restart the web server on shared servers
# redefine deploy:start, deploy:stop, and deploy:restart to do nothing
##########
namespace :deploy do
task :restart do
# run "mongrel_rails cluster::restart -C #{mongrel_config}"
end

task :start do
# run "mongrel_rails cluster::start -C #{mongrel_config}"
end

task :stop do
# run "mongrel_rails cluster::stop -C #{mongrel_config}"
end
end