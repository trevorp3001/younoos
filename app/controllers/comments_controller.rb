class CommentsController < ApplicationController

	def new

		@article = Article.find(params[:article_id])

		@comment = @article.comments.new

	end

	def create
		@article = Article.find(params[:article_id])

		@comment = @article.comments.new(comments_params)

		if @comment.save

			redirect_to article_path(@article)
		
		else

			render "new"

		end


	end



	def comments_params
		params.require(:comment).permit(:body)
	end





end
