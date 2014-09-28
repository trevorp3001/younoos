class ArticlesController < ApplicationController

	before_action :make_sure_logged_in, except: [:index, :show]

	#before_action :find_article, only: [:show, :edit, :update, :destroy]

	def index
		@username = "trev"
		@now = Time.now

		@articles = Article.order("created_at desc")

	end

	def show
		@article = Article.find(params[:id])

		@comment = @article.comments.new


	end

	def new

		@article = current_user.articles.new

	end

	def create

		@article = current_user.articles.new(article_params)

		if @article.save

			
			redirect_to root_path

		else
			render "new"



		end


	end

	def edit
		@article = current_user.articles.find(params[:id])
	end

	
	def update
		@article = current_user.articles.find(params[:id])

		if @article.update(article_params)

			redirect_to article_path(@article)

		else

			render "edit"

		end
	end

	def destroy
		@article = current_user.articles.find(params[:id])

		@article.destroy

		
		redirect_to root_path
	end






	def article_params
		params.require(:article).permit(:headline, :story, :tag_list, :image, :location)
	end

	def find_article
		@article = Article.find(params[:id])
	end

end
