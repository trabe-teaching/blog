class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    if @comment.save
      redirect_to @post, :notice => 'Comment added'
    else
      render 'new'
    end
  end
end
