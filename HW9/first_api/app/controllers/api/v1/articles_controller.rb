class Api::V1::ArticlesController < ApplicationController
  before_action :set_article, only: %i[show update destroy]

  def index
    # http://[::1]:3000/api/v1/articles
    @pagy, @articles = pagy(Article.order(created_at: :desc), items: 15)

    # http://[::1]:3000/api/v1/articles?search=text
    @articles = @articles.search(params[:search]) if params[:search]

    # http://[::1]:3000/api/v1/articles?status=unpublished/published
    @articles = @articles.filter_by_status(params[:status]) if params[:status]

    # http://[::1]:3000/api/v1/articles?name=author_name
    @articles = @articles.filter_by_author(params[:name]) if params[:name]

    # http://[::1]:3000/api/v1/articles?tags=tag_name
    @articles = @articles.filter_by_tags(params[:tags].split(',')) if params[:tags]

    # http://[::1]:3000/api/v1/articles?order=asc/desc
    @articles = Article.order(created_at: params[:order]) if params[:order]

    render json: @articles, each_serializer: Api::V1::ArticleSerializer
  end

  def show
    @comments = @article.comments.latest_comments
    render json: @article, serializer: Api::V1::ArticleSerializer
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      render json: @article, status: :ok
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @article.destroy
      head :no_content
    else
      render json: article.errors, status: :unprocessable_entity
    end
  end

  def published
    @comments = Article.find(params[:article_id]).comments.published

    render json: @comments
  end

  def unpublished
    @comments = Article.find(params[:article_id]).comments.unpublished

    render json: @comments
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :author_id, :tags)
  end
end
