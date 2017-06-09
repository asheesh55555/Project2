class BooksController < ApplicationController
  


  # if u use this line in application controller then  authentication will be
  #applied in every module b/c application controller is the perent class of 
  #every controller class by default and this function will be inherite in 
  #every sub class controllers
  before_action :authenticate_model! 
def new
		
	end


def create
	
  @book = Book.new( book_params)
  @book.model_id  = current_model.id
  @book.save
  redirect_to @book
end
 def show
    @book = Book.find(params[:id])
  end
private
  def book_params
  	params.require(:book).permit(:title, :location, :created_by, :category_id)
  end


end