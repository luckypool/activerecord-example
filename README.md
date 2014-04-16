activerecord-example
====================

ActiveRecord examples for stand-alone uses

## 0. clone / bundle install

```
$ git clone https://github.com/luckypool/activerecord-example.git
$ cd activerecord-example
$ bundle install
```

## 1. migrate

```
$ rake db:migrate
```

```ruby
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
    end
  end
end
```

## 2. run `crud.rb`

```
$ bundle exec ruby crud.rb
```

- `s`: step
- `n`: next
- `c`: continue

