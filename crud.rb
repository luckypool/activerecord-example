# coding: utf-8
require "./models/user"
require "ap"
require "pry"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/example.sqlite3"
)
ActiveRecord::Base.logger = Logger.new("db/database.log")

def create
  puts ".create"
  created = User.create(name: "Foo Bar")
  ap created.attributes
  created
end

def read id
  puts ".where"
  user = User.where(id: id).first
  ap user.attributes
  user
end

def update id
  user = User.where(id: id).first
  user.update(name: "HogePiyo")
  new_user = User.where(id: id).first
  ap new_user.attributes
end

def delete id
  new_user = User.where(id: id).first
  new_user.destroy
end

def main
  created = create()
  user = read(created.id)
  update(created.id)
  delete(created.id)
end

binding.pry
main()

ActiveRecord::Base.connection.close
