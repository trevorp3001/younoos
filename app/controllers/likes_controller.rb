class LikesController < ApplicationController

	def create

		
		@article = Article.find(params[:article_id])

		
		@like = @article.likes.create

		

		if params[:back_to] == "home"
			
			redirect_to root_path
		else
			
			redirect_to article_path(@article)
		end

		
	end


end
