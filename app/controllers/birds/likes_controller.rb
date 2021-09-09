class Birds::LikesController < ApplicationController
  def update
    bird = Bird.find(params[:bird_id])
    bird.update(likes: bird.likes + 1)
    render json: bird
  end
end
