# coding: utf-8
require "bundler/setup"
require "active_record"
require "logger"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/example.sqlite3"
)
ActiveRecord::Base.logger = Logger.new("db/database.log")

namespace :db do
  desc "migration"
  task :migrate do
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end

