class CommentsController < ApplicationController

   # before_action :logged_in_user, only: [:create, :destroy]

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to topic_path(@topic)
    else
      redirect_to root_path
    end

  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:comment)
    end
end
