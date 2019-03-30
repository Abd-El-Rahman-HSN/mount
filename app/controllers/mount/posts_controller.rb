class Mount::PostsController < Mount::BaseMountController
  before_action :set_post, only: [:show, :like, :dislike]

  def index
    @posts = Post.all
  end

  def show
  end
  
  def like
   @post.liked_by current_admin
   redirect_to mount_post_path(@post) 
  end

  def dislike
    @post.disliked_by current_admin
    redirect_to mount_post_path(@post)  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end
end
