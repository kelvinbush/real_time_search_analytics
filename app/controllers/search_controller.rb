class SearchController < ApplicationController
  before_action :authenticate_user!

  def index
    @searches = Search.all
  end
end
