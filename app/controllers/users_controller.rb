class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  # GET /musicians
  # GET /musicians.json
  def index
    @users = User.all
  end

  # GET /musicians/1
  # GET /musicians/1.json
  def show
  end

  # GET /musicians/1/edit
  def edit
    @user = current_user
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
