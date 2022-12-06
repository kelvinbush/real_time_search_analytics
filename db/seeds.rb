# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
articles = Article.create([{ title: '10 Tips for Optimizing Your Ruby on Rails Code' },
                           { title: 'Creating RESTful APIs with Ruby on Rails' }, { title: 'Advanced ActiveRecord Techniques in Ruby on Rails' }, { title: 'Understanding the Ruby on Rails Asset Pipeline' }, { title: 'Introduction to Test Driven Development in Ruby on Rails' }])
