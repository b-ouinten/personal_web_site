# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rails.application.eager_load!
ApplicationRecord.descendants.each { |model|
  model.delete_all
  ActiveRecord::Base.connection.reset_pk_sequence!(model.table_name)
  puts "The table #{model.table_name} was deleted!"
}

Tag.create(title: 'Ruby', order: 1)
Tag.create(title: 'Ruby on Rails', order: 2)
Tag.create(title: 'React', order: 2)
Tag.create(title: 'JavaScript', order: 3)
Tag.create(title: 'HTML', order: 4)
Tag.create(title: 'CSS', order: 5)
Tag.create(title: 'Bootstrap', order: 6)
Tag.create(title: 'PostgreSQL', order: 7)
Tag.create(title: 'git', order: 8)