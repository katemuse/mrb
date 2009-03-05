set :user, "musinsky"
set :application, "Musinsky Rare Books"  
set :applicationdir, "musinskyRareBooks" 
set :repository,  "git@github.com:katemuse/mrb.git"
set :deploy_to, "/home/#{user}/#{applicationdir}"   
set :deploy_via, :remote_cache
ssh_options[:paranoid] = false
set :scm, "git"
set :scm_passphrase, "hildala8"

set :branch, "master" 
role :app, "katemuse.net"
role :web, "katemuse.net"
role :db,  "katemuse.net", :primary => true