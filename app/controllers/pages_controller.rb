class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @results = Book.search_by_book_feature(params[:query])
  end
end
