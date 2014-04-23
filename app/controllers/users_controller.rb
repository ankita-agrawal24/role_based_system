class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action :verify_authorized, except: [:show]
  before_filter :set_user,except: [:index, :show]
  def index
    @users = User.all
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    unless current_user.business?
      unless @user == current_user
        redirect_to root_path, :alert => "Access denied."
      end
    end
  end


  def edit
  end


  def update
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end

  def add_employee
    @users = User.where("domain = ? && role_type like 'employee' && manager_id = '' ",@user.domain)
    authorize @users
    if params[:user_id].present?
      User.where("id in (?)",params[:user_id].values.map(&:to_i)).update_all(:manager_id => params[:id])
    end
  end

  private

  def secure_params
    params.require(:user).permit(:email,:role_type)
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
end