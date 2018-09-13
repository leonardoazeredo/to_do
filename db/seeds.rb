# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
leoleg = User.create(username: 'leoleg', password: '12345678')
gi = User.create(username: 'gi', password: '12345678')
leoleg.tasks.create(
  [
    { title: 'A Title Here', details: 'Some details here' },
    { title: 'A Second Title Here', details: 'Some more details here' },
    { title: 'A Third Title Here', details: 'Some more details here' },
    { title: 'A Fourth Title Here', details: 'Some more details here' },
    { title: 'A Fifth Title Here', details: 'Some more details here' },
    { title: 'A Sixth Title Here', details: 'Some more details here' }
  ]
)
gi.tasks.create(
  [
    { title: 'A New Title Here', details: 'Some details here' },
    { title: 'A New Second Title Here', details: 'Some more details here' },
    { title: 'A New Third Title Here', details: 'Some more details here' },
    { title: 'A New Fourth Title Here', details: 'Some more details here' },
    { title: 'A New Fifth Title Here', details: 'Some more details here' },
    { title: 'A New Sixth Title Here', details: 'Some more details here' }
  ]
)
