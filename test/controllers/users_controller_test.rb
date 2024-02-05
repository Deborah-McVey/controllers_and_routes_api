require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      render json: @user
    else
      render json: { error: "Unable to create user." }
    end
  end
end
