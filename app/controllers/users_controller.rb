class UsersController < ApplicationController
  # before_action :authenticate_user!

  def index
    @users = User.all
    # authorize User
  end

  def show
    # authorize @user
    @user = Users.new(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def destroy
    @user = user.find(params[:id])
    @user.destroy
    flash[:success] = "The user was successfully destroyed."
    #redirect_to friends_service_path
  end

  def edit
    user = User.find_by(id: params[:id])
  if current_user == user
    user.update()
  end

  # def update
  #   authorize @user
  #   if @user.update(secure_params)
  #     redirect_to users_path, :notice => "User updated."
  #   else
  #     render 'edit'
  #   end
  # end

  private

  def set_user
    @user = current_user
  end
end




# This goes in the view for edit

# <% if current_user.id == @user.id %>
#   <%= link_to 'Edit My profile', edit_user_path(@user), method: :edit,
#   class:"btn btn-primary" %>
# <% end %>
