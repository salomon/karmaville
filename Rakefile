#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Karmaville::Application.load_tasks


namespace :db do
  task :points => :environment do
    n = 0
    User.all.each do |user|
      user.update_attribute(:points, user.total_karma)
    end
  end
end
