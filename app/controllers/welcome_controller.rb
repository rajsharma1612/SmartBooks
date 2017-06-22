class WelcomeController < ApplicationController
layout 'standard'

  def index
    # @books = Book.find(1);
    # logger.debug(@books.inspect)
  end


  def get_all_books
    # @books = Book.find(2);
    @books = Book.all
    logger.debug(@books.inspect)
    render :json => @books
  end
end
