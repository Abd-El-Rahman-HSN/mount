class Admin::PostsController < Admin::BaseAdminController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.admin = current_admin
    if @post.save
      flash[:notice] = 'Post has been successfully added.'
      redirect_to admin_posts_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = 'Post has been successfully updated.'
      redirect_to admin_posts_path
    else
      render :edit
    end
  end

  def destroy
    return unless @post.destroy
    flash[:notice] = 'Post was deleted.'
    redirect_to admin_posts_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :admin_id, :category_id, :cover)
    end
end
