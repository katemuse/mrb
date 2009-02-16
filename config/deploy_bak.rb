require 'mongrel_cluster/recipes'

set :application, "MusinskyRareBooks"
set :repository,  "https://musinsky.googlecode.com/svn/trunk/ musinsky --username catemuse"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/public_html/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :subversion

role :app, "musinsky@box478.bluehost.com"
role :web, "musinsky@box478.bluehost.com"
role :db,  "musinsky@box478.bluehost.com", :primary => true