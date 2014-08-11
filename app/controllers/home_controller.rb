class HomeController < ApplicationController
  def index
    @gifs = Gif.all
  end

  def show

  end

end