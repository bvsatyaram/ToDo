# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def create_task(title, done = false)
  task = Task.find_or_create_by(title: title)
  task.update_attributes(done: done)
end

create_task("Clean the board")
create_task("Get a maid")
