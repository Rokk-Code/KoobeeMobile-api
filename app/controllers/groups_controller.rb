class GroupsController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @groups = Group.all

    render json: @groups
  end

  # GET /users/1
  # def show
  #   render json: @group
  # end
end
