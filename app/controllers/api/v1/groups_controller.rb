class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all
    render json: @groups
  end


  private
  # リクエストパラメータのバリデーション
  def group_params
    params.permit(:name)
  end
end
