class UsersController < ApplicationController

private

  def user_params
    params.require(:user).permit(:name, :age, :email, :skill_level)
  end
end
