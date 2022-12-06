# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_reference :searches, :author, foreign_key: { to_table: :users }, index: true
  end
end
