class Mount::MountsController < Mount::BaseMountController
  def index
    @posts = Post.all
  end
end
