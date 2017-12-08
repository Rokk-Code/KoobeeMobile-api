class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end
  #
  # private
  # # リクエストパラメータのバリデーション
  # def article_params
  #   params.permit(:name, :cathegory)
  # end
end
