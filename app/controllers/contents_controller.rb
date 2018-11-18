class ContentsController < ApplicationController

  before_action :verify_admin # Ok ça marche, mais pourquoi pas directement authenticate_user! ?
  
  def index
    @content = Content.all
    # On était sensé se limiter à 5
  end

  def create
    Content.create!(
      contenu: params[:comment]
    )
    # Et au cas où la validation ne passe pas, que fait-on ?
    
    redirect_to contents_path
  end
  # Il manque des features !
  
  private
    def verify_admin
      authenticate_user!
    end

end

