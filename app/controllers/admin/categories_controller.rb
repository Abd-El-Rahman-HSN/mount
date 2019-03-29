class Admin::CategoriesController < Admin::BaseAdminController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category has been successfully added.'
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      flash[:notice] = 'Category has been successfully updated.'
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    return unless @category.destroy
    flash[:notice] = 'Category was deleted.'
    redirect_to admin_categories_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
