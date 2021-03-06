class ShareFormController < ApplicationController
  def new
    @share_form = ShareModal.new
  end

  def create
    @share_form = ShareModal.new(params[:user])
    @share_form.request = request
    if @share_form.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end 
end