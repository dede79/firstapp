class CommentsController < ApplicationController
	
 def create
   @product = Product.find(params[:product_id])
   @comment = @product.comments.new(comment_params)
   @comment.user = current_user 
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @product, notice: 'Review was created succesfully'}
        format.json {render :show, status: :created, location: @product}
      else
        format.html {redirect_to @product, alert: 'review was NOT saved succesfully'}
        format.json {render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

 #reload the product detail page after the comment gets deleted.Need to retrieve the product record from the comment before we delete it, and redirect the user to that page:
 def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end




 private

  def comment_params
   params.require(:comment).permit(:user_id, :body, :rating)
  end
end


















private

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end