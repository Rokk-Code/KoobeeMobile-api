class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all
    render json: @groups
  end

  def search
    @groups = Group.where("(name = ?) OR (cathegory = ?)", group_params[:name], group_params[:cathegory])

    render json: @groups
  end

  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name, :cathegory)
  end
end
