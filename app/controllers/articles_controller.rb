class ArticlesController < ApplicationController
 before_action :set_article, only: [:edit, :update, :destroy]
VALID_SORT_COLUMNS = %w(numberoflikes)
  def index
  	@q = Article.search(params[:q])
	@articles = @q.result()
   	if !!params[:sort]
	   	sort = params[:sort] if VALID_SORT_COLUMNS.include?(params[:sort])
	 	@articles =@articles.order(sort).reverse_order
	 end
 end

 def new
 	@article = Article.new
 end

 def create
 	@article = Article.new(article_params)
 	if @article.save
 	redirect_to articles_path
 	else
 	 render'new'
 	 end
 end

 def edit 	
 end

 def update
	if @article.update (article_params)
		redirect_to articles_path
	else
		render 'edit'
	end
 end

 def destroy
 	@article.destroy
 	redirect_to articles_path
 end


 private
	 def article_params
	  	params.require(:article).permit(:contents, :comments, :numberoflikes, :numberofretweet, :user_id, :image, :uni, :imagetag)
	 end

	 def set_article
	 	@article = Article.find(params[:id])
	 end

  
end
