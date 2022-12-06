# frozen_string_literal: true

class Article < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_full_text, against: {
    title: 'A'
  }
end
