# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


brad = Actor.create(name: "Brad Pitt")
leo = Actor.create(name: "Leonardo DiCaprio")
kate = Actor.create(name: "Kate Winslet")
jamie = Actor.create(name: "Jamie Fox")

tarantino = Director.create(name: "Quentin Tarantino")
cameron = Director.create(name: "James Cameron")

Movie.create(title: "Once Upon a Time in Hollywood", actor: brad, director: tarantino)
Movie.create(title: "Once Upon a Time in Hollywood", actor: leo, director: tarantino)
Movie.create(title: "Titanic", actor: leo, director: cameron)
Movie.create(title: "Titanic", actor: kate, director: cameron)
Movie.create(title: "Django Unchained", actor: jamie, director: tarantino)