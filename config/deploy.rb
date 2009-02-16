set :application, "musinskyRareBooks"
set :repository,  "http://katemuse.svnrepository.com/git/musinskyrepos/ "

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "~/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

role :app, "musinsky@katemuse.net"
role :web, "musinsky@katemuse.net"
role :db,  "musinsky@katemuse.net", :primary => true