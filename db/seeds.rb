# clear main tables
["users", "sermons"].each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
  ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH 1")
end

# Sermons
puts "Seeding sermons..."
Sermon.create(speaker: "foo", subject: "bar", day: "2014-11-19", avatar: nil)
Sermon.create(speaker: "foo1", subject: "bar1", day: "2014-11-19", avatar: nil)
Sermon.create(speaker: "foo2", subject: "bar2", day: "2014-11-21", avatar: nil)
Sermon.create(speaker: "foo3", subject: "bar3", day: "2014-11-22", avatar: nil)
Sermon.create(speaker: "foo4", subject: "bar4", day: "2014-11-23", avatar: nil)
Sermon.create(speaker: "foo5", subject: "bar5", day: "2014-11-24", avatar: nil)
Sermon.create(speaker: "foo6", subject: "bar6", day: "2014-11-25", avatar: nil)
Sermon.create(speaker: "foo7", subject: "bar7", day: "2014-11-26", avatar: nil)
Sermon.create(speaker: "foo8", subject: "bar8", day: "2014-11-27", avatar: nil)

# Users
puts "Seeding users..."
User.create(email: 'peninsulachurchinchrist@gmail.com', password: ENV['ADMIN_PASSWORD'], password_confirmation: '596 Mercy', role: 'admin', approved: true)

puts "Done seeding."
