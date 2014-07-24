class ArticlesController < ApplicationController
 load_and_authorize_resource

 def new
  @article = Article.new
 end

 def index
   @articles = Article.where("id > ? and created_at > ?", params[:article_id].to_i, Time.at(params[:after].to_i ) + 1 )
 end

 def create
  @article = Article.new(article_params)
 
  if @article.save
   redirect_to @article
  else
   render 'new'
  end
 end

 def edit
  @article = Article.find(params[:id])
 end

 def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
 end

 def show
  @article = Article.find(params[:id])
 end

 def update
  @article = Article.find(params[:id])
 
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
