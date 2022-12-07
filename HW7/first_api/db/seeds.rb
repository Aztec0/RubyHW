# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.create([
                {
                  name: 'John'
                },
                {
                  name: 'Marry'
                },
                {
                  name: 'Peter'
                }
              ])

Article.create([
                 {
                   title: 'First article',
                   body: 'Some text for article',
                   author_id: 1
                 },
                 {
                   title: 'Second one',
                   body: 'Some more text for article',
                   author_id: 2
                 },
                 {
                   title: 'One more article',
                   body: 'Again, another text for article',
                   author_id: 3
                 },
                 {
                   title: 'Second article bi first author',
                   body: 'Well, this is also text for article',
                   author_id: 1
                 }
               ])

Comment.create([
                 {
                   body: 'TEST COMMEMT John',
                   author_id: 1,
                   article_id: 1
                 },
                 {
                   body: 'TEST COMMENT John',
                   author_id: 1,
                   article_id: 1
                 },
                 {
                   body: 'TEST COMMENT Marry',
                   author_id: 2,
                   article_id: 1
                 },
                 {
                   body: 'TEST COMMENT Peter',
                   author_id: 3,
                   article_id: 1
                 },
                 {
                   body: 'TEST COMMENT Marry',
                   status: 'published',
                   author_id: 2,
                   article_id: 1
                 }
               ])
