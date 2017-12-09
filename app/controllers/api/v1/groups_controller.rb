class Api::V1::GroupsController < ApplicationController
  def index
    if params[:range].nil?
      @groups = Group.all.take(params[:limit].to_i)
      render json: @groups
    else
      @next_groups = Group.all.drop(params[:range].to_i).take(params[:limit].to_i)
      render json: @next_groups
    end
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
