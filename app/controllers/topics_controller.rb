class TopicsController < ApplicationController

  def index
   @topics = Topic.all
  end

  def manageposts
    @topics = Topic.all
  end

  def create
    @topic = Topic.create(topic_params)

   if @topic.save
     redirect_to manageposts_path
   else
     render :new
   end
  end

  def new
    @topic = Topic.new
  end

private

  def topic_params
        params.require(:topic).permit(:title, :description)
  end
end
