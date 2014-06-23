class ArticlesController < ApplicationController
 def new
  @article = Article.new
  @languages = Language.all
 end

 def index
  @articles = Article.all
  @languages = Language.all
 end

 def create
  @article = Article.new(article_params)
  @languages = Language.all
 
  if @article.save
   redirect_to @article
  else
   render 'new'
  end
 end

 def edit
  @article = Article.find(params[:id])
  @languages = Language.all
 end

 def destroy
  @article = Article.find(params[:id])
  @languages = Language.all
  @article.destroy
 
  redirect_to articles_path
 end

 def show
  @article = Article.find(params[:id])
  @languages = Language.all
 end

 def update
  @article = Article.find(params[:id])
  @languages = Language.all
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
 end
 
 private
  def article_params
    params.require(:article).permit(:category, :english, :phonetic, :picture, :language_id)
  end

end
