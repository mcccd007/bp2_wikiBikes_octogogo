# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TagCategory.create([{ id: 1, name: 'Rear Cassette/Freewheel/Internal'}, { id: 2, name: "Cosmetic"}, { id: 3, name: "Configuration" }])

Tag.create([{ name: '1sp', tag_category_id: 1 }, { name: '2sp', tag_category_id: 1 },{ name: '3sp', tag_category_id: 1 },
  { name: '4sp', tag_category_id: 1 },{ name: '5sp', tag_category_id: 1 }, { name: '6sp', tag_category_id: 1 },
  { name: '7sp', tag_category_id: 1 }, { name: '8sp', tag_category_id: 1 }, { name: '9sp', tag_category_id: 1 },
  { name: '9sp', tag_category_id: 1 }, { name: '10sp', tag_category_id: 1 }, { name: '11sp', tag_category_id: 1 },

  { name: 'Shimano', tag_category_id: 3 }, { name: 'Campagnolo', tag_category_id: 3 }, { name: 'SRAM', tag_category_id: 3 },
  { name: 'Suntour', tag_category_id: 3 },
  ])
