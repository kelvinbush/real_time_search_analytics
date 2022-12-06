class Search < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :word_similarity_like,
                  against: :text,
                  using: [:trigram]
  belongs_to :author, class_name: 'User', foreign_key: :author_id
end



