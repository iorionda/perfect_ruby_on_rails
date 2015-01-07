class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html
      format.csv
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
