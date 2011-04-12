require "bundler/capistrano"

db =  "babik.webflows.fr"
app = [db, "joseph.webflows.fr"]

set :application, "carla-to-market"
set :repository,  "git@github.com:itkin/carla-to-market.git"

set :scm, :git
set :deploy_to, "~/carla-to-market"

set :use_sudo, false

set :user, "rails"
set :password, Proc.new { Capistrano::CLI.password_prompt("Rails user password : ") }

set :branch, "master"

role :app, *app
role :web, *app
role :db,  db, :primary => true

set :deploy_via, :remote_cache
set :git_enable_submodules, 1

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

task :copy_production_database_configuration do
  run "cp #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end

namespace :compass do
  task :compile, :roles => :app do
    run "cd #{release_path} && bundle exec compass compile -e production --force"
  end
end

after "deploy:update_code", :copy_production_database_configuration
after "deploy:update_code", "compass:compile"