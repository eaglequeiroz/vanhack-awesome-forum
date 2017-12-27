class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end

  def new
    @topic = current_user.topics.build
  end

  def edit
  end

  def create
    @topic = current_user.topics.build(topic_params)

      if @topic.save
        redirect_to @topic, notice: 'Topic was successfully created.'
      else
        render :new
    end
  end

  def update
      if @topic.update(topic_params)
        redirect_to @topic, notice: 'Topic was successfully updated.'
      else
        render :edit
    end
  end

  def destroy
    @topic.destroy
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:title, :content)
    end
end
