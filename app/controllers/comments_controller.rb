class CommentsController < ApplicationController
	def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(params[:comment])
    @comment.user = current_user
    @comment.save
    redirect_to products_path(@product)
  end

	def destroy
	end
end


















private

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end