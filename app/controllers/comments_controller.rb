class CommentsController < ApplicationController
def new
	
end


def create

=begin
@book = Book.new( book_params)
  @book.model_id  = current_model.id
  @book.save
  redirect_to @book
=end


if params[:book_id].present?
    @book = Book.find(params[:book_id])
    @comment = @book.comments.new( comment_param)
    @comment.model_id  = current_model.id
    #@model=Model.find(params[:model_id])//u can not write this line b/c model_id in not submitting by the form u can take only those values from params wich are comming by form
    
    @comment.save

    redirect_to book_path(@book)
  elsif params[:blog_id].present?
    
@blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new( comment_param)
    @comment.model_id  = current_model.id
    #@model=Model.find(params[:model_id])//u can not write this line b/c model_id in not submitting by the form u can take only those values from params wich are comming by form
    
    @comment.save

    redirect_to blog_path(@blog)
  else
@product = Product.find(params[:product_id])
    @comment = @product.comments.new( comment_param)
    @comment.model_id  = current_model.id
    #@model=Model.find(params[:model_id])//u can not write this line b/c model_id in not submitting by the form u can take only those values from params wich are comming by form
    
    @comment.save

    redirect_to product_path(@product)

    end
  end


 private
 def comment_param
 	params.require(:comment).permit(:title, :comment)
 end
  
end
