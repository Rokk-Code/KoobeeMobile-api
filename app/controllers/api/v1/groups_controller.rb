class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all.limit(35).shuffle
    render json: @groups
  end

  def search
    return if params[:keywords] == nil
    @groups = Group.search_keywords(params[:keywords])
    render json: @groups
  end

  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name, :cathegory)
  end
end
