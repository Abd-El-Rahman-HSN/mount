class Admin::AdminsController < Admin::BaseAdminController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def index
    @admins = Admin.all
  end

  def show
  end

  def new
    @admin = Admin.new
  end

  def edit
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:notice] = 'Admin has been successfully added.'
      redirect_to admin_admins_path
    else
      render :new
    end
  end

  def update
    if @admin.update(admin_params)
      flash[:notice] = 'Admin has been successfully updated.'
      redirect_to admin_admins_path
    else
      render :edit
    end
  end

  def destroy
    return unless @admin.destroy
    flash[:notice] = 'Admin was deleted.'
    redirect_to admin_admins_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
    end
end
