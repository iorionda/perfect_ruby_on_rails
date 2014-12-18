class BooksController < ApplicationController
  def show
    @book = Book.find(param[:id])

    respond_to do |format|
      format.html
      formant.csv
      format.json
    end
  end
end
