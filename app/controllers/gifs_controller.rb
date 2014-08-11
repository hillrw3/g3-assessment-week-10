class GifsController < ApplicationController

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(title: params[:gif][:title], url: params[:gif][:url])
    if @gif.save
      flash[:notice] = "gif created successfully!"
      redirect_to '/'
    else
      render :new
    end
  end

end