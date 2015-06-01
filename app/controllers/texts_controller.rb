class TextsController < ApplicationController
  def index
    render json: Text.pluck(:body)
  end

  def create
    Text.create(text_params)
    head :created
  end

  private

  def text_params
    { body: params[:Body] }
  end
end
