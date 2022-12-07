class Api::V1::ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show update destroy ]

  # GET /api/v1/articles
  def index
    @articles = Article.all
    render json: @articles
  end

  def published
    @comments = Article.find(params[:article_id]).comments.published

    render json: @comments
  end

  # GET /articles/1/unpublished
  def unpublished
    @comments = Article.find(params[:article_id]).comments.unpublished

    render json: @comments
  end

  # GET /api/v1/articles/1
  def show
    render json: { article: @article, comments: @article.comments }
  end

  # POST /api/v1/articles
  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PUT/PATCH /api/v1/articles/1
  def update
    if @article.update(article_params)
      render json: @article, status: :ok
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/articles/1
  def destroy
    if @article.destroy
      render status: :ok
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a trusted parameter through.
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
