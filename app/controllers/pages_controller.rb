class PagesController < ApplicationController
  def index
    @content = Content.new
  end

  def new
    @content = Content.new
  end
end

