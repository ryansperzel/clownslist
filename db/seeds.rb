# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Entertainer.create(username: "jonopens", job_type: "Magician")
Entertainer.create(username: "ianramos", job_type: "Animal Tamer")
Entertainer.create(username: "ryansperzel", job_type: "Clown")
Host.create(username: "spiderman")
Host.create(username: "green-goblin")
Host.create(username: "venom")
Event.create(name: "Old guys playing bocce", description: "It's old guys playing bocce.", host_id: 1, date: Time.now)
Event.create(name: "Nerds reading comics", description: "It's nerds reading comics.", host_id: 3, date: Time.now)
EventsEntertainer.create(event_id: 1, entertainer_id: 3)
EventsEntertainer.create(event_id: 1, entertainer_id: 2)
EventsEntertainer.create(event_id: 1, entertainer_id: 1)
EventsEntertainer.create(event_id: 2, entertainer_id: 3)
EventsEntertainer.create(event_id: 2, entertainer_id: 2)
EventsEntertainer.create(event_id: 2, entertainer_id: 1)
