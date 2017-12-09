class Api::V1::GroupsController < ApplicationController
  def index
    all = Group.all

    if params[:range].nil?
      @groups = all.take(params[:limit].to_i)
    elsif
      @groups = all.drop(params[:range].to_i).take(params[:limit].to_i)
    else
      all.count < params[:range]
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
