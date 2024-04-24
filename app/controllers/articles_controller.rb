class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show; end

  def edit; end

  def create
    @article = Article.new(article_params.except(:status))
    @article.status = article_params[:status].to_i
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def update; end

  def destroy; end

  private

  def article_params
    params.require(:article).permit(:name, :content, :status, :picture)
  end
end
