class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
    super
  end
  def edit
    # add custom create logic here
    super
  end

  def update
    # super
    respond_to do |format|
      if current_user.update(user_params)
        puts params
        format.html { redirect_to @user, notice: 'Musician was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :description, :skill)
    end
end
