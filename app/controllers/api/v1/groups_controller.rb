class Api::V1::GroupsController < ApplicationController
  def index
    #@users = User.where("addr1 = ?", user_params[:addr1])
    @groups = Group.all
    #where("name = ?", group_params[:name])
    render json: @groups
  end


  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name)
  end
end
