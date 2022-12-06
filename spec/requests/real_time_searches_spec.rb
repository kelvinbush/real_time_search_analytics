require 'rails_helper'

RSpec.describe ArticlesController, type: :system do
  include Devise::Test::IntegrationHelpers
  before do
    driven_by(:rack_test)
    @user = User.create(name: 'Kelvin', password: 'password', email: 'kelybush@gmail.com')
    @article = Article.create(title: 'Led Zeppelin')
    sign_in @user
  end

  context "Search for article by title" do

    it "should display found articles" do
      visit '/'
      within("#real_time") do
        fill_in 'query', with: 'Led'
      end
      click_button('Search')
      expect(page).to have_content @article.title
    end

    it "should track incomplete and complete searches" do
      visit '/'
      within("#real_time") do
        fill_in 'query', with: 'Hello'
      end
      click_button('Search')
      within("#real_time") do
        fill_in 'query', with: 'Hello World'
      end
      click_button('Search')
      expect(@user.searches.find_by text: 'Hello').to be_nil
      expect(@user.searches.find_by text: 'Hello World').to be_an_instance_of Search
    end
  end
end