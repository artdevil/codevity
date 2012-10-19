class PageController < ApplicationController
  layout 'app_views', :only => [:index]
  def index
  end

  def about_us
  end
  
  def training
    @title = "training"
  end
  
  def product
    @title = "product"
  end
  
  def contact
    @title = "contact"
    @message = Message.new
  end
  
  def team
    @title = "team"
  end
  
  def message
    @message = Message.new(params[:message])
    if @message.save
      redirect_to contact_page_index_path
      flash[:notice] = "pesan telah terkirim"
    else
      @title = "contact"
      render 'contact'
      flash[:alert] = "pesan gagal terkirim"
    end
  end
end
