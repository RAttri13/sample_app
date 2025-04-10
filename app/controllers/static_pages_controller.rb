class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
    respond_to do |format|
      format.html  
      format.json { render json: { message: "About Page" } }
    end
  end
  
    def contact
    respond_to do |format|
      format.html  
      format.json { render json: { message: "contact Page" } }
    end
  end
  
end
