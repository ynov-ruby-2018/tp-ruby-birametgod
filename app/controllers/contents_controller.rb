class ContentsController < ApplicationController

  before_action :verify_admin
  def index
    @content = Content.all
  end

  def create
    Content.create!(
      contenu: params[:comment]
    )

    redirect_to contents_path
  end

  private
    def verify_admin
      authenticate_user!
    end

end

