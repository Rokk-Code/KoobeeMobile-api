class Api::V1::GroupsController < ApplicationController
  def index
    if params[:keywords] == nil || ""
      @groups = Group.all.shuffle.take(params[:limit].to_i)
    else
      @groups = Group.search_keywords(params[:keywords])
    end
      render json: @groups
  end

  def search

  end

  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name, :cathegory)
  end
end
