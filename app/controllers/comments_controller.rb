class CommentsController < ApplicationController
def new
	
end


def create

    @book = Book.find(params[:book_id])
    @comment = @book.comments.create( params.require(:comment).permit(:title, :comment))
    redirect_to book_path(@book)
  end
 
  
end
