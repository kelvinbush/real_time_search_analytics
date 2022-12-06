# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  has_many :searches, foreign_key: :author_id
end
