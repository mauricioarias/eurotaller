#set :whenever_environment, defer { rails_env }
set :rvm_ruby_string, 'ruby-2.2.0'
set :rvm_type, :user
set :whenever_command, "bundle exec whenever"

require "rvm/capistrano"
require 'bundler/capistrano'
# require "whenever/capistrano"
# config valid only for current version of Capistrano

ssh_options[:forward_agent] = false
default_run_options[:pty] = true # required for svn+ssh:// andf git:// sometimes

# lock '3.4.0'

set :application, 'eurotaller'
# set :repo_url, 'git@github.com:mauricioarias/eurotaller.git'
set :repository, 'https://github.com/mauricioarias/eurotaller.git'
# set :deploy_to, '/opt/www/eurotaller'
set :deploy_to, '/home4/www/rails_apps/#{application}'
set :user, 'deploy'
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets}
set :deploy_via,            :remote_cache
set :scm, :git
set :sudo,                  'sudo '
set :branch,                'master'
set :keep_releases, "2"
set :whenever_roles, [:app, :web, :db]
set :production_database,      'eurotaller_production'
set :production_dbhost,        'localhost'

# set :user, "eurotall"
# set :password,              'n36dW18Ubq'
# set :dbuser,                'root'
# set :dbpass,                ''

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

task :production do

  set :branch, "production"
  #server "dev-lamer01.vdc.crownpartners.com", :app, :web, :db, :primary => true
  set :rvm_type, :user
    server "212.83.147.135", :app, :web, :db, :primary => true
  set :rails_env, :production
  set :user, "eurotall"
  set :password,              'n36dW18Ubq'
end

# namespace :deploy do

  # %w[start stop restart].each do |command|
  #   desc 'Manage Unicorn'
  #   task command do
  #     on roles(:app), in: :sequence, wait: 1 do
  #       execute "/etc/init.d/unicorn_#{fetch(:application)} #{command}"
  #     end      
  #   end
  # end

  # after :publishing, :restart

  # after :restart, :clear_cache do
  #   on roles(:web), in: :groups, limit: 3, wait: 10 do
  #     # Here we can do anything such as:
  #     # within release_path do
  #     #   execute :rake, 'cache:clear'
  #     # end
  #   end
  # end

# end

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :bundle, :roles => :app do
    run "cd #{current_path} && bundle install"
  end
 # 
 # task :run, :roles => :app do
 #   run "cd #{current_path} && rails runner -eproduction #{file}"
 # end

  task :restart, :roles => :app do
    #run "touch #{current_release}/tmp/restart.txt"
    sudo "service apache2 restart"
  end
  

 namespace :assets do
     task :precompile, :roles => :web, :except => { :no_release => true } do
       from = source.next_revision(current_revision)
       if releases.length <= 1 || capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
         run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
       else
         logger.info "Skipping asset pre-compilation because there were no asset changes"
       end
   end
 end 
end