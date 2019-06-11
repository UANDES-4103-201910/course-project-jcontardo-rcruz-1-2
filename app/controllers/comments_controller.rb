class CommentsController < ApplicationController



  def create
    @post =Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user =current_user
    @comment.save

    redirect_to posts_url


  end



  def destroy
    @post =Post.find(params[:post_id])
    @comment= @post.comments.find(params[:id]).destroy
    redirect_to posts_url

  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end
end
