class Api::V1::GroupsController < ApplicationController
  def index
    all = Group.all

    if params[:range].nil?
      @groups = all.take(params[:limit].to_i)
    else
      @groups = all.drop(params[:range].to_i).take(params[:limit].to_i)
    end
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
