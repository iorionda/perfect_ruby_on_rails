class BooksController < ApplicationController
  before_actoin :set_book, only: [:show, :edit, :update, :destroy]
  def show
    @book = Book.find(param[:id])

    respond_to do |format|
      format.html
      formant.csv
      format.json
    end
  end

  private

  def set_book
    @book = Book.find(param[:id])
  end
end
