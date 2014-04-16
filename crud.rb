# coding: utf-8
require "./models/user"
require "ap"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/example.sqlite3"
)
ActiveRecord::Base.logger = Logger.new("db/database.log")

puts ".create"
name = "Foo Bar"
created = User.create(name: name)
ap created.attributes

gets

# read
puts ".where"
user = User.where(id: created.id).first
ap user.attributes

gets

# update
puts ".update"
new_name = "Hoge Piyo"
user.update(name: new_name)
new_user = User.where(id: created.id).first
ap new_user.attributes

gets

# delete
puts ".destory"
new_user.destroy

ActiveRecord::Base.connection.close
