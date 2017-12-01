class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all
    render json: @groups
  end

  def search
    @groups = Group.where("(name LIKE ?) AND (cathegory LIKE ?)", "%#{group_params[:name]}%" , "%#{group_params[:cathegory]}%").limit(30)
    render json: @groups
  end

  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name, :cathegory)
  end
end
