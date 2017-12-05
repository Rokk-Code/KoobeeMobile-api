class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all.shuffle.take(params[:limit].to_i)
    render json: @groups
  end

  def search
    @groups = Group.search_keywords(params[:keywords])
    render json: @groups
  end

  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name, :cathegory)
  end
end
